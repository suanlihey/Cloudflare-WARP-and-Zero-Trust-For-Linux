🌐 Cloudflare WARP & Zero Trust Global Adaptor for Linux

一个智能、高性能的 Cloudflare WARP 与 Zero Trust（Teams）Linux 部署脚本。
适用于高性能服务器，也适用于低至 128MB RAM 的轻量级 VPS。
内置动态远程语言引擎，支持多语言环境自动适配。

🚀 一键部署

执行以下命令启动交互式安装程序：

wget -N https://raw.githubusercontent.com/suanlihey/Cloudflare-WARP-and-Zero-Trust-For-Linux/main/warp.sh && chmod +x warp.sh && ./warp.sh

✨ 核心特性
1️⃣ 动态多语言引擎

脚本采用外置语言架构，在运行时从 Language.sh 拉取最新翻译。
支持 10 种语言：

English

中文

Русский

فارس
日本語

Español

Français

Deutsch

한국어

Português

2️⃣ 硬件感知自适应优化

启动时自动检测：

Cgroup 限制

物理内存大小

并应用对应性能策略：

LOW（内存 < 300MB）

降低日志等级

增加服务重启延迟

严格限制 warp-svc 内存使用

MED / HIGH

优化吞吐性能

降低延迟

3️⃣ 智能 Zero Trust（Teams）集成

手动 / 自动认证

浏览器授权

使用 TEAM_TOKEN 自动部署

Zero Trust 证书支持

自动安装并信任 Cloudflare Root CA

适用于 HTTPS 检查环境

4️⃣ 网络与路由韧性优化

MTU 探测机制

自动探测路径 MTU（1420 → 1380 → 1350）

防止数据包分片

路由排除（分流）

自动识别本地接口

保护网关路由

避免 SSH 锁死

防止路由循环

IPv4 / IPv6 优先级优化

自动修补 gai.conf

保证双栈稳定性

5️⃣ 自愈监控系统（warp-mgr）

安装后附带管理工具 warp-mgr，支持：

心跳检测

每分钟检查一次连接状态

自动恢复

连续 3 次失败自动重启服务

🛠 安装流程
1️⃣ 环境检测

识别系统版本（Debian / Ubuntu / CentOS / RHEL）

检测内存大小

2️⃣ 仓库配置

添加官方 Cloudflare GPG Key

添加软件仓库

3️⃣ 依赖安装

自动安装：

psmisc

dnsutils

attr

ca-certificates

4️⃣ 服务覆盖

注入 systemd override

设置内存限制

调整启动顺序

5️⃣ 配置流程

选择模式（全局代理 / SOCKS5 代理）

注册账号（Free WARP / Zero Trust Teams）

应用 MTU 与路由排除规则

📂 文件结构
文件	说明
warp.sh	主执行脚本（Version 1.0）
Language.sh	外部语言包（10 语言字典）
warp-mgr	安装后管理工具，位于 /usr/local/bin/
⚙️ 安装后管理命令
查看状态
warp-mgr

强制重连
warp-mgr reconnect

查看指标
warp-cli metrics

🔄 启用自动监控（Crontab）

编辑计划任务：

crontab -e


添加：

* * * * * /usr/local/bin/warp-mgr monitor > /dev/null 2>&1

⚠️ 系统要求

操作系统

Ubuntu 20.04+

Debian 10+

CentOS 7+

RHEL 8+

权限

必须使用 root 运行

架构

x86_64

ARM64

🤝 贡献

欢迎提交 Pull Request：

改进 Language.sh 翻译

优化 warp.sh 功能

📜 免责声明

本项目与 Cloudflare 官方无关联。
使用 Cloudflare WARP 需遵守其服务条款。
