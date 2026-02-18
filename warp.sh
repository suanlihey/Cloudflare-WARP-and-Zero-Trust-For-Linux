#!/bin/bash=======================================================Cloudflare WARP Zero Trust Global Adaptor v1.0 (2026)=======================================================Project: https://github.com/suanlihey/Cloudflare-WARP-and-Zero-Trust-For-LinuxFeatures: NAT64 DNS, Dynamic Lang-Pack, Custom SOCKS5, ZT Auto-Auth=======================================================set -uo pipefail--- 1. Constants & Paths ---MGR_PATH="/usr/local/bin/warp-mgr"CONF_DIR="/var/lib/cloudflare-warp"DETECT_URL="https://www.cloudflare.com/cdn-cgi/trace"KEYRING="/usr/share/keyrings/cloudflare-warp-archive-keyring.gpg"TMP_SANDBOX="/var/lib/cloudflare-warp/tmp"RX_CACHE="/tmp/warp_last_rx"CA_CERT_URL="https://developers.cloudflare.com/cloudflare-one/static/Cloudflare_CA.crt"LANG_REMOTE="https://raw.githubusercontent.com/suanlihey/Cloudflare-WARP-and-Zero-Trust-For-Linux/refs/heads/main/Language.sh"--- 2. Signal Handling & Cleanup ---trap 'stty sane; echo -e "\nTerminated."; exit 0' SIGINT SIGTERM--- 3. Pre-flight Environment Check (NAT64 for IPv6-Only) ---check_and_fix_ipv6_only() {# Check if IPv4 is available via common pingif ! ping -c 1 -W 2 1.1.1.1 >/dev/null 2>&1; then# Check if IPv6 is availableif ping6 -c 1 -W 2 2606:4700:4700::1111 >/dev/null 2>&1; then# Pure IPv6 environment detected, inject NAT64 DNS if DNS resolution failsif ! host https://www.google.com/search?q=google.com >/dev/null 2>&1; thenecho "Pure IPv6 environment detected. Injecting NAT64 DNS..."[ -f /etc/resolv.conf ] && cp /etc/resolv.conf /etc/resolv.conf.bak 2>/dev/nullecho -e "nameserver 2a00:1098:2c::1\nnameserver 2a01:4f8:c2c:123f::1\nnameserver 2a00:1098:2b::1" > /etc/resolv.conffififi}--- 4. Language Engine ---declare -A Lset_default_lang() {L[menu_title]="Cloudflare WARP Global Adaptor v1.0"L[hw_info]="Hardware: %s | RAM: %sMB"L[opt_1]="1. Intelligent Deployment (Zero Trust / Free)"L[opt_2]="2. Deep Uninstall & Cleanup"L[opt_0]="0. Exit"L[back_hint]="Hint: Enter '0' to return to main menu."L[ctrl0_hint]="Force Stop: Press Ctrl+C."L[lang_select]="Select Language / 请选择语言:"L[installing]="Installing Cloudflare WARP..."L[verifying]="Verifying registration..."L[mtu_detect]="Detecting optimal MTU..."L[done]="Operation completed."L[fail]="Operation failed."L[team_ask]="Use Zero Trust Team? (y/n):"L[token_ask]="Enter Team Token (Optional):"L[name_ask]="Enter Team Name:"L[mode_ask]="Select Mode: 1. Global (WARP) 2. Proxy (SOCKS5):"L[port_ask]="Enter SOCKS5 Port (Default 40000):"}load_remote_lang() {local choice=$1
local lang_data
lang_data=$(curl -fsSL "$LANG\_REMOTE" 2\>/dev/null)
if [ $? -eq 0 ] && [ -n "$lang\_data" ]; then
\# Improved Regex to handle optional spaces around '=' and ensure strict parsing
L[menu\_title]=$(echo "$lang\_data" | grep -E "L\_${choice}_menu_title\s*=" | cut -d'"' -f2)
L[hw_info]=$(echo "$lang_data" | grep -E "L_${choice}*hw\_info\\s\*=" | cut -d'"' -f2)
L[opt\_1]=$(echo "$lang\_data" | grep -E "L*${choice}opt_1\s*=" | cut -d'"' -f2)
L[opt_2]=$(echo "$lang_data" | grep -E "L${choice}*opt\_2\\s\*=" | cut -d'"' -f2)
L[opt\_0]=$(echo "$lang\_data" | grep -E "L*${choice}opt_0\s*=" | cut -d'"' -f2)
L[back_hint]=$(echo "$lang_data" | grep -E "L${choice}*back\_hint\\s\*=" | cut -d'"' -f2)
L[ctrl0\_hint]=$(echo "$lang\_data" | grep -E "L*${choice}ctrl0_hint\s*=" | cut -d'"' -f2)
L[installing]=$(echo "$lang_data" | grep -E "L${choice}*installing\\s\*=" | cut -d'"' -f2)
L[verifying]=$(echo "$lang\_data" | grep -E "L*${choice}verifying\s*=" | cut -d'"' -f2)
L[mtu_detect]=$(echo "$lang_data" | grep -E "L${choice}*mtu\_detect\\s\*=" | cut -d'"' -f2)
L[done]=$(echo "$lang\_data" | grep -E "L*${choice}done\s*=" | cut -d'"' -f2)
L[fail]=$(echo "$lang_data" | grep -E "L${choice}*fail\\s\*=" | cut -d'"' -f2)
L[team\_ask]=$(echo "$lang\_data" | grep -E "L*${choice}team_ask\s*=" | cut -d'"' -f2)
L[token_ask]=$(echo "$lang_data" | grep -E "L${choice}*token\_ask\\s\*=" | cut -d'"' -f2)
L[name\_ask]=$(echo "$lang\_data" | grep -E "L*${choice}name_ask\s*=" | cut -d'"' -f2)
L[mode_ask]=$(echo "$lang_data" | grep -E "L${choice}*mode\_ask\\s\*=" | cut -d'"' -f2)
L[port\_ask]=$(echo "$lang\_data" | grep -E "L*${choice}_port_ask\s*=" | cut -d'"' -f2)fiFallback to English if parsing failed or string is empty[ -z "${L[menu_title]:-}" ] && set_default_lang}--- 5. Hardware Sensing ---get_mem_limit() {local mem_limit_bytesif [ -f /sys/fs/cgroup/memory/memory.limit_in_bytes ]; thenmem_limit_bytes=$(cat /sys/fs/cgroup/memory/memory.limit_in_bytes)if [ "$mem_limit_bytes" -lt 9223372036854771712 ]; thenecho $((mem_limit_bytes / 1024 / 1024))returnfififree -m | awk '/^Mem:/{print $2}'}TOTAL_MEM=$(get_mem_limit)if [ "$TOTAL_MEM" -le 300 ]; thenHW_PROFILE="LOW"; MEM_LIMIT="100M"; LOG_LEVEL="off"; RESTART_DELAY="15"elif [ "$TOTAL_MEM" -le 1024 ]; thenHW_PROFILE="MED"; MEM_LIMIT="256M"; LOG_LEVEL="error"; RESTART_DELAY="10"elseHW_PROFILE="HIGH"; MEM_LIMIT="512M"; LOG_LEVEL="info"; RESTART_DELAY="5"fi[ "$EUID" -eq 0 ] && mkdir -p "$TMP_SANDBOX" && export TMPDIR="$TMP_SANDBOX"--- 6. Core Functions ---discover_mtu() {echo "${L[mtu_detect]:-Detecting MTU...}"local wait_count=0while ! ip link show | grep -E "CloudflareWARP|warp" >/dev/null 2>&1; dosleep 1; ((wait_count++)); [ $wait_count -gt 15 ] && breakdonelocal best_mtu=0for test_mtu in 1420 1380 1350; doif ping -c 1 -W 1 -M do -s $((test_mtu - 28)) 1.1.1.1 >/dev/null 2>&1; thenbest_mtu=$test_mtu; breakfidone[ "$best_mtu" -eq 0 ] && best_mtu=1380warp-cli set-mtu "$best_mtu" &>/dev/null}install_warp() {echo "${L[installing]:-Installing...}"
OS_ID=$(grep -oP '(?<=^ID=).+' /etc/os-release | tr -d '"' || echo "unknown")if [[ "$OS_ID" =~ (ubuntu|debian|raspbian) ]]; then
apt-get update -qq && apt-get install -y curl gpg ca-certificates psmisc iproute2 dnsutils attr -qq
local codename=$(grep "VERSION_CODENAME" /etc/os-release | cut -d= -f2 || echo "stable")curl -fsSL https://pkg.cloudflareclient.com/pubkey.gpg | gpg --batch --no-tty --yes --dearmor -o "$KEYRING"echo "deb [signed-by=$KEYRING] https://pkg.cloudflareclient.com/ $codename main" > /etc/apt/sources.list.d/cloudflare-client.listapt-get update -qq && apt-get install -y cloudflare-warp -qqelif [[ "$OS_ID" =~ (centos|rhel|almalinux|rocky) ]]; thenyum install -y yum-utils psmisc iproute bind-utils libattr -qyum-config-manager --add-repo https://pkg.cloudflareclient.com/cloudflare-warp-ascii.repo || trueyum install -y cloudflare-warpfimkdir -p /etc/systemd/system/warp-svc.service.dcat <<EOF > /etc/systemd/system/warp-svc.service.d/override.conf[Unit]After=network-online.target nss-lookup.targetWants=network-online.target[Service]MemoryMax=$MEM_LIMITRestart=alwaysRestartSec=$RESTART_DELAYExecStartPost=-/usr/bin/warp-cli connectEOFsystemctl daemon-reload && systemctl enable --now warp-svc}config_warp() {warp-cli registration delete &>/dev/null || trueecho -e "\n${L[mode_ask]:-Select Mode: 1. WARP 2. Proxy:}"read -p "> " m_opt[ "$m_opt" == "0" ] && returnif [ "$m_opt" == "2" ]; then
    warp-cli set-mode proxy
    read -p "${L[port_ask]:-Enter SOCKS5 Port (Default 40000):} " s_port
    s_port=${s_port:-40000}
    # Numeric Check for SOCKS5 Port validation
    if [[ ! "$s_port" =~ ^[0-9]+$ ]]; then
        s_port=40000
    fi
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
}uninstall_warp() {warp-cli disconnect &>/dev/null || truesystemctl stop warp-svc &>/dev/null || truechattr -i /etc/gai.conf 2>/dev/null || true[ -f /etc/gai.conf.bak ] && mv /etc/gai.conf.bak /etc/gai.confrm -rf /etc/systemd/system/warp-svc.service.d "$MGR_PATH" "$CONF\_DIR"
echo "${L[done]:-Done}"}generate_mgr() {cat <<EOF > "$MGR_PATH"#!/bin/bashcase "$1" inmonitor)rx_now=$(warp-cli metrics 2>/dev/null | grep "bytes_received" | awk '{print $2}' || echo 0)rx_last=$(cat "$RX_CACHE" 2>/dev/null || echo 0)echo "$rx_now" > "$RX\_CACHE"
if \! curl -s --max-time 2 "$DETECT\_URL" | grep -q "warp=on"; then
fail\_count=$(cat /tmp/warp\_fail\_count 2\>/dev/null || echo 0)
fail\_count=$((fail_count + 1))echo "$fail_count" > /tmp/warp_fail_countif [ "$fail_count" -ge 3 ]; thensystemctl restart warp-svc && sleep 2 && warp-cli connect && rm -f /tmp/warp_fail_countelse warp-cli connect &>/dev/null; fielse rm -f /tmp/warp_fail_count; fi ;;reconnect) systemctl restart warp-svc && warp-cli connect ;;*) warp-cli status ;;esacEOFchmod +x "$MGR_PATH"ln -sf "$MGR_PATH" /usr/local/bin/warp-mgr 2>/dev/null || true}--- 7. Execution Start ---check_and_fix_ipv6_onlyset_default_langclearecho "----------------------------------------------------------------"echo "1. English | 2. 中文 | 3. Русский | 4. فارسی | 5. 日本語"echo "6. Español | 7. Français | 8. Deutsch | 9. 한국어 | 10. Português"echo "----------------------------------------------------------------"read -p "Language Choice (Default 1): " lang_choicelang_choice=${lang_choice:-1}[ "$lang_choice" == "0" ] && exit 0load_remote_lang "$lang_choice"while true; doclearecho "======================================="echo "   ${L[menu_title]:-Cloudflare WARP Adaptor}"
echo "======================================="
printf "${L[hw_info]:-HW: %s | RAM: %s}\n" "$HW_PROFILE" "$TOTAL\_MEM"
echo "---------------------------------------"
echo "${L[opt_1]:-1. Deploy}"
echo "${L[opt_2]:-2. Uninstall}"echo "${L[opt_0]:-0. Exit}"
echo "---------------------------------------"
echo -e "\033[33m${L[back_hint]:-Input 0 back}\033[0m"echo -e "\033[31m${L[ctrl0_hint]:-Ctrl+C Stop}\033[0m"echo "---------------------------------------"read -p "> " main_opt
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
done
