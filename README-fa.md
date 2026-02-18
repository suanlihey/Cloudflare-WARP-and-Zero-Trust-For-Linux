<div class="flex w-full flex-col gap-1 empty:hidden first:pt-[1px]"><div class="markdown prose dark:prose-invert w-full wrap-break-word dark markdown-new-styling"><h2 data-start="0" data-end="70">🌐 اسکریپت حرفه‌ای Cloudflare WARP &amp; Zero Trust Global Adaptor v1.0</h2>
<p data-start="72" data-end="334">ابزاری قدرتمند و حرفه‌ای برای نصب، مدیریت و بهینه‌سازی <strong data-start="127" data-end="146">Cloudflare WARP</strong> و <strong data-start="149" data-end="171">Zero Trust (Teams)</strong> بر روی سرورهای لینوکس.<br data-start="194" data-end="197">
این اسکریپت با تشخیص هوشمند سخت‌افزار، پشتیبانی چندزبانه پویا و قابلیت‌های خودترمیم شبکه طراحی شده تا تجربه‌ای پایدار و خودکار ارائه دهد.</p>
<hr data-start="336" data-end="339">
<h2 data-start="341" data-end="362">🚀 ویژگی‌های کلیدی</h2>
<h3 data-start="364" data-end="393">🧠 تشخیص هوشمند سخت‌افزار</h3>
<p data-start="395" data-end="565">اسکریپت به‌صورت خودکار منابع سیستم (تعداد هسته CPU و میزان RAM) را با استفاده از Cgroup و بررسی حافظه فیزیکی شناسایی می‌کند و یکی از سه پروفایل بهینه زیر را اعمال می‌کند:</p>
<ul data-start="567" data-end="869">
<li data-start="567" data-end="708">
<p data-start="569" data-end="708"><strong data-start="569" data-end="596">LOW (کمتر از 300MB RAM)</strong><br data-start="596" data-end="599">
محدودیت حافظه 100MB، غیرفعال‌سازی لاگ‌ها، افزایش فاصله ری‌استارت برای پایداری حداکثری روی VPSهای بسیار ضعیف</p>
</li>
<li data-start="710" data-end="784">
<p data-start="712" data-end="784"><strong data-start="712" data-end="737">MED (کمتر از 1GB RAM)</strong><br data-start="737" data-end="740">
تخصیص متعادل حافظه (256MB) و ثبت فقط خطاها</p>
</li>
<li data-start="786" data-end="869">
<p data-start="788" data-end="869"><strong data-start="788" data-end="813">HIGH (بیش از 1GB RAM)</strong><br data-start="813" data-end="816">
حالت عملکرد بالا با 512MB حافظه و ثبت لاگ استاندارد</p>
</li>
</ul>
<hr data-start="871" data-end="874">
<h3 data-start="876" data-end="905">🌍 موتور چندزبانه پیشرفته</h3>
<p data-start="907" data-end="988">پشتیبانی از ۱۰ زبان اصلی جهان از طریق فایل زبان خارجی که از GitHub دریافت می‌شود:</p>
<ul data-start="990" data-end="1110">
<li data-start="990" data-end="1001">
<p data-start="992" data-end="1001">انگلیسی</p>
</li>
<li data-start="1002" data-end="1021">
<p data-start="1004" data-end="1021">چینی (ساده‌شده)</p>
</li>
<li data-start="1022" data-end="1030">
<p data-start="1024" data-end="1030">روسی</p>
</li>
<li data-start="1031" data-end="1040">
<p data-start="1033" data-end="1040">فارسی</p>
</li>
<li data-start="1041" data-end="1050">
<p data-start="1043" data-end="1050">ژاپنی</p>
</li>
<li data-start="1051" data-end="1064">
<p data-start="1053" data-end="1064">اسپانیایی</p>
</li>
<li data-start="1065" data-end="1076">
<p data-start="1067" data-end="1076">فرانسوی</p>
</li>
<li data-start="1077" data-end="1087">
<p data-start="1079" data-end="1087">آلمانی</p>
</li>
<li data-start="1088" data-end="1098">
<p data-start="1090" data-end="1098">کره‌ای</p>
</li>
<li data-start="1099" data-end="1110">
<p data-start="1101" data-end="1110">پرتغالی</p>
</li>
</ul>
<p data-start="1112" data-end="1192">در اجرای اول، زبان دلخواه انتخاب شده و فایل ترجمه به‌صورت خودکار بارگیری می‌شود.</p>
<hr data-start="1194" data-end="1197">
<h2 data-start="1199" data-end="1221">🔄 حالت‌های عملیاتی</h2>
<h3 data-start="1223" data-end="1248">🌐 حالت Global (WARP)</h3>
<p data-start="1250" data-end="1347">ایجاد اینترفیس مجازی شبکه (CloudflareWARP) و هدایت کل ترافیک سیستم از طریق شبکه جهانی Cloudflare.</p>
<h3 data-start="1349" data-end="1375">🧦 حالت Proxy (SOCKS5)</h3>
<p data-start="1377" data-end="1511">اجرای WARP به‌عنوان پراکسی محلی (پیش‌فرض: <code data-start="1419" data-end="1436">127.0.0.1:40000</code>)<br data-start="1437" data-end="1440">
امکان استفاده انتخابی برنامه‌ها از تونل بدون تغییر جدول مسیریابی سیستم.</p>
<hr data-start="1513" data-end="1516">
<h2 data-start="1518" data-end="1555">🏢 یکپارچه‌سازی Zero Trust (Teams)</h2>
<h3 data-start="1557" data-end="1578">🔐 ثبت‌نام خودکار</h3>
<p data-start="1580" data-end="1668">پشتیبانی از ثبت یک‌مرحله‌ای با استفاده از <code data-start="1622" data-end="1634">TEAM_TOKEN</code> برای محیط‌های Headless یا خودکار.</p>
<h3 data-start="1670" data-end="1687">🧭 ثبت تعاملی</h3>
<p data-start="1689" data-end="1762">راهنمای گام‌به‌گام برای وارد کردن نام سازمان و احراز هویت از طریق مرورگر.</p>
<h3 data-start="1764" data-end="1787">📜 نصب خودکار گواهی</h3>
<p data-start="1789" data-end="1879">دانلود و نصب خودکار Cloudflare Root CA در trust store سیستم برای پشتیبانی از بازرسی HTTPS.</p>
<hr data-start="1881" data-end="1884">
<h2 data-start="1886" data-end="1920">🛣 مدیریت پیشرفته مسیریابی شبکه</h2>
<h3 data-start="1922" data-end="1947">🚫 جلوگیری از قطع SSH</h3>
<p data-start="1949" data-end="2068">اسکریپت تمام اینترفیس‌های شبکه را اسکن کرده و محدوده CIDR آن‌ها را از تونل مستثنی می‌کند تا از قفل شدن SSH جلوگیری شود.</p>
<h3 data-start="2070" data-end="2091">🌎 تشخیص Endpoint</h3>
<p data-start="2093" data-end="2172">حل خودکار IPهای IPv4 و IPv6 مربوط به Cloudflare و افزودن آن‌ها به لیست استثناء.</p>
<h3 data-start="2174" data-end="2195">🔧 پچ اولویت IPv4</h3>
<p data-start="2197" data-end="2303">ویرایش اتمیک فایل <code data-start="2215" data-end="2225">gai.conf</code> برای اولویت دادن به IPv4 در صورت نیاز، مناسب سرورهای Dual-stack یا IPv6-only.</p>
<hr data-start="2305" data-end="2308">
<h2 data-start="2310" data-end="2342">🛠 خودترمیمی و بهینه‌سازی MTU</h2>
<h3 data-start="2344" data-end="2384">📏 کشف MTU مسیر (Path MTU Discovery)</h3>
<p data-start="2386" data-end="2487">اجرای تست Ping هوشمند بین 1420 تا 1350 بایت برای یافتن بیشترین MTU پایدار و جلوگیری از Fragmentation.</p>
<h3 data-start="2489" data-end="2511">🔍 مانیتور Systemd</h3>
<p data-start="2513" data-end="2682">نصب watchdog پس‌زمینه (<code data-start="2536" data-end="2546">warp-mgr</code>) که اتصال را از طریق<br data-start="2567" data-end="2570">
<code data-start="2570" data-end="2600">cloudflare.com/cdn-cgi/trace</code> بررسی می‌کند.<br data-start="2614" data-end="2617">
در صورت ۳ بار شکست متوالی، سرویس به‌صورت خودکار ری‌استارت می‌شود.</p>
<hr data-start="2684" data-end="2687">
<h2 data-start="2689" data-end="2708">🧰 نصب و استفاده</h2>
<p data-start="2710" data-end="2773">دستور زیر را در ترمینال لینوکس اجرا کنید (نیازمند دسترسی Root):</p>
<pre class="overflow-visible! px-0!" data-start="2775" data-end="2944"><div class="contain-inline-size rounded-2xl corner-superellipse/1.1 relative bg-token-sidebar-surface-primary"><div class="flex items-center text-token-text-secondary px-4 py-2 text-xs font-sans justify-between h-9 bg-token-sidebar-surface-primary select-none rounded-t-2xl corner-t-superellipse/1.1">bash</div><div class="sticky top-[calc(var(--sticky-padding-top)+9*var(--spacing))]"><div class="absolute end-0 bottom-0 flex h-9 items-center pe-2"><div class="bg-token-bg-elevated-secondary text-token-text-secondary flex items-center gap-4 rounded-sm px-2 font-sans text-xs"></div></div></div><div class="overflow-y-auto p-4" dir="ltr"><code class="whitespace-pre! language-bash"><span><span>wget -O warp.sh https://raw.githubusercontent.com/suanlihey/Cloudflare-WARP-and-Zero-Trust-For-Linux/refs/heads/main/warp.sh &amp;&amp; </span><span><span class="hljs-built_in">chmod</span></span><span> +x warp.sh &amp;&amp; ./warp.sh
</span></span></code></div></div></pre>
<hr data-start="2946" data-end="2949">
<h2 data-start="2951" data-end="2973">⚙ گزینه‌های اسکریپت</h2>
<h3 data-start="2975" data-end="2995">🌐 انتخاب زبان</h3>
<p data-start="2996" data-end="3053">در اولین اجرا، زبان موردنظر خود را (1 تا 10) انتخاب کنید.</p>
<h3 data-start="3055" data-end="3074">🚀 نصب هوشمند</h3>
<p data-start="3075" data-end="3155">نصب وابستگی‌ها، راه‌اندازی کلاینت WARP، تنظیم حساب کاربری و اعمال بهینه‌سازی‌ها.</p>
<h3 data-start="3157" data-end="3191">🗑 حذف کامل (Deep Uninstall)</h3>
<p data-start="3192" data-end="3284">حذف کامل WARP، بازگردانی <code data-start="3217" data-end="3227">gai.conf</code>، پاکسازی تنظیمات systemd و حذف تمام دایرکتوری‌های مرتبط.</p>
<hr data-start="3286" data-end="3289">
<h2 data-start="3291" data-end="3309">📂 ساختار پروژه</h2>
<ul data-start="3311" data-end="3438">
<li data-start="3311" data-end="3342">
<p data-start="3313" data-end="3342"><code data-start="3313" data-end="3322">warp.sh</code> — موتور اصلی اجرا</p>
</li>
<li data-start="3343" data-end="3378">
<p data-start="3345" data-end="3378"><code data-start="3345" data-end="3358">Language.sh</code> — فایل زبان خارجی</p>
</li>
<li data-start="3379" data-end="3438">
<p data-start="3381" data-end="3438"><code data-start="3381" data-end="3391">warp-mgr</code> — ابزار مدیریت محلی (نصب در <code data-start="3420" data-end="3437">/usr/local/bin/</code>)</p>
</li>
</ul>
<hr data-start="3440" data-end="3443">
<h2 data-start="3445" data-end="3463">🛡 نکات پایداری</h2>
<h3 data-start="3465" data-end="3483">🔌 بررسی TUN</h3>
<p data-start="3484" data-end="3570">اسکریپت وجود دستگاه TUN را بررسی کرده و در صورت نیاز گره‌های دستگاه را بازسازی می‌کند.</p>
<h3 data-start="3572" data-end="3598">🧱 ایزوله‌سازی سرویس</h3>
<p data-start="3599" data-end="3702">استفاده از <code data-start="3610" data-end="3633">Systemd override.conf</code> برای محدودسازی مصرف حافظه WARP و جلوگیری از OOM سایر سرویس‌های سرور.</p>
<hr data-start="3704" data-end="3707">
<h2 data-start="3709" data-end="3719">📄 مجوز</h2>
<p data-start="3721" data-end="3846" data-is-last-node="" data-is-only-node="">این پروژه تحت مجوز <strong data-start="3740" data-end="3755">MIT License</strong> منتشر شده است.<br data-start="3770" data-end="3773">
لطفاً از آن به‌صورت مسئولانه برای بهینه‌سازی و امنیت شبکه استفاده نمایید.</p></div></div>
