<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
</head>
<body>

<div align="center">
    <h2>🌍 Language Select / 语言选择</h2>
    <p>
        <a href="#readme-zh">中文</a> • 
        <a href="#readme-ru">Русский</a> • 
        <a href="#readme-fa">فارسی</a> • 
        <a href="#readme-ja">日本語</a> • 
        <a href="#readme-es">Español</a> • 
        <a href="#readme-fr">Français</a> • 
        <a href="#readme-de">Deutsch</a> • 
        <a href="#readme-ko">한국어</a> • 
        <a href="#readme-pt">Português</a>
    </p>
</div>

<hr />
</body>
</html>

Cloudflare WARP & Zero Trust Global Adaptor v1.0
A professional, high-performance shell script designed for seamless deployment and management of Cloudflare WARP and Zero Trust (Teams) on Linux servers. This tool features intelligent hardware sensing, automated multi-language support via remote language packs, and advanced network self-healing capabilities.

🚀 Key Features
1. Intelligent Hardware Sensing
The script automatically detects system resources (CPU cores and RAM) using Cgroup and physical memory analysis. It then applies one of three optimized profiles:

LOW (Memory < 300MB): Aggressive memory capping (100MB), disabled logs, and extended restart delays for maximum stability on tiny VPS instances.

MED (Memory < 1024MB): Balanced resource allocation (256MB cap) and error-only logging.

HIGH (Memory > 1GB): High-performance mode with 512MB memory allowance and standard logging.

2. Universal Language Engine
Supports 10 major languages via an externalized language pack hosted on GitHub. The script fetches and applies translations dynamically based on your selection at startup:

English, Chinese (Simplified), Russian, Persian, Japanese, Spanish, French, German, Korean, and Portuguese.

3. Dual Operation Modes
Global Mode (WARP): Creates a virtual network interface (CloudflareWARP) to route all system traffic through Cloudflare’s global network.

Proxy Mode (SOCKS5): Runs WARP as a local proxy (Default: 127.0.0.1:40000), allowing specific applications to use the tunnel without changing the system routing table.

4. Zero Trust (Teams) Integration
Automated Enrollment: Supports one-click registration using TEAM_TOKEN for headless/automated environments.

Interactive Enrollment: Guided setup for Team Name (Organization) and browser-based authentication.

Certificate Automation: Automatically downloads and installs the Cloudflare Root CA into the system trust store for HTTPS inspection support.

5. Advanced Network Routing
Multi-Interface Exclusion: Automatically scans all local network interfaces and excludes their CIDR ranges to prevent SSH lockouts and local routing conflicts.

Endpoint Resolution: Dynamically resolves Cloudflare Endpoint IPs (IPv4/IPv6) and adds them to the exclusion list.

IPv4 Priority Patch: Atomically modifies gai.conf to prioritize IPv4 over IPv6 when needed, ensuring stability on dual-stack or IPv6-only servers.

6. Self-Healing & MTU Optimization
Path MTU Discovery: Executes a heuristic ping test (1420 to 1350 bytes) to find the largest stable MTU for your specific network path, preventing packet fragmentation.

Systemd Monitor: Installs a background watchdog (warp-mgr) that checks connectivity via cloudflare.com/cdn-cgi/trace. If the connection fails 3 consecutive times, the service automatically restarts.

🛠 Installation & Usage
Run the following command on your Linux terminal (Root privileges required):

Bash
wget -O warp.sh https://raw.githubusercontent.com/suanlihey/Cloudflare-WARP-and-Zero-Trust-For-Linux/refs/heads/main/warp.sh && chmod +x warp.sh && ./warp.sh
Script Options
Language Selection: Select your preferred language (1-10) upon first run.

Intelligent Deployment: Installs dependencies, sets up the WARP client, configures accounts, and applies optimizations.

Deep Uninstall: Completely removes the WARP client, clears systemd overrides, restores gai.conf, and cleans up all configuration directories.

📁 Project Structure
warp.sh: The core execution engine.

Language.sh: External language pack for multi-language support.

warp-mgr: Local management tool (installed to /usr/local/bin/) for status checks and manual reconnection.

🛡 Stability Notes
TUN Support: The script checks for TUN device availability and attempts to fix missing device nodes automatically.

Service Isolation: Uses Systemd override.conf to ensure Cloudflare WARP never exceeds its allocated memory profile, protecting your other server applications from OOM (Out Of Memory) crashes.

📄 License
This project is released under the MIT License. Use it responsibly for network optimization and security.

Would you like me to generate a specific Wiki page for any of these features or provide the installation instructions for a particular Linux distribution?
