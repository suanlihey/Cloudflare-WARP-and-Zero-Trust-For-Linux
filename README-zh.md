<div class="flex w-full flex-col gap-1 empty:hidden first:pt-[1px]"><div class="markdown prose dark:prose-invert w-full wrap-break-word dark markdown-new-styling"><h2 data-start="0" data-end="59">🌐 Cloudflare WARP &amp; Zero Trust Global Adaptor for Linux</h2>
<p data-start="61" data-end="186">一个智能、高性能的 Cloudflare WARP 与 Zero Trust（Teams）Linux 部署脚本。<br data-start="117" data-end="120">
适用于高性能服务器，也适用于低至 <strong data-start="137" data-end="150">128MB RAM</strong> 的轻量级 VPS。<br data-start="160" data-end="163">
内置动态远程语言引擎，支持多语言环境自动适配。</p>
<hr data-start="188" data-end="191">
<h2 data-start="193" data-end="203">🚀 一键部署</h2>
<p data-start="205" data-end="221">执行以下命令启动交互式安装程序：</p>
<pre class="overflow-visible! px-0!" data-start="223" data-end="373"><div class="contain-inline-size rounded-2xl corner-superellipse/1.1 relative bg-token-sidebar-surface-primary"><div class="flex items-center text-token-text-secondary px-4 py-2 text-xs font-sans justify-between h-9 bg-token-sidebar-surface-primary select-none rounded-t-2xl corner-t-superellipse/1.1">bash</div><div class="sticky top-[calc(var(--sticky-padding-top)+9*var(--spacing))]"><div class="absolute end-0 bottom-0 flex h-9 items-center pe-2"><div class="bg-token-bg-elevated-secondary text-token-text-secondary flex items-center gap-4 rounded-sm px-2 font-sans text-xs"></div></div></div><div class="overflow-y-auto p-4" dir="ltr"><code class="whitespace-pre! language-bash"><span><span>```wget -N https://raw.githubusercontent.com/suanlihey/Cloudflare-WARP-and-Zero-Trust-For-Linux/main/warp.sh```</span><span><span class="hljs-built_in">chmod</span></span><span> +x warp.sh &amp;&amp; ./warp.sh
</span></span></code></div></div></pre>
<hr data-start="375" data-end="378">
<h2 data-start="380" data-end="389">✨ 核心特性</h2>
<h3 data-start="391" data-end="406">1️⃣ 动态多语言引擎</h3>
<p data-start="408" data-end="459">脚本采用外置语言架构，在运行时从 <code data-start="425" data-end="438">Language.sh</code> 拉取最新翻译。<br data-start="446" data-end="449">
支持 10 种语言：</p>
<ul data-start="461" data-end="568">
<li data-start="461" data-end="472">
<p data-start="463" data-end="472">English</p>
</li>
<li data-start="473" data-end="479">
<p data-start="475" data-end="479">中文</p>
</li>
<li data-start="480" data-end="491">
<p data-start="482" data-end="491">Русский</p>
</li>
<li data-start="492" data-end="501">
<p data-start="494" data-end="501">فارسی</p>
</li>
<li data-start="502" data-end="509">
<p data-start="504" data-end="509">日本語</p>
</li>
<li data-start="510" data-end="521">
<p data-start="512" data-end="521">Español</p>
</li>
<li data-start="522" data-end="534">
<p data-start="524" data-end="534">Français</p>
</li>
<li data-start="535" data-end="546">
<p data-start="537" data-end="546">Deutsch</p>
</li>
<li data-start="547" data-end="554">
<p data-start="549" data-end="554">한국어</p>
</li>
<li data-start="555" data-end="568">
<p data-start="557" data-end="568">Português</p>
</li>
</ul>
<hr data-start="570" data-end="573">
<h3 data-start="575" data-end="592">2️⃣ 硬件感知自适应优化</h3>
<p data-start="594" data-end="602">启动时自动检测：</p>
<ul data-start="604" data-end="624">
<li data-start="604" data-end="615">
<p data-start="606" data-end="615">Cgroup 限制</p>
</li>
<li data-start="616" data-end="624">
<p data-start="618" data-end="624">物理内存大小</p>
</li>
</ul>
<p data-start="626" data-end="636">并应用对应性能策略：</p>
<ul data-start="638" data-end="746">
<li data-start="638" data-end="708">
<p data-start="640" data-end="659"><strong data-start="640" data-end="659">LOW（内存 &lt; 300MB）</strong></p>
<ul data-start="662" data-end="708">
<li data-start="662" data-end="670">
<p data-start="664" data-end="670">降低日志等级</p>
</li>
<li data-start="673" data-end="683">
<p data-start="675" data-end="683">增加服务重启延迟</p>
</li>
<li data-start="686" data-end="708">
<p data-start="688" data-end="708">严格限制 <code data-start="693" data-end="703">warp-svc</code> 内存使用</p>
</li>
</ul>
</li>
<li data-start="710" data-end="746">
<p data-start="712" data-end="726"><strong data-start="712" data-end="726">MED / HIGH</strong></p>
<ul data-start="729" data-end="746">
<li data-start="729" data-end="737">
<p data-start="731" data-end="737">优化吞吐性能</p>
</li>
<li data-start="740" data-end="746">
<p data-start="742" data-end="746">降低延迟</p>
</li>
</ul>
</li>
</ul>
<hr data-start="748" data-end="751">
<h3 data-start="753" data-end="783">3️⃣ 智能 Zero Trust（Teams）集成</h3>
<ul data-start="785" data-end="908">
<li data-start="785" data-end="835">
<p data-start="787" data-end="800"><strong data-start="787" data-end="800">手动 / 自动认证</strong></p>
<ul data-start="803" data-end="835">
<li data-start="803" data-end="810">
<p data-start="805" data-end="810">浏览器授权</p>
</li>
<li data-start="813" data-end="835">
<p data-start="815" data-end="835">使用 <code data-start="818" data-end="830">TEAM_TOKEN</code> 自动部署</p>
</li>
</ul>
</li>
<li data-start="837" data-end="908">
<p data-start="839" data-end="858"><strong data-start="839" data-end="858">Zero Trust 证书支持</strong></p>
<ul data-start="861" data-end="908">
<li data-start="861" data-end="889">
<p data-start="863" data-end="889">自动安装并信任 Cloudflare Root CA</p>
</li>
<li data-start="892" data-end="908">
<p data-start="894" data-end="908">适用于 HTTPS 检查环境</p>
</li>
</ul>
</li>
</ul>
<hr data-start="910" data-end="913">
<h3 data-start="915" data-end="932">4️⃣ 网络与路由韧性优化</h3>
<ul data-start="934" data-end="1117">
<li data-start="934" data-end="995">
<p data-start="936" data-end="948"><strong data-start="936" data-end="948">MTU 探测机制</strong></p>
<ul data-start="951" data-end="995">
<li data-start="951" data-end="983">
<p data-start="953" data-end="983">自动探测路径 MTU（1420 → 1380 → 1350）</p>
</li>
<li data-start="986" data-end="995">
<p data-start="988" data-end="995">防止数据包分片</p>
</li>
</ul>
</li>
<li data-start="997" data-end="1060">
<p data-start="999" data-end="1011"><strong data-start="999" data-end="1011">路由排除（分流）</strong></p>
<ul data-start="1014" data-end="1060">
<li data-start="1014" data-end="1024">
<p data-start="1016" data-end="1024">自动识别本地接口</p>
</li>
<li data-start="1027" data-end="1035">
<p data-start="1029" data-end="1035">保护网关路由</p>
</li>
<li data-start="1038" data-end="1049">
<p data-start="1040" data-end="1049">避免 SSH 锁死</p>
</li>
<li data-start="1052" data-end="1060">
<p data-start="1054" data-end="1060">防止路由循环</p>
</li>
</ul>
</li>
<li data-start="1062" data-end="1117">
<p data-start="1064" data-end="1085"><strong data-start="1064" data-end="1085">IPv4 / IPv6 优先级优化</strong></p>
<ul data-start="1088" data-end="1117">
<li data-start="1088" data-end="1105">
<p data-start="1090" data-end="1105">自动修补 <code data-start="1095" data-end="1105">gai.conf</code></p>
</li>
<li data-start="1108" data-end="1117">
<p data-start="1110" data-end="1117">保证双栈稳定性</p>
</li>
</ul>
</li>
</ul>
<hr data-start="1119" data-end="1122">
<h3 data-start="1124" data-end="1148">5️⃣ 自愈监控系统（warp-mgr）</h3>
<p data-start="1150" data-end="1174">安装后附带管理工具 <code data-start="1160" data-end="1170">warp-mgr</code>，支持：</p>
<ul data-start="1176" data-end="1233">
<li data-start="1176" data-end="1202">
<p data-start="1178" data-end="1186"><strong data-start="1178" data-end="1186">心跳检测</strong></p>
<ul data-start="1189" data-end="1202">
<li data-start="1189" data-end="1202">
<p data-start="1191" data-end="1202">每分钟检查一次连接状态</p>
</li>
</ul>
</li>
<li data-start="1204" data-end="1233">
<p data-start="1206" data-end="1214"><strong data-start="1206" data-end="1214">自动恢复</strong></p>
<ul data-start="1217" data-end="1233">
<li data-start="1217" data-end="1233">
<p data-start="1219" data-end="1233">连续 3 次失败自动重启服务</p>
</li>
</ul>
</li>
</ul>
<hr data-start="1235" data-end="1238">
<h2 data-start="1240" data-end="1250">🛠 安装流程</h2>
<h3 data-start="1252" data-end="1264">1️⃣ 环境检测</h3>
<ul data-start="1265" data-end="1315">
<li data-start="1265" data-end="1306">
<p data-start="1267" data-end="1306">识别系统版本（Debian / Ubuntu / CentOS / RHEL）</p>
</li>
<li data-start="1307" data-end="1315">
<p data-start="1309" data-end="1315">检测内存大小</p>
</li>
</ul>
<h3 data-start="1317" data-end="1329">2️⃣ 仓库配置</h3>
<ul data-start="1330" data-end="1364">
<li data-start="1330" data-end="1355">
<p data-start="1332" data-end="1355">添加官方 Cloudflare GPG Key</p>
</li>
<li data-start="1356" data-end="1364">
<p data-start="1358" data-end="1364">添加软件仓库</p>
</li>
</ul>
<h3 data-start="1366" data-end="1378">3️⃣ 依赖安装</h3>
<p data-start="1379" data-end="1384">自动安装：</p>
<ul data-start="1386" data-end="1438">
<li data-start="1386" data-end="1396">
<p data-start="1388" data-end="1396"><code data-start="1388" data-end="1396">psmisc</code></p>
</li>
<li data-start="1397" data-end="1409">
<p data-start="1399" data-end="1409"><code data-start="1399" data-end="1409">dnsutils</code></p>
</li>
<li data-start="1410" data-end="1418">
<p data-start="1412" data-end="1418"><code data-start="1412" data-end="1418">attr</code></p>
</li>
<li data-start="1419" data-end="1438">
<p data-start="1421" data-end="1438"><code data-start="1421" data-end="1438">ca-certificates</code></p>
</li>
</ul>
<h3 data-start="1440" data-end="1452">4️⃣ 服务覆盖</h3>
<ul data-start="1453" data-end="1492">
<li data-start="1453" data-end="1474">
<p data-start="1455" data-end="1474">注入 systemd override</p>
</li>
<li data-start="1475" data-end="1483">
<p data-start="1477" data-end="1483">设置内存限制</p>
</li>
<li data-start="1484" data-end="1492">
<p data-start="1486" data-end="1492">调整启动顺序</p>
</li>
</ul>
<h3 data-start="1494" data-end="1506">5️⃣ 配置流程</h3>
<ul data-start="1507" data-end="1585">
<li data-start="1507" data-end="1531">
<p data-start="1509" data-end="1531">选择模式（全局代理 / SOCKS5 代理）</p>
</li>
<li data-start="1532" data-end="1568">
<p data-start="1534" data-end="1568">注册账号（Free WARP / Zero Trust Teams）</p>
</li>
<li data-start="1569" data-end="1585">
<p data-start="1571" data-end="1585">应用 MTU 与路由排除规则</p>
</li>
</ul>
<hr data-start="1587" data-end="1590">
<h2 data-start="1592" data-end="1602">📂 文件结构</h2>
<div class="TyagGW_tableContainer"><div tabindex="-1" class="group TyagGW_tableWrapper flex flex-col-reverse w-fit"><table data-start="1604" data-end="1747" class="w-fit min-w-(--thread-content-width)"><thead data-start="1604" data-end="1615"><tr data-start="1604" data-end="1615"><th data-start="1604" data-end="1609" data-col-size="sm" class="">文件</th><th data-start="1609" data-end="1615" data-col-size="sm" class="">说明</th></tr></thead><tbody data-start="1632" data-end="1747"><tr data-start="1632" data-end="1666"><td data-start="1632" data-end="1644" data-col-size="sm"><code data-start="1634" data-end="1643">warp.sh</code></td><td data-col-size="sm" data-start="1644" data-end="1666">主执行脚本（Version 1.0）</td></tr><tr data-start="1667" data-end="1701"><td data-start="1667" data-end="1683" data-col-size="sm"><code data-start="1669" data-end="1682">Language.sh</code></td><td data-col-size="sm" data-start="1683" data-end="1701">外部语言包（10 语言字典）</td></tr><tr data-start="1702" data-end="1747"><td data-start="1702" data-end="1715" data-col-size="sm"><code data-start="1704" data-end="1714">warp-mgr</code></td><td data-col-size="sm" data-start="1715" data-end="1747">安装后管理工具，位于 <code data-start="1728" data-end="1745">/usr/local/bin/</code></td></tr></tbody></table><div class="sticky h-0 select-none end-(--thread-content-margin) self-end"><div class="absolute end-0 flex items-end" style="height: 33px;"><span class="" data-state="closed"><button aria-label="复制表格" class="hover:bg-token-bg-tertiary text-token-text-secondary my-1 rounded-sm p-1 transition-opacity group-[:not(:hover):not(:focus-within)]:pointer-events-none group-[:not(:hover):not(:focus-within)]:opacity-0"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" aria-hidden="true" class="icon"><use href="/cdn/assets/sprites-core-gvfid0kn.svg#ce3544" fill="currentColor"></use></svg></button></span></div></div></div></div>
<hr data-start="1749" data-end="1752">
<h2 data-start="1754" data-end="1767">⚙️ 安装后管理命令</h2>
<h3 data-start="1769" data-end="1777">查看状态</h3>
<pre class="overflow-visible! px-0!" data-start="1779" data-end="1799"><div class="contain-inline-size rounded-2xl corner-superellipse/1.1 relative bg-token-sidebar-surface-primary"><div class="flex items-center text-token-text-secondary px-4 py-2 text-xs font-sans justify-between h-9 bg-token-sidebar-surface-primary select-none rounded-t-2xl corner-t-superellipse/1.1">bash</div><div class="sticky top-[calc(var(--sticky-padding-top)+9*var(--spacing))]"><div class="absolute end-0 bottom-0 flex h-9 items-center pe-2"><div class="bg-token-bg-elevated-secondary text-token-text-secondary flex items-center gap-4 rounded-sm px-2 font-sans text-xs"><button class="flex gap-1 items-center select-none py-1" aria-label="复制"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" aria-hidden="true" class="icon-sm"><use href="/cdn/assets/sprites-core-gvfid0kn.svg#ce3544" fill="currentColor"></use></svg>复制代码</button></div></div></div><div class="overflow-y-auto p-4" dir="ltr"><code class="whitespace-pre! language-bash"><span><span>warp-mgr
</span></span></code></div></div></pre>
<h3 data-start="1801" data-end="1809">强制重连</h3>
<pre class="overflow-visible! px-0!" data-start="1811" data-end="1841"><div class="contain-inline-size rounded-2xl corner-superellipse/1.1 relative bg-token-sidebar-surface-primary"><div class="flex items-center text-token-text-secondary px-4 py-2 text-xs font-sans justify-between h-9 bg-token-sidebar-surface-primary select-none rounded-t-2xl corner-t-superellipse/1.1">bash</div><div class="sticky top-[calc(var(--sticky-padding-top)+9*var(--spacing))]"><div class="absolute end-0 bottom-0 flex h-9 items-center pe-2"><div class="bg-token-bg-elevated-secondary text-token-text-secondary flex items-center gap-4 rounded-sm px-2 font-sans text-xs"><button class="flex gap-1 items-center select-none py-1" aria-label="复制"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" aria-hidden="true" class="icon-sm"><use href="/cdn/assets/sprites-core-gvfid0kn.svg#ce3544" fill="currentColor"></use></svg>复制代码</button></div></div></div><div class="overflow-y-auto p-4" dir="ltr"><code class="whitespace-pre! language-bash"><span><span>warp-mgr reconnect
</span></span></code></div></div></pre>
<h3 data-start="1843" data-end="1851">查看指标</h3>
<pre class="overflow-visible! px-0!" data-start="1853" data-end="1881"><div class="contain-inline-size rounded-2xl corner-superellipse/1.1 relative bg-token-sidebar-surface-primary"><div class="flex items-center text-token-text-secondary px-4 py-2 text-xs font-sans justify-between h-9 bg-token-sidebar-surface-primary select-none rounded-t-2xl corner-t-superellipse/1.1">bash</div><div class="sticky top-[calc(var(--sticky-padding-top)+9*var(--spacing))]"><div class="absolute end-0 bottom-0 flex h-9 items-center pe-2"><div class="bg-token-bg-elevated-secondary text-token-text-secondary flex items-center gap-4 rounded-sm px-2 font-sans text-xs"><button class="flex gap-1 items-center select-none py-1" aria-label="复制"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" aria-hidden="true" class="icon-sm"><use href="/cdn/assets/sprites-core-gvfid0kn.svg#ce3544" fill="currentColor"></use></svg>复制代码</button></div></div></div><div class="overflow-y-auto p-4" dir="ltr"><code class="whitespace-pre! language-bash"><span><span>warp-cli metrics
</span></span></code></div></div></pre>
<hr data-start="1883" data-end="1886">
<h2 data-start="1888" data-end="1909">🔄 启用自动监控（Crontab）</h2>
<p data-start="1911" data-end="1918">编辑计划任务：</p>
<pre class="overflow-visible! px-0!" data-start="1920" data-end="1942"><div class="contain-inline-size rounded-2xl corner-superellipse/1.1 relative bg-token-sidebar-surface-primary"><div class="flex items-center text-token-text-secondary px-4 py-2 text-xs font-sans justify-between h-9 bg-token-sidebar-surface-primary select-none rounded-t-2xl corner-t-superellipse/1.1">bash</div><div class="sticky top-[calc(var(--sticky-padding-top)+9*var(--spacing))]"><div class="absolute end-0 bottom-0 flex h-9 items-center pe-2"><div class="bg-token-bg-elevated-secondary text-token-text-secondary flex items-center gap-4 rounded-sm px-2 font-sans text-xs"><button class="flex gap-1 items-center select-none py-1" aria-label="复制"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" aria-hidden="true" class="icon-sm"><use href="/cdn/assets/sprites-core-gvfid0kn.svg#ce3544" fill="currentColor"></use></svg>复制代码</button></div></div></div><div class="overflow-y-auto p-4" dir="ltr"><code class="whitespace-pre! language-bash"><span><span>crontab -e
</span></span></code></div></div></pre>
<p data-start="1944" data-end="1947">添加：</p>
<pre class="overflow-visible! px-0!" data-start="1949" data-end="2019"><div class="contain-inline-size rounded-2xl corner-superellipse/1.1 relative bg-token-sidebar-surface-primary"><div class="flex items-center text-token-text-secondary px-4 py-2 text-xs font-sans justify-between h-9 bg-token-sidebar-surface-primary select-none rounded-t-2xl corner-t-superellipse/1.1">bash</div><div class="sticky top-[calc(var(--sticky-padding-top)+9*var(--spacing))]"><div class="absolute end-0 bottom-0 flex h-9 items-center pe-2"><div class="bg-token-bg-elevated-secondary text-token-text-secondary flex items-center gap-4 rounded-sm px-2 font-sans text-xs"><button class="flex gap-1 items-center select-none py-1" aria-label="复制"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" aria-hidden="true" class="icon-sm"><use href="/cdn/assets/sprites-core-gvfid0kn.svg#ce3544" fill="currentColor"></use></svg>复制代码</button></div></div></div><div class="overflow-y-auto p-4" dir="ltr"><code class="whitespace-pre! language-bash"><span><span>* * * * * /usr/local/bin/warp-mgr monitor &gt; /dev/null 2&gt;&amp;1
</span></span></code></div></div></pre>
<hr data-start="2021" data-end="2024">
<h2 data-start="2026" data-end="2036">⚠️ 系统要求</h2>
<ul data-start="2038" data-end="2165">
<li data-start="2038" data-end="2107">
<p data-start="2040" data-end="2048"><strong data-start="2040" data-end="2048">操作系统</strong></p>
<ul data-start="2051" data-end="2107">
<li data-start="2051" data-end="2066">
<p data-start="2053" data-end="2066">Ubuntu 20.04+</p>
</li>
<li data-start="2069" data-end="2081">
<p data-start="2071" data-end="2081">Debian 10+</p>
</li>
<li data-start="2084" data-end="2095">
<p data-start="2086" data-end="2095">CentOS 7+</p>
</li>
<li data-start="2098" data-end="2107">
<p data-start="2100" data-end="2107">RHEL 8+</p>
</li>
</ul>
</li>
<li data-start="2109" data-end="2134">
<p data-start="2111" data-end="2117"><strong data-start="2111" data-end="2117">权限</strong></p>
<ul data-start="2120" data-end="2134">
<li data-start="2120" data-end="2134">
<p data-start="2122" data-end="2134">必须使用 root 运行</p>
</li>
</ul>
</li>
<li data-start="2136" data-end="2165">
<p data-start="2138" data-end="2144"><strong data-start="2138" data-end="2144">架构</strong></p>
<ul data-start="2147" data-end="2165">
<li data-start="2147" data-end="2155">
<p data-start="2149" data-end="2155">x86_64</p>
</li>
<li data-start="2158" data-end="2165">
<p data-start="2160" data-end="2165">ARM64</p>
</li>
</ul>
</li>
</ul>
<hr data-start="2167" data-end="2170">
<h2 data-start="2172" data-end="2180">🤝 贡献</h2>
<p data-start="2182" data-end="2200">欢迎提交 Pull Request：</p>
<ul data-start="2202" data-end="2241">
<li data-start="2202" data-end="2223">
<p data-start="2204" data-end="2223">改进 <code data-start="2207" data-end="2220">Language.sh</code> 翻译</p>
</li>
<li data-start="2224" data-end="2241">
<p data-start="2226" data-end="2241">优化 <code data-start="2229" data-end="2238">warp.sh</code> 功能</p>
</li>
</ul>
<hr data-start="2243" data-end="2246">
<h2 data-start="2248" data-end="2258">📜 免责声明</h2>
<p data-start="2260" data-end="2313" data-is-last-node="" data-is-only-node="">本项目与 Cloudflare 官方无关联。<br data-start="2282" data-end="2285">
使用 Cloudflare WARP 需遵守其服务条款。</p></div></div>
