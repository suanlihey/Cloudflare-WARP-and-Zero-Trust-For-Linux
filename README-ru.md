<div class="markdown prose dark:prose-invert w-full wrap-break-word dark markdown-new-styling"><h2 data-start="0" data-end="56">🌐 Cloudflare WARP &amp; Zero Trust Global Adaptor v1.0</h2>
<p data-start="57" data-end="206">Профессиональный высокопроизводительный shell-скрипт для развертывания и управления <strong data-start="141" data-end="160">Cloudflare WARP</strong> и <strong data-start="163" data-end="185">Zero Trust (Teams)</strong> на Linux-серверах.</p>
<p data-start="208" data-end="401">Инструмент оснащён интеллектуальным анализом аппаратных ресурсов, автоматической поддержкой нескольких языков через удалённые языковые пакеты и продвинутыми механизмами самовосстановления сети.</p>
<hr data-start="403" data-end="406">
<h2 data-start="408" data-end="434">🚀 Ключевые возможности</h2>
<h3 data-start="436" data-end="495">🧠 Интеллектуальное определение ресурсов оборудования</h3>
<p data-start="496" data-end="647">Скрипт автоматически анализирует количество ядер CPU и объём RAM (через Cgroup и физическую память) и применяет один из трёх оптимизированных профилей:</p>
<p data-start="649" data-end="675"><strong data-start="649" data-end="673">LOW (Память &lt; 300MB)</strong></p>
<ul data-start="676" data-end="823">
<li data-start="676" data-end="714">
<p data-start="678" data-end="714">Жёсткое ограничение памяти (100MB)</p>
</li>
<li data-start="715" data-end="735">
<p data-start="717" data-end="735">Отключённые логи</p>
</li>
<li data-start="736" data-end="773">
<p data-start="738" data-end="773">Увеличенные интервалы перезапуска</p>
</li>
<li data-start="774" data-end="823">
<p data-start="776" data-end="823">Максимальная стабильность для минимальных VPS</p>
</li>
</ul>
<p data-start="825" data-end="852"><strong data-start="825" data-end="850">MED (Память &lt; 1024MB)</strong></p>
<ul data-start="853" data-end="929">
<li data-start="853" data-end="899">
<p data-start="855" data-end="899">Балансированное ограничение памяти (256MB)</p>
</li>
<li data-start="900" data-end="929">
<p data-start="902" data-end="929">Логирование только ошибок</p>
</li>
</ul>
<p data-start="931" data-end="956"><strong data-start="931" data-end="954">HIGH (Память &gt; 1GB)</strong></p>
<ul data-start="957" data-end="1050">
<li data-start="957" data-end="993">
<p data-start="959" data-end="993">Режим высокой производительности</p>
</li>
<li data-start="994" data-end="1022">
<p data-start="996" data-end="1022">Ограничение памяти 512MB</p>
</li>
<li data-start="1023" data-end="1050">
<p data-start="1025" data-end="1050">Стандартное логирование</p>
</li>
</ul>
<hr data-start="1052" data-end="1055">
<h3 data-start="1057" data-end="1095">🌍 Универсальный языковой движок</h3>
<p data-start="1096" data-end="1229">Поддержка 10 основных языков через внешний языковой пакет на GitHub.<br data-start="1164" data-end="1167">
Переводы загружаются динамически при выборе языка при запуске:</p>
<ul data-start="1231" data-end="1387">
<li data-start="1231" data-end="1245">
<p data-start="1233" data-end="1245">Английский</p>
</li>
<li data-start="1246" data-end="1272">
<p data-start="1248" data-end="1272">Китайский (упрощённый)</p>
</li>
<li data-start="1273" data-end="1284">
<p data-start="1275" data-end="1284">Русский</p>
</li>
<li data-start="1285" data-end="1299">
<p data-start="1287" data-end="1299">Персидский</p>
</li>
<li data-start="1300" data-end="1312">
<p data-start="1302" data-end="1312">Японский</p>
</li>
<li data-start="1313" data-end="1326">
<p data-start="1315" data-end="1326">Испанский</p>
</li>
<li data-start="1327" data-end="1342">
<p data-start="1329" data-end="1342">Французский</p>
</li>
<li data-start="1343" data-end="1355">
<p data-start="1345" data-end="1355">Немецкий</p>
</li>
<li data-start="1356" data-end="1369">
<p data-start="1358" data-end="1369">Корейский</p>
</li>
<li data-start="1370" data-end="1387">
<p data-start="1372" data-end="1387">Португальский</p>
</li>
</ul>
<hr data-start="1389" data-end="1392">
<h2 data-start="1394" data-end="1417">🔄 Два режима работы</h2>
<h3 data-start="1419" data-end="1451">🌎 Глобальный режим (WARP)</h3>
<p data-start="1452" data-end="1582">Создаёт виртуальный сетевой интерфейс <strong data-start="1490" data-end="1508">CloudflareWARP</strong> для маршрутизации всего трафика системы через глобальную сеть Cloudflare.</p>
<h3 data-start="1584" data-end="1614">🔌 Прокси-режим (SOCKS5)</h3>
<p data-start="1615" data-end="1688">Запускает WARP как локальный прокси<br data-start="1650" data-end="1653">
(по умолчанию: <code data-start="1668" data-end="1685">127.0.0.1:40000</code>)</p>
<p data-start="1690" data-end="1789">Позволяет отдельным приложениям использовать туннель без изменения системной таблицы маршрутизации.</p>
<hr data-start="1791" data-end="1794">
<h2 data-start="1796" data-end="1831">🏢 Интеграция Zero Trust (Teams)</h2>
<h3 data-start="1833" data-end="1867">⚡ Автоматическая регистрация</h3>
<p data-start="1868" data-end="1955">Поддержка регистрации по <code data-start="1893" data-end="1905">TEAM_TOKEN</code> для полностью автоматизированных и headless-сред.</p>
<h3 data-start="1957" data-end="1991">🔐 Интерактивная регистрация</h3>
<p data-start="1992" data-end="2065">Пошаговая настройка с вводом имени организации и браузерной авторизацией.</p>
<h3 data-start="2067" data-end="2113">📜 Автоматическая установка сертификатов</h3>
<p data-start="2114" data-end="2249">Автоматическая загрузка и установка <strong data-start="2150" data-end="2172">Cloudflare Root CA</strong> в системное хранилище доверенных сертификатов для поддержки HTTPS-инспекции.</p>
<hr data-start="2251" data-end="2254">
<h2 data-start="2256" data-end="2292">🛣 Расширенная маршрутизация сети</h2>
<h3 data-start="2294" data-end="2335">🚫 Исключение локальных интерфейсов</h3>
<ul data-start="2336" data-end="2485">
<li data-start="2336" data-end="2392">
<p data-start="2338" data-end="2392">Автоматическое сканирование всех сетевых интерфейсов</p>
</li>
<li data-start="2393" data-end="2424">
<p data-start="2395" data-end="2424">Исключение их CIDR-подсетей</p>
</li>
<li data-start="2425" data-end="2485">
<p data-start="2427" data-end="2485">Предотвращение блокировки SSH и конфликтов маршрутизации</p>
</li>
</ul>
<h3 data-start="2487" data-end="2523">🌐 Разрешение Endpoint-адресов</h3>
<ul data-start="2524" data-end="2636">
<li data-start="2524" data-end="2586">
<p data-start="2526" data-end="2586">Динамическое определение IP-адресов Cloudflare (IPv4/IPv6)</p>
</li>
<li data-start="2587" data-end="2636">
<p data-start="2589" data-end="2636">Автоматическое добавление в список исключений</p>
</li>
</ul>
<h3 data-start="2638" data-end="2667">🔧 Патч приоритета IPv4</h3>
<p data-start="2668" data-end="2775">Атомарное изменение <code data-start="2688" data-end="2698">gai.conf</code> для приоритета IPv4 над IPv6<br data-start="2727" data-end="2730">
(полезно для dual-stack и IPv6-only серверов)</p>
<hr data-start="2777" data-end="2780">
<h2 data-start="2782" data-end="2824">🔁 Самовосстановление и оптимизация MTU</h2>
<h3 data-start="2826" data-end="2865">📡 Автоматическое определение MTU</h3>
<p data-start="2866" data-end="2987">Heuristic-тест ping (1420 → 1350 байт)<br data-start="2904" data-end="2907">
Позволяет определить максимально стабильный MTU и избежать фрагментации пакетов.</p>
<h3 data-start="2989" data-end="3016">🛠 Systemd-мониторинг</h3>
<p data-start="3017" data-end="3052">Фоновый watchdog-сервис <code data-start="3041" data-end="3051">warp-mgr</code>:</p>
<ul data-start="3054" data-end="3185">
<li data-start="3054" data-end="3115">
<p data-start="3056" data-end="3115">Проверяет соединение через <code data-start="3083" data-end="3113">cloudflare.com/cdn-cgi/trace</code></p>
</li>
<li data-start="3116" data-end="3185">
<p data-start="3118" data-end="3185">При 3 последовательных ошибках автоматически перезапускает сервис</p>
</li>
</ul>
<hr data-start="3187" data-end="3190">
<h2 data-start="3192" data-end="3223">🛠 Установка и использование</h2>
<p data-start="3225" data-end="3296">Выполните следующую команду в терминале Linux<br data-start="3270" data-end="3273">
(требуются права Root):</p>
<pre class="overflow-visible! px-0!" data-start="3298" data-end="3467"><div class="contain-inline-size rounded-2xl corner-superellipse/1.1 relative bg-token-sidebar-surface-primary"><div class="flex items-center text-token-text-secondary px-4 py-2 text-xs font-sans justify-between h-9 bg-token-sidebar-surface-primary select-none rounded-t-2xl corner-t-superellipse/1.1">bash</div><div class="sticky top-[calc(var(--sticky-padding-top)+9*var(--spacing))]"><div class="absolute end-0 bottom-0 flex h-9 items-center pe-2"><div class="bg-token-bg-elevated-secondary text-token-text-secondary flex items-center gap-4 rounded-sm px-2 font-sans text-xs"></div></div></div><div class="overflow-y-auto p-4" dir="ltr"><code class="whitespace-pre! language-bash"><span><span>wget -O warp.sh https://raw.githubusercontent.com/suanlihey/Cloudflare-WARP-and-Zero-Trust-For-Linux/refs/heads/main/warp.sh &amp;&amp; </span><span><span class="hljs-built_in">chmod</span></span><span> +x warp.sh &amp;&amp; ./warp.sh
</span></span></code></div></div></pre>
<hr data-start="3469" data-end="3472">
<h2 data-start="3474" data-end="3498">⚙ Возможности скрипта</h2>
<h3 data-start="3500" data-end="3520">🌐 Выбор языка</h3>
<p data-start="3521" data-end="3561">При первом запуске выберите язык (1–10).</p>
<h3 data-start="3563" data-end="3602">🚀 Интеллектуальное развертывание</h3>
<ul data-start="3603" data-end="3708">
<li data-start="3603" data-end="3629">
<p data-start="3605" data-end="3629">Установка зависимостей</p>
</li>
<li data-start="3630" data-end="3656">
<p data-start="3632" data-end="3656">Настройка WARP-клиента</p>
</li>
<li data-start="3657" data-end="3681">
<p data-start="3659" data-end="3681">Регистрация аккаунта</p>
</li>
<li data-start="3682" data-end="3708">
<p data-start="3684" data-end="3708">Применение оптимизаций</p>
</li>
</ul>
<h3 data-start="3710" data-end="3751">🧹 Полное удаление (Deep Uninstall)</h3>
<ul data-start="3752" data-end="3888">
<li data-start="3752" data-end="3784">
<p data-start="3754" data-end="3784">Полное удаление клиента WARP</p>
</li>
<li data-start="3785" data-end="3813">
<p data-start="3787" data-end="3813">Очистка systemd override</p>
</li>
<li data-start="3814" data-end="3843">
<p data-start="3816" data-end="3843">Восстановление <code data-start="3831" data-end="3841">gai.conf</code></p>
</li>
<li data-start="3844" data-end="3888">
<p data-start="3846" data-end="3888">Удаление всех конфигурационных каталогов</p>
</li>
</ul>
<hr data-start="3890" data-end="3893">
<h2 data-start="3895" data-end="3918">📁 Структура проекта</h2>
<ul data-start="3920" data-end="4103">
<li data-start="3920" data-end="3965">
<p data-start="3922" data-end="3965"><strong data-start="3922" data-end="3933">warp.sh</strong> — основной исполняемый модуль</p>
</li>
<li data-start="3966" data-end="4010">
<p data-start="3968" data-end="4010"><strong data-start="3968" data-end="3983">Language.sh</strong> — внешний языковой пакет</p>
</li>
<li data-start="4011" data-end="4103">
<p data-start="4013" data-end="4103"><strong data-start="4013" data-end="4025">warp-mgr</strong> — локальный инструмент управления<br data-start="4059" data-end="4062">
(устанавливается в <code data-start="4083" data-end="4100">/usr/local/bin/</code>)</p>
</li>
</ul>
<hr data-start="4105" data-end="4108">
<h2 data-start="4110" data-end="4142">🛡 Примечания по стабильности</h2>
<h3 data-start="4144" data-end="4166">🔌 Поддержка TUN</h3>
<p data-start="4167" data-end="4253">Скрипт проверяет наличие устройства TUN и при необходимости автоматически создаёт его.</p>
<h3 data-start="4255" data-end="4280">🧱 Изоляция сервиса</h3>
<p data-start="4281" data-end="4407">Используется <code data-start="4294" data-end="4317">Systemd override.conf</code> для строгого ограничения памяти Cloudflare WARP, предотвращая OOM-сбои других приложений.</p>
<hr data-start="4409" data-end="4412">
<h2 data-start="4414" data-end="4430">📄 Лицензия</h2>
<p data-start="4431" data-end="4559" data-is-last-node="" data-is-only-node="">Проект распространяется под лицензией <strong data-start="4469" data-end="4484">MIT License</strong>.<br data-start="4485" data-end="4488">
Используйте ответственно для оптимизации сети и повышения безопасности.</p></div>
