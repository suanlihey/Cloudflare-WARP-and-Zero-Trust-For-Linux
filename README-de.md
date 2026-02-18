<div class="flex w-full flex-col gap-1 empty:hidden first:pt-[1px]"><div class="markdown prose dark:prose-invert w-full wrap-break-word dark markdown-new-styling"><h2 data-start="0" data-end="69">Cloudflare WARP &amp; Zero Trust Global Adaptor v1.0 – Deutsch Version</h2>
<p data-start="71" data-end="416">Ein professionelles, leistungsstarkes Shell-Skript für die nahtlose Bereitstellung und Verwaltung von <strong data-start="173" data-end="192">Cloudflare WARP</strong> und <strong data-start="197" data-end="219">Zero Trust (Teams)</strong> auf Linux-Servern. Dieses Tool verfügt über intelligente Hardware-Erkennung, automatisierte Mehrsprachunterstützung über Remote-Sprachpakete und fortschrittliche Netzwerk-Selbstheilungsfunktionen.</p>
<hr data-start="418" data-end="421">
<h2 data-start="423" data-end="444">🚀 Hauptfunktionen</h2>
<h3 data-start="446" data-end="481">Intelligente Hardware-Erkennung</h3>
<p data-start="482" data-end="659">Das Skript erkennt automatisch Systemressourcen (CPU-Kerne und RAM) über <strong data-start="555" data-end="565">Cgroup</strong> und physische Speicheranalyse. Anschließend wendet es eines von drei optimierten Profilen an:</p>
<ul data-start="661" data-end="1031">
<li data-start="661" data-end="831">
<p data-start="663" data-end="831"><strong data-start="663" data-end="690">LOW (Speicher &lt; 300MB):</strong> Aggressives Memory-Limiting (100MB), deaktivierte Logs, verlängerte Neustart-Intervalle für maximale Stabilität auf kleinen VPS-Instanzen.</p>
</li>
<li data-start="832" data-end="934">
<p data-start="834" data-end="934"><strong data-start="834" data-end="862">MED (Speicher &lt; 1024MB):</strong> Ausgewogene Ressourcenzuweisung (256MB Limit) und Fehler-Logging nur.</p>
</li>
<li data-start="935" data-end="1031">
<p data-start="937" data-end="1031"><strong data-start="937" data-end="963">HIGH (Speicher &gt; 1GB):</strong> Hochleistungsmodus mit 512MB Memory-Zuweisung und Standard-Logging.</p>
</li>
</ul>
<hr data-start="1033" data-end="1036">
<h3 data-start="1038" data-end="1067">Universelle Sprach-Engine</h3>
<p data-start="1068" data-end="1218">Unterstützt 10 Hauptsprachen über ein externes Sprachpaket auf GitHub. Das Skript lädt Übersetzungen dynamisch basierend auf Ihrer Auswahl beim Start:</p>
<ul data-start="1220" data-end="1350">
<li data-start="1220" data-end="1350">
<p data-start="1222" data-end="1350">Englisch, Chinesisch (vereinfacht), Russisch, Persisch, Japanisch, Spanisch, Französisch, Deutsch, Koreanisch und Portugiesisch.</p>
</li>
</ul>
<hr data-start="1352" data-end="1355">
<h3 data-start="1357" data-end="1378">Zwei Betriebsmodi</h3>
<ul data-start="1379" data-end="1724">
<li data-start="1379" data-end="1546">
<p data-start="1381" data-end="1546"><strong data-start="1381" data-end="1404">Global Mode (WARP):</strong> Erstellt ein virtuelles Netzwerk-Interface (<strong data-start="1449" data-end="1467">CloudflareWARP</strong>) und leitet den gesamten Systemverkehr über das globale Cloudflare-Netzwerk.</p>
</li>
<li data-start="1547" data-end="1724">
<p data-start="1549" data-end="1724"><strong data-start="1549" data-end="1573">Proxy Mode (SOCKS5):</strong> Läuft als lokaler Proxy (Standard: 127.0.0.1:40000), sodass bestimmte Anwendungen den Tunnel nutzen können, ohne die System-Routing-Tabelle zu ändern.</p>
</li>
</ul>
<hr data-start="1726" data-end="1729">
<h3 data-start="1731" data-end="1765">Zero Trust (Teams) Integration</h3>
<ul data-start="1766" data-end="2184">
<li data-start="1766" data-end="1903">
<p data-start="1768" data-end="1903"><strong data-start="1768" data-end="1799">Automatische Registrierung:</strong> Unterstützt Ein-Klick-Registrierung über <strong data-start="1841" data-end="1855">TEAM_TOKEN</strong> für Headless- oder automatisierte Umgebungen.</p>
</li>
<li data-start="1904" data-end="2028">
<p data-start="1906" data-end="2028"><strong data-start="1906" data-end="1936">Interaktive Registrierung:</strong> Geführte Einrichtung für Teamnamen (Organisation) und Browser-basierte Authentifizierung.</p>
</li>
<li data-start="2029" data-end="2184">
<p data-start="2031" data-end="2184"><strong data-start="2031" data-end="2057">Zertifikatsautomation:</strong> Lädt das Cloudflare Root-CA-Zertifikat herunter und installiert es automatisch in den System-Trust-Store für HTTPS-Inspektion.</p>
</li>
</ul>
<hr data-start="2186" data-end="2189">
<h3 data-start="2191" data-end="2233">Erweiterte Netzwerk-Routing-Funktionen</h3>
<ul data-start="2234" data-end="2707">
<li data-start="2234" data-end="2399">
<p data-start="2236" data-end="2399"><strong data-start="2236" data-end="2267">Multi-Interface-Ausschluss:</strong> Scannt alle lokalen Netzwerkinterfaces und schließt deren CIDR-Bereiche aus, um SSH-Lockouts und Routing-Konflikte zu verhindern.</p>
</li>
<li data-start="2400" data-end="2532">
<p data-start="2402" data-end="2532"><strong data-start="2402" data-end="2425">Endpoint-Auflösung:</strong> Dynamische Auflösung von Cloudflare-Endpoint-IP-Adressen (IPv4/IPv6) und Hinzufügen zur Ausschlussliste.</p>
</li>
<li data-start="2533" data-end="2707">
<p data-start="2535" data-end="2707"><strong data-start="2535" data-end="2560">IPv4-Prioritätspatch:</strong> Ändert atomar <strong data-start="2575" data-end="2587">gai.conf</strong>, um IPv4 bei Bedarf gegenüber IPv6 zu priorisieren, was Stabilität auf Dual-Stack- oder IPv6-Only-Servern sicherstellt.</p>
</li>
</ul>
<hr data-start="2709" data-end="2712">
<h3 data-start="2714" data-end="2749">Selbstheilung &amp; MTU-Optimierung</h3>
<ul data-start="2750" data-end="3142">
<li data-start="2750" data-end="2923">
<p data-start="2752" data-end="2923"><strong data-start="2752" data-end="2775">Path MTU Discovery:</strong> Führt heuristische Ping-Tests (1420 bis 1350 Bytes) durch, um die größte stabile MTU für Ihr Netzwerk zu finden und Fragmentierung zu verhindern.</p>
</li>
<li data-start="2924" data-end="3142">
<p data-start="2926" data-end="3142"><strong data-start="2926" data-end="2946">Systemd-Monitor:</strong> Installiert einen Hintergrund-Wächter (<strong data-start="2986" data-end="2998">warp-mgr</strong>), der die Verbindung zu <code data-start="3023" data-end="3053">cloudflare.com/cdn-cgi/trace</code> überprüft. Bei 3 aufeinanderfolgenden Fehlern wird der Dienst automatisch neu gestartet.</p>
</li>
</ul>
<hr data-start="3144" data-end="3147">
<h2 data-start="3149" data-end="3177">🛠 Installation &amp; Nutzung</h2>
<p data-start="3178" data-end="3268">Führen Sie folgendes Kommando auf Ihrem Linux-Terminal aus (<strong data-start="3238" data-end="3266">Root-Rechte erforderlich</strong>):</p>
<pre class="overflow-visible! px-0!" data-start="3270" data-end="3439"><div class="contain-inline-size rounded-2xl corner-superellipse/1.1 relative bg-token-sidebar-surface-primary"><div class="flex items-center text-token-text-secondary px-4 py-2 text-xs font-sans justify-between h-9 bg-token-sidebar-surface-primary select-none rounded-t-2xl corner-t-superellipse/1.1">bash</div><div class="sticky top-[calc(var(--sticky-padding-top)+9*var(--spacing))]"><div class="absolute end-0 bottom-0 flex h-9 items-center pe-2"><div class="bg-token-bg-elevated-secondary text-token-text-secondary flex items-center gap-4 rounded-sm px-2 font-sans text-xs"></div></div></div><div class="overflow-y-auto p-4" dir="ltr"><code class="whitespace-pre! language-bash"><span><span>wget -O warp.sh https://raw.githubusercontent.com/suanlihey/Cloudflare-WARP-and-Zero-Trust-For-Linux/refs/heads/main/warp.sh &amp;&amp; </span><span><span class="hljs-built_in">chmod</span></span><span> +x warp.sh &amp;&amp; ./warp.sh
</span></span></code></div></div></pre>
<ul data-start="3441" data-end="3846">
<li data-start="3441" data-end="3524">
<p data-start="3443" data-end="3524"><strong data-start="3443" data-end="3461">Sprachauswahl:</strong> Wählen Sie beim ersten Start Ihre bevorzugte Sprache (1–10).</p>
</li>
<li data-start="3525" data-end="3669">
<p data-start="3527" data-end="3669"><strong data-start="3527" data-end="3559">Intelligente Bereitstellung:</strong> Installiert Abhängigkeiten, richtet den WARP-Client ein, konfiguriert Accounts und wendet Optimierungen an.</p>
</li>
<li data-start="3670" data-end="3846">
<p data-start="3672" data-end="3846"><strong data-start="3672" data-end="3703">Tiefgehende Deinstallation:</strong> Entfernt den WARP-Client vollständig, löscht Systemd-Overrides, stellt <strong data-start="3775" data-end="3787">gai.conf</strong> wieder her und bereinigt alle Konfigurationsverzeichnisse.</p>
</li>
</ul>
<hr data-start="3848" data-end="3851">
<h2 data-start="3853" data-end="3874">📁 Projektstruktur</h2>
<ul data-start="3875" data-end="4111">
<li data-start="3875" data-end="3921">
<p data-start="3877" data-end="3921"><code data-start="3877" data-end="3886">warp.sh</code>: Hauptskript für die Ausführung.</p>
</li>
<li data-start="3922" data-end="3990">
<p data-start="3924" data-end="3990"><code data-start="3924" data-end="3937">Language.sh</code>: Externes Sprachpaket für Mehrsprachunterstützung.</p>
</li>
<li data-start="3991" data-end="4111">
<p data-start="3993" data-end="4111"><code data-start="3993" data-end="4003">warp-mgr</code>: Lokales Management-Tool (installiert unter <code data-start="4048" data-end="4065">/usr/local/bin/</code>) für Statusprüfungen und manuelles Reconnect.</p>
</li>
</ul>
<hr data-start="4113" data-end="4116">
<h2 data-start="4118" data-end="4143">🛡 Stabilitäts-Notizen</h2>
<ul data-start="4144" data-end="4467">
<li data-start="4144" data-end="4271">
<p data-start="4146" data-end="4271"><strong data-start="4146" data-end="4168">TUN-Unterstützung:</strong> Prüft die Verfügbarkeit des TUN-Devices und versucht fehlende Device-Nodes automatisch zu erstellen.</p>
</li>
<li data-start="4272" data-end="4467">
<p data-start="4274" data-end="4467"><strong data-start="4274" data-end="4296">Service-Isolation:</strong> Nutzt Systemd <code data-start="4311" data-end="4326">override.conf</code>, um sicherzustellen, dass Cloudflare WARP die zugewiesene Speichergrenze nie überschreitet und andere Anwendungen vor OOM-Abstürzen schützt.</p>
</li>
</ul>
<hr data-start="4469" data-end="4472">
<h2 data-start="4474" data-end="4486">📄 Lizenz</h2>
<p data-start="4487" data-end="4625" data-is-last-node="" data-is-only-node="">Dieses Projekt ist unter der <strong data-start="4516" data-end="4530">MIT-Lizenz</strong> veröffentlicht. Verwenden Sie es verantwortungsbewusst zur Netzwerkoptimierung und Sicherheit.</p></div></div>
