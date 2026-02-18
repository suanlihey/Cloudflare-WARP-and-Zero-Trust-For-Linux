<div class="flex w-full flex-col gap-1 empty:hidden first:pt-[1px]"><div class="markdown prose dark:prose-invert w-full wrap-break-word dark markdown-new-styling"><h2 data-start="0" data-end="56">🌐 Cloudflare WARP &amp; Zero Trust Global Adaptor v1.0</h2>
<p data-start="58" data-end="229"><strong data-start="58" data-end="227">Un script profesional y de alto rendimiento diseñado para la implementación y gestión sin complicaciones de Cloudflare WARP y Zero Trust (Teams) en servidores Linux.</strong></p>
<p data-start="231" data-end="395">Incluye detección inteligente de hardware, soporte multilenguaje automatizado mediante paquetes de idioma remotos y capacidades avanzadas de autorreparación de red.</p>
<hr data-start="397" data-end="400">
<h2 data-start="402" data-end="437">🚀 Características Principales</h2>
<h3 data-start="439" data-end="481">🧠 Detección Inteligente de Hardware</h3>
<p data-start="483" data-end="693">El script detecta automáticamente los recursos del sistema (núcleos de CPU y memoria RAM) mediante análisis de Cgroup y memoria física.<br data-start="618" data-end="621">
Según los recursos disponibles, aplica uno de tres perfiles optimizados:</p>
<ul data-start="695" data-end="1098">
<li data-start="695" data-end="881">
<p data-start="697" data-end="724"><strong data-start="697" data-end="722">LOW (Memoria &lt; 300MB)</strong></p>
<ul data-start="727" data-end="881">
<li data-start="727" data-end="765">
<p data-start="729" data-end="765">Límite agresivo de memoria (100MB)</p>
</li>
<li data-start="768" data-end="796">
<p data-start="770" data-end="796">Registros deshabilitados</p>
</li>
<li data-start="799" data-end="834">
<p data-start="801" data-end="834">Retrasos extendidos de reinicio</p>
</li>
<li data-start="837" data-end="881">
<p data-start="839" data-end="881">Máxima estabilidad para VPS muy pequeños</p>
</li>
</ul>
</li>
<li data-start="883" data-end="991">
<p data-start="885" data-end="913"><strong data-start="885" data-end="911">MED (Memoria &lt; 1024MB)</strong></p>
<ul data-start="916" data-end="991">
<li data-start="916" data-end="960">
<p data-start="918" data-end="960">Asignación equilibrada (límite de 256MB)</p>
</li>
<li data-start="963" data-end="991">
<p data-start="965" data-end="991">Solo registro de errores</p>
</li>
</ul>
</li>
<li data-start="993" data-end="1098">
<p data-start="995" data-end="1021"><strong data-start="995" data-end="1019">HIGH (Memoria &gt; 1GB)</strong></p>
<ul data-start="1024" data-end="1098">
<li data-start="1024" data-end="1052">
<p data-start="1026" data-end="1052">Modo de alto rendimiento</p>
</li>
<li data-start="1055" data-end="1074">
<p data-start="1057" data-end="1074">Límite de 512MB</p>
</li>
<li data-start="1077" data-end="1098">
<p data-start="1079" data-end="1098">Registro estándar</p>
</li>
</ul>
</li>
</ul>
<hr data-start="1100" data-end="1103">
<h3 data-start="1105" data-end="1140">🌍 Motor Universal de Idiomas</h3>
<p data-start="1142" data-end="1326">Compatible con <strong data-start="1157" data-end="1183">10 idiomas principales</strong> mediante un paquete de idioma externo alojado en GitHub.<br data-start="1240" data-end="1243">
El script descarga y aplica dinámicamente la traducción según tu selección inicial:</p>
<ul data-start="1328" data-end="1455">
<li data-start="1328" data-end="1338">
<p data-start="1330" data-end="1338">Inglés</p>
</li>
<li data-start="1339" data-end="1363">
<p data-start="1341" data-end="1363">Chino (Simplificado)</p>
</li>
<li data-start="1364" data-end="1372">
<p data-start="1366" data-end="1372">Ruso</p>
</li>
<li data-start="1373" data-end="1382">
<p data-start="1375" data-end="1382">Persa</p>
</li>
<li data-start="1383" data-end="1394">
<p data-start="1385" data-end="1394">Japonés</p>
</li>
<li data-start="1395" data-end="1406">
<p data-start="1397" data-end="1406">Español</p>
</li>
<li data-start="1407" data-end="1418">
<p data-start="1409" data-end="1418">Francés</p>
</li>
<li data-start="1419" data-end="1429">
<p data-start="1421" data-end="1429">Alemán</p>
</li>
<li data-start="1430" data-end="1441">
<p data-start="1432" data-end="1441">Coreano</p>
</li>
<li data-start="1442" data-end="1455">
<p data-start="1444" data-end="1455">Portugués</p>
</li>
</ul>
<hr data-start="1457" data-end="1460">
<h3 data-start="1462" data-end="1494">🔄 Modos de Operación Dual</h3>
<h4 data-start="1496" data-end="1524">🌐 Modo Global (WARP)</h4>
<p data-start="1525" data-end="1660">Crea una interfaz de red virtual (<strong data-start="1559" data-end="1577">CloudflareWARP</strong>) para enrutar todo el tráfico del sistema a través de la red global de Cloudflare.</p>
<h4 data-start="1662" data-end="1691">🧩 Modo Proxy (SOCKS5)</h4>
<p data-start="1692" data-end="1859">Ejecuta WARP como proxy local (por defecto: <code data-start="1736" data-end="1753">127.0.0.1:40000</code>), permitiendo que aplicaciones específicas utilicen el túnel sin modificar la tabla de rutas del sistema.</p>
<hr data-start="1861" data-end="1864">
<h3 data-start="1866" data-end="1909">🏢 Integración con Zero Trust (Teams)</h3>
<ul data-start="1911" data-end="2366">
<li data-start="1911" data-end="2065">
<p data-start="1913" data-end="2065"><strong data-start="1913" data-end="1938">Registro Automatizado</strong><br data-start="1938" data-end="1941">
Soporte para inscripción con un solo clic mediante <code data-start="1994" data-end="2006">TEAM_TOKEN</code>, ideal para entornos automatizados o sin interfaz gráfica.</p>
</li>
<li data-start="2067" data-end="2184">
<p data-start="2069" data-end="2184"><strong data-start="2069" data-end="2093">Registro Interactivo</strong><br data-start="2093" data-end="2096">
Configuración guiada del nombre de la organización y autenticación mediante navegador.</p>
</li>
<li data-start="2186" data-end="2366">
<p data-start="2188" data-end="2366"><strong data-start="2188" data-end="2222">Automatización de Certificados</strong><br data-start="2222" data-end="2225">
Descarga e instala automáticamente el certificado raíz de Cloudflare en el almacén de confianza del sistema para soportar inspección HTTPS.</p>
</li>
</ul>
<hr data-start="2368" data-end="2371">
<h3 data-start="2373" data-end="2410">🌐 Enrutamiento de Red Avanzado</h3>
<ul data-start="2412" data-end="2905">
<li data-start="2412" data-end="2571">
<p data-start="2414" data-end="2571"><strong data-start="2414" data-end="2442">Exclusión Multi-Interfaz</strong><br data-start="2442" data-end="2445">
Detecta todas las interfaces de red locales y excluye sus rangos CIDR para evitar bloqueos SSH y conflictos de enrutamiento.</p>
</li>
<li data-start="2573" data-end="2716">
<p data-start="2575" data-end="2716"><strong data-start="2575" data-end="2602">Resolución de Endpoints</strong><br data-start="2602" data-end="2605">
Resuelve dinámicamente las IP (IPv4/IPv6) de los endpoints de Cloudflare y las añade a la lista de exclusión.</p>
</li>
<li data-start="2718" data-end="2905">
<p data-start="2720" data-end="2905"><strong data-start="2720" data-end="2748">Parche de Prioridad IPv4</strong><br data-start="2748" data-end="2751">
Modifica de forma atómica <code data-start="2779" data-end="2789">gai.conf</code> para priorizar IPv4 sobre IPv6 cuando sea necesario, mejorando la estabilidad en servidores dual-stack o solo IPv6.</p>
</li>
</ul>
<hr data-start="2907" data-end="2910">
<h3 data-start="2912" data-end="2955">🛠 Autorreparación y Optimización MTU</h3>
<ul data-start="2957" data-end="3367">
<li data-start="2957" data-end="3123">
<p data-start="2959" data-end="3123"><strong data-start="2959" data-end="2989">Descubrimiento de Path MTU</strong><br data-start="2989" data-end="2992">
Ejecuta pruebas heurísticas con <code data-start="3026" data-end="3032">ping</code> (1420 a 1350 bytes) para determinar el MTU más estable y evitar fragmentación de paquetes.</p>
</li>
<li data-start="3125" data-end="3367">
<p data-start="3127" data-end="3280"><strong data-start="3127" data-end="3157">Monitor Systemd (warp-mgr)</strong><br data-start="3157" data-end="3160">
Instala un servicio watchdog en segundo plano que verifica conectividad mediante:<br data-start="3243" data-end="3246">
<code data-start="3248" data-end="3278">cloudflare.com/cdn-cgi/trace</code></p>
<p data-start="3284" data-end="3367">Si la conexión falla 3 veces consecutivas, el servicio se reinicia automáticamente.</p>
</li>
</ul>
<hr data-start="3369" data-end="3372">
<h2 data-start="3374" data-end="3399">🛠 Instalación y Uso</h2>
<p data-start="3401" data-end="3479">Ejecuta el siguiente comando en tu terminal Linux (requiere privilegios root):</p>
<pre class="overflow-visible! px-0!" data-start="3481" data-end="3650"><div class="contain-inline-size rounded-2xl corner-superellipse/1.1 relative bg-token-sidebar-surface-primary"><div class="flex items-center text-token-text-secondary px-4 py-2 text-xs font-sans justify-between h-9 bg-token-sidebar-surface-primary select-none rounded-t-2xl corner-t-superellipse/1.1">bash</div><div class="sticky top-[calc(var(--sticky-padding-top)+9*var(--spacing))]"><div class="absolute end-0 bottom-0 flex h-9 items-center pe-2"><div class="bg-token-bg-elevated-secondary text-token-text-secondary flex items-center gap-4 rounded-sm px-2 font-sans text-xs"></div></div></div><div class="overflow-y-auto p-4" dir="ltr"><code class="whitespace-pre! language-bash"><span><span>wget -O warp.sh https://raw.githubusercontent.com/suanlihey/Cloudflare-WARP-and-Zero-Trust-For-Linux/refs/heads/main/warp.sh &amp;&amp; </span><span><span class="hljs-built_in">chmod</span></span><span> +x warp.sh &amp;&amp; ./warp.sh
</span></span></code></div></div></pre>
<hr data-start="3652" data-end="3655">
<h2 data-start="3657" data-end="3683">⚙ Opciones del Script</h2>
<ul data-start="3685" data-end="4084">
<li data-start="3685" data-end="3775">
<p data-start="3687" data-end="3775"><strong data-start="3687" data-end="3710">Selección de Idioma</strong><br data-start="3710" data-end="3713">
Elige tu idioma preferido (1-10) al iniciar por primera vez.</p>
</li>
<li data-start="3777" data-end="3916">
<p data-start="3779" data-end="3916"><strong data-start="3779" data-end="3809">Implementación Inteligente</strong><br data-start="3809" data-end="3812">
Instala dependencias, configura el cliente WARP, crea cuentas y aplica optimizaciones automáticamente.</p>
</li>
<li data-start="3918" data-end="4084">
<p data-start="3920" data-end="4084"><strong data-start="3920" data-end="3947">Desinstalación Completa</strong><br data-start="3947" data-end="3950">
Elimina totalmente el cliente WARP, limpia overrides de systemd, restaura <code data-start="4026" data-end="4036">gai.conf</code> y borra todos los directorios de configuración.</p>
</li>
</ul>
<hr data-start="4086" data-end="4089">
<h2 data-start="4091" data-end="4122">📁 Estructura del Proyecto</h2>
<ul data-start="4124" data-end="4294">
<li data-start="4124" data-end="4168">
<p data-start="4126" data-end="4168"><code data-start="4126" data-end="4135">warp.sh</code> — Motor principal de ejecución</p>
</li>
<li data-start="4169" data-end="4215">
<p data-start="4171" data-end="4215"><code data-start="4171" data-end="4184">Language.sh</code> — Paquete externo de idiomas</p>
</li>
<li data-start="4216" data-end="4294">
<p data-start="4218" data-end="4294"><code data-start="4218" data-end="4228">warp-mgr</code> — Herramienta local de gestión (instalada en <code data-start="4274" data-end="4291">/usr/local/bin/</code>)</p>
</li>
</ul>
<hr data-start="4296" data-end="4299">
<h2 data-start="4301" data-end="4329">🛡 Notas de Estabilidad</h2>
<ul data-start="4331" data-end="4663">
<li data-start="4331" data-end="4451">
<p data-start="4333" data-end="4451"><strong data-start="4333" data-end="4348">Soporte TUN</strong><br data-start="4348" data-end="4351">
Verifica la disponibilidad del dispositivo TUN e intenta corregir automáticamente nodos faltantes.</p>
</li>
<li data-start="4453" data-end="4663">
<p data-start="4455" data-end="4663"><strong data-start="4455" data-end="4482">Aislamiento de Servicio</strong><br data-start="4482" data-end="4485">
Utiliza <code data-start="4495" data-end="4510">override.conf</code> de Systemd para asegurar que Cloudflare WARP no exceda su perfil de memoria asignado, protegiendo otras aplicaciones contra errores OOM (Out Of Memory).</p>
</li>
</ul>
<hr data-start="4665" data-end="4668">
<h2 data-start="4670" data-end="4686">📄 Licencia</h2>
<p data-start="4688" data-end="4813" data-is-last-node="" data-is-only-node="">Este proyecto se distribuye bajo la <strong data-start="4724" data-end="4740">Licencia MIT</strong>.<br data-start="4741" data-end="4744">
Utilízalo de manera responsable para optimización y seguridad de red.</p></div></div>
