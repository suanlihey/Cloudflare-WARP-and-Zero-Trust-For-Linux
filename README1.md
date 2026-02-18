<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
</head>
<body>

<div align="center">
    <h2>🌍 Language Select / 语言选择</h2>
    <p>
        <a href="#readme-en">English</a> • 
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

<div id="readme-en">
    <h1 align="center">Cloudflare WARP & Zero Trust For Linux</h1>
    <p align="center">
        <strong>The ultimate intelligent adaptor for WARP deployment on any Linux environment.</strong>
    </p>

    <p align="center">
        <img src="https://img.shields.io/badge/Version-1.0-blue.svg" alt="Version">
        <img src="https://img.shields.io/badge/Platform-Linux-orange.svg" alt="Platform">
        <img src="https://img.shields.io/badge/License-MIT-green.svg" alt="License">
    </p>

    <h2>🚀 Features</h2>
    <ul>
        <li><strong>Multi-Language Support:</strong> Dynamic remote language pack loading (10+ languages).</li>
        <li><strong>Zero Trust Integration:</strong> Seamless automated Team account enrollment via Tokens.</li>
        <li><strong>Hardware Sensing:</strong> Automatically adjusts memory limits and log levels based on VPS RAM (Low/Med/High).</li>
        <li><strong>Network Self-Healing:</strong> Built-in monitor (<code>warp-mgr</code>) to detect disconnection and auto-reconnect.</li>
        <li><strong>Intelligent Routing:</strong> Automatic exclusion of local IP ranges and multi-hop routes to prevent SSH lockout.</li>
        <li><strong>MTU Optimization:</strong> Heuristic path discovery to find the optimal MTU for your specific network.</li>
    </ul>

    

    <h2>📥 One-Key Installation</h2>
    <p>Run the following command to start the interactive deployment:</p>
    <pre><code>wget -N https://raw.githubusercontent.com/suanlihey/Cloudflare-WARP-and-Zero-Trust-For-Linux/refs/heads/main/warp.sh && chmod +x warp.sh && ./warp.sh</code></pre>

    <h2>🛠 Operation Logic</h2>
    <ol>
        <li><strong>Language Selection:</strong> Choose your preferred language on the first screen.</li>
        <li><strong>Hardware Detection:</strong> The script identifies your CPU/RAM resources.</li>
        <li><strong>Installation:</strong> Installs official <code>cloudflare-warp</code> and configures Systemd overrides.</li>
        <li><strong>Account Setup:</strong> Choose between Free WARP or Zero Trust Teams (Manual/Token).</li>
        <li><strong>Optimization:</strong> Performs MTU detection and sets up <code>gai.conf</code> for IPv4/IPv6 precedence.</li>
    </ol>

    <h2>📊 Management Commands</h2>
    <p>After installation, you can use <code>warp-mgr</code> to manage the service:</p>
    <ul>
        <li><code>warp-mgr</code>: Check current connection status.</li>
        <li><code>warp-mgr reconnect</code>: Force restart and reconnect the tunnel.</li>
        <li><code>warp-mgr monitor</code>: Run a health check (used by Cron).</li>
    </ul>

    <h2>⚠️ Precautions</h2>
    <blockquote>
        Always ensure you have a backup access method (like VNC) when deploying network-layer tools, although this script includes route protection for SSH.
    </blockquote>
</div>

<hr />

<div align="center">
    <p><i>Full translations for other languages are available in the repository sub-directories.</i></p>
</div>

</body>
</html>
