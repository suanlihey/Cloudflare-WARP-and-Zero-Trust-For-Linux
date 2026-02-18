#!/bin/bash

# =======================================================

# Cloudflare WARP Zero Trust Global Adaptor v1.0 (2026)

# =======================================================

# Project: [https://github.com/suanlihey/Cloudflare-WARP-and-Zero-Trust-For-Linux](https://www.google.com/search?q=https://github.com/suanlihey/Cloudflare-WARP-and-Zero-Trust-For-Linux)

# Features: NAT64 DNS, Dynamic Lang-Pack, Custom SOCKS5, ZT Auto-Auth

# =======================================================

set -uo pipefail

# --- 1. Constants & Paths ---

MGR_PATH="/usr/local/bin/warp-mgr"
CONF_DIR="/var/lib/cloudflare-warp"
DETECT_URL="[https://www.cloudflare.com/cdn-cgi/trace](https://www.cloudflare.com/cdn-cgi/trace)"
KEYRING="/usr/share/keyrings/cloudflare-warp-archive-keyring.gpg"
TMP_SANDBOX="/var/lib/cloudflare-warp/tmp"
RX_CACHE="/tmp/warp_last_rx"
CA_CERT_URL="[https://developers.cloudflare.com/cloudflare-one/static/Cloudflare_CA.crt](https://www.google.com/search?q=https://developers.cloudflare.com/cloudflare-one/static/Cloudflare_CA.crt)"
LANG_REMOTE="[https://raw.githubusercontent.com/suanlihey/Cloudflare-WARP-and-Zero-Trust-For-Linux/refs/heads/main/Language.sh](https://raw.githubusercontent.com/suanlihey/Cloudflare-WARP-and-Zero-Trust-For-Linux/refs/heads/main/Language.sh)"

# --- 2. Signal Handling & Cleanup ---

trap 'stty sane; echo -e "\nTerminated."; exit 0' SIGINT SIGTERM

# --- 3. Pre-flight Environment Check (NAT64 for IPv6-Only) ---

check_and_fix_ipv6_only() {
if ! ping -c 1 -W 2 1.1.1.1 >/dev/null 2>&1; then
if ping6 -c 1 -W 2 2606:4700:4700::1111 >/dev/null 2>&1; then
if ! host https://www.google.com/search?q=google.com >/dev/null 2>&1; then
echo "Pure IPv6 environment detected. Injecting NAT64 DNS..."
[ -f /etc/resolv.conf ] && cp /etc/resolv.conf /etc/resolv.conf.bak 2>/dev/null
echo -e "nameserver 2a00:1098:2c::1\nnameserver 2a01:4f8:c2c:123f::1\nnameserver 2a00:1098:2b::1" > /etc/resolv.conf
fi
fi
fi
}

# --- 4. Language Engine ---

declare -A L

set_default_lang() {
L[menu_title]="Cloudflare WARP Global Adaptor v1.0"
L[hw_info]="Hardware: %s | RAM: %sMB"
L[opt_1]="1. Intelligent Deployment (Zero Trust / Free)"
L[opt_2]="2. Deep Uninstall & Cleanup"
L[opt_0]="0. Exit"
L[back_hint]="Hint: Enter '0' to return to main menu."
L[ctrl0_hint]="Force Stop: Press Ctrl+C."
L[lang_select]="Select Language / 请选择语言:"
L[installing]="Installing Cloudflare WARP..."
L[verifying]="Verifying registration..."
L[mtu_detect]="Detecting optimal MTU..."
L[done]="Operation completed."
L[fail]="Operation failed."
L[team_ask]="Use Zero Trust Team? (y/n):"
L[token_ask]="Enter Team Token (Optional):"
L[name_ask]="Enter Team Name:"
L[mode_ask]="Select Mode: 1. Global (WARP) 2. Proxy (SOCKS5):"
L[port_ask]="Enter SOCKS5 Port (Default 40000):"
}

load_remote_lang() {
local choice=(curl -fsSL "(echo "{choice}*opt_1\s*=" | cut -d'"' -f2)
L[opt_2]=$(echo "$lang_data" | grep -E "L*(echo "{choice}*opt_0\s*=" | cut -d'"' -f2)
L[back_hint]=$(echo "$lang_data" | grep -E "L*(echo "{choice}*ctrl0_hint\s*=" | cut -d'"' -f2)
L[installing]=$(echo "$lang_data" | grep -E "L*(echo "{choice}*verifying\s*=" | cut -d'"' -f2)
L[mtu_detect]=$(echo "$lang_data" | grep -E "L*(echo "{choice}*done\s*=" | cut -d'"' -f2)
L[fail]=$(echo "$lang_data" | grep -E "L*(echo "{choice}*team_ask\s*=" | cut -d'"' -f2)
L[token_ask]=$(echo "$lang_data" | grep -E "L*(echo "{choice}*name_ask\s*=" | cut -d'"' -f2)
L[mode_ask]=$(echo "$lang_data" | grep -E "L*(echo "{choice}_port_ask\s*=" | cut -d'"' -f2)
fi
[ -z "${L[menu_title]:-}" ] && set_default_lang
}

# --- 5. Hardware Sensing ---

get_mem_limit() {
local mem_limit_bytes
if [ -f /sys/fs/cgroup/memory/memory.limit_in_bytes ]; then
mem_limit_bytes=$(cat /sys/fs/cgroup/memory/memory.limit_in_bytes)
if [ "$mem_limit_bytes" -lt 9223372036854771712 ]; then
echo $((mem_limit_bytes / 1024 / 1024))
return
fi
fi
free -m | awk '/^Mem:/{print $2}'
}

TOTAL_MEM=$(get_mem_limit)
if [ "$TOTAL_MEM" -le 300 ]; then
HW_PROFILE="LOW"; MEM_LIMIT="100M"; LOG_LEVEL="off"; RESTART_DELAY="15"
elif [ "$TOTAL_MEM" -le 1024 ]; then
HW_PROFILE="MED"; MEM_LIMIT="256M"; LOG_LEVEL="error"; RESTART_DELAY="10"
else
HW_PROFILE="HIGH"; MEM_LIMIT="512M"; LOG_LEVEL="info"; RESTART_DELAY="5"
fi

[ "$EUID" -eq 0 ] && mkdir -p "$TMP_SANDBOX" && export TMPDIR="$TMP_SANDBOX"

# --- 6. Core Functions ---

discover_mtu() {
echo "${L[mtu_detect]:-Detecting MTU...}"
local wait_count=0
while ! ip link show | grep -E "CloudflareWARP|warp" >/dev/null 2>&1; do
sleep 1; ((wait_count++)); [ $wait_count -gt 15 ] && break
done
local best_mtu=0
for test_mtu in 1420 1380 1350; do
if ping -c 1 -W 1 -M do -s $((test_mtu - 28)) 1.1.1.1 >/dev/null 2>&1; then
best_mtu=$test_mtu; break
fi
done
[ "$best_mtu" -eq 0 ] && best_mtu=1380
warp-cli set-mtu "$best_mtu" &>/dev/null
}

install_warp() {
echo "(grep -oP '(?<=^ID=).+' /etc/os-release | tr -d '"' || echo "unknown")
if [[ "(grep "VERSION_CODENAME" /etc/os-release | cut -d= -f2 || echo "stable")
curl -fsSL [https://pkg.cloudflareclient.com/pubkey.gpg](https://pkg.cloudflareclient.com/pubkey.gpg) | gpg --batch --no-tty --yes --dearmor -o "$KEYRING"
echo "deb [signed-by=$KEYRING] [https://pkg.cloudflareclient.com/](https://pkg.cloudflareclient.com/) $codename main" > /etc/apt/sources.list.d/cloudflare-client.list
apt-get update -qq && apt-get install -y cloudflare-warp -qq
elif [[ "$OS_ID" =~ (centos|rhel|almalinux|rocky) ]]; then
yum install -y yum-utils psmisc iproute bind-utils libattr -q
yum-config-manager --add-repo [https://pkg.cloudflareclient.com/cloudflare-warp-ascii.repo](https://www.google.com/search?q=https://pkg.cloudflareclient.com/cloudflare-warp-ascii.repo) || true
yum install -y cloudflare-warp
fi
mkdir -p /etc/systemd/system/warp-svc.service.d
cat <<EOF > /etc/systemd/system/warp-svc.service.d/override.conf
[Unit]
After=network-online.target nss-lookup.target
Wants=network-online.target
[Service]
MemoryMax=$MEM_LIMIT
Restart=always
RestartSec=$RESTART_DELAY
ExecStartPost=-/usr/bin/warp-cli connect
EOF
systemctl daemon-reload && systemctl enable --now warp-svc
}

config_warp() {
warp-cli registration delete &>/dev/null || true
echo -e "\n${L[mode_ask]:-Select Mode: 1. WARP 2. Proxy:}"
read -p "> " m_opt
[ "$m_opt" == "0" ] && return

```
if [ "$m_opt" == "2" ]; then
    warp-cli set-mode proxy
    read -p "${L[port_ask]:-Enter SOCKS5 Port (Default 40000):} " s_port
    s_port=${s_port:-40000}
    if [[ ! "$s_port" =~ ^[0-9]+$ ]]; then s_port=40000; fi
    [ "$s_port" == "0" ] && return
    warp-cli set-proxy-port "$s_port"
else
    warp-cli set-mode warp
fi

echo -e "\n${L[team_ask]:-Use Zero Trust Team? (y/n):}"
read -p "> " is_team
[ "$is_team" == "0" ] && return

if [[ "$is_team" =~ ^[Yy]$ ]]; then
    read -p "${L[name_ask]:-Enter Team Name:} " t_name; [ "$t_name" == "0" ] && return
    read -p "${L[token_ask]:-Enter Team Token (Optional):} " t_token; [ "$t_token" == "0" ] && return
    t_token=$(echo "$t_token" | xargs)
    if [ -n "$t_token" ]; then warp-cli --accept-tos registration token "$t_token"
    else warp-cli --accept-tos teams-enroll "$t_name"; fi
    curl -sL "$CA_CERT_URL" -o /usr/local/share/ca-certificates/Cloudflare_CA.crt 2>/dev/null && update-ca-certificates &>/dev/null || true
else
    warp-cli --accept-tos registration new
fi

if ! warp-cli registration show | grep -Eq "ID:|Team:"; then echo "${L[fail]:-Fail}"; return; fi

warp-cli set-proxy-log-level "$LOG_LEVEL"
local api_v4=$(getent a engage.cloudflareclient.com | awk '{print $1}' | head -n1)
local api_v6=$(getent aaaa engage.cloudflareclient.com | awk '{print $1}' | head -n1)
[ -n "$api_v4" ] && warp-cli add-excluded-route "$api_v4/32" &>/dev/null
[ -n "$api_v6" ] && warp-cli add-excluded-route "$api_v6/128" &>/dev/null

ip route | grep -v "default" | grep -E '^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+(/[0-9]+)?' | awk '{print $1}' | while read -r re; do
    warp-cli add-excluded-route "$re" &>/dev/null
done

if [ -f /etc/gai.conf ]; then
    chattr -i /etc/gai.conf 2>/dev/null
    chmod +w /etc/gai.conf 2>/dev/null
    if ! grep -q "::ffff:0:0/96" /etc/gai.conf; then
        [ ! -f /etc/gai.conf.bak ] && cp /etc/gai.conf /etc/gai.conf.bak
        [[ -s /etc/gai.conf && "$(tail -c1 /etc/gai.conf | wc -l)" -eq 0 ]] && echo "" >> /etc/gai.conf
        echo "precedence ::ffff:0:0/96 100" >> /etc/gai.conf
    fi
fi
warp-cli connect && sleep 3 && discover_mtu

```

}

uninstall_warp() {
warp-cli disconnect &>/dev/null || true
systemctl stop warp-svc &>/dev/null || true
chattr -i /etc/gai.conf 2>/dev/null || true
[ -f /etc/gai.conf.bak ] && mv /etc/gai.conf.bak /etc/gai.conf
rm -rf /etc/systemd/system/warp-svc.service.d "$MGR_PATH" "{L[done]:-Done}"
}

generate_mgr() {
cat <<EOF > "$MGR_PATH"
#!/bin/bash
case "$1" in
monitor)
rx_now=$(warp-cli metrics 2>/dev/null | grep "bytes_received" | awk '{print $2}' || echo 0)
rx_last=$(cat "$RX_CACHE" 2>/dev/null || echo 0)
echo "$rx_now" > "((fail_count + 1))
echo "$fail_count" > /tmp/warp_fail_count
if [ "$fail_count" -ge 3 ]; then
systemctl restart warp-svc && sleep 2 && warp-cli connect && rm -f /tmp/warp_fail_count
else warp-cli connect &>/dev/null; fi
else rm -f /tmp/warp_fail_count; fi ;;
reconnect) systemctl restart warp-svc && warp-cli connect ;;
*) warp-cli status ;;
esac
EOF
chmod +x "$MGR_PATH"
}

# --- 7. Execution Start ---

check_and_fix_ipv6_only
set_default_lang
clear
echo "----------------------------------------------------------------"
echo "1. English | 2. 中文 | 3. Русский | 4. فارسی | 5. 日本語"
echo "6. Español | 7. Français | 8. Deutsch | 9. 한국어 | 10. Português"
echo "----------------------------------------------------------------"
read -p "Language Choice (Default 1): " lang_choice
lang_choice=${lang_choice:-1}
[ "$lang_choice" == "0" ] && exit 0
load_remote_lang "$lang_choice"

while true; do
clear
echo "======================================="
echo "   {L[hw_info]:-HW: %s | RAM: %s}\n" "{L[opt_2]:-2. Uninstall}"
echo "{L[back_hint]:-Input 0 back}\033[0m"
echo -e "\033[31m${L[ctrl0_hint]:-Ctrl+C Stop}\033[0m"
echo "---------------------------------------"

```
read -p "> " main_opt
case "$main_opt" in
    1) 
        [ "$EUID" -ne 0 ] && echo "Root required" && sleep 2 && continue
        install_warp && generate_mgr && config_warp
        echo -e "\n${L[done]:-Done}" && sleep 3 ;;
    2) 
        [ "$EUID" -ne 0 ] && echo "Root required" && sleep 2 && continue
        uninstall_warp && sleep 2 ;;
    0) exit 0 ;;
    *) continue ;;
esac

```

done
