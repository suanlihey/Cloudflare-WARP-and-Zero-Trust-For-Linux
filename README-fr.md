<div class="flex w-full flex-col gap-1 empty:hidden first:pt-[1px]"><div class="markdown prose dark:prose-invert w-full wrap-break-word dark markdown-new-styling"><h2 data-start="0" data-end="51">Cloudflare WARP &amp; Zero Trust Global Adaptor v1.0</h2>
<p data-start="53" data-end="405">Un script shell professionnel et performant conçu pour le déploiement et la gestion sans effort de <strong data-start="152" data-end="171">Cloudflare WARP</strong> et <strong data-start="175" data-end="197">Zero Trust (Teams)</strong> sur des serveurs Linux. Cet outil propose une détection intelligente du matériel, un support multilingue automatisé via des packs de langues distants et des fonctionnalités avancées d’auto-réparation réseau.</p>
<hr data-start="407" data-end="410">
<h2 data-start="412" data-end="438">🚀 Fonctionnalités clés</h2>
<h3 data-start="440" data-end="478">Détection intelligente du matériel</h3>
<p data-start="479" data-end="643">Le script détecte automatiquement les ressources système (CPU et RAM) via l’analyse Cgroup et de la mémoire physique, et applique l’un des trois profils optimisés :</p>
<ul data-start="645" data-end="1030">
<li data-start="645" data-end="823">
<p data-start="647" data-end="823"><strong data-start="647" data-end="672">LOW (Mémoire &lt; 300MB)</strong> : Limitation agressive de la mémoire (100MB), logs désactivés et délais de redémarrage prolongés pour la stabilité maximale sur des VPS très légers.</p>
</li>
<li data-start="824" data-end="928">
<p data-start="826" data-end="928"><strong data-start="826" data-end="852">MED (Mémoire &lt; 1024MB)</strong> : Allocation équilibrée (256MB) et journalisation des erreurs uniquement.</p>
</li>
<li data-start="929" data-end="1030">
<p data-start="931" data-end="1030"><strong data-start="931" data-end="955">HIGH (Mémoire &gt; 1GB)</strong> : Mode haute performance avec 512MB de mémoire et journalisation standard.</p>
</li>
</ul>
<h3 data-start="1032" data-end="1064">Moteur multilingue universel</h3>
<p data-start="1065" data-end="1243">Supporte 10 langues majeures via un pack de langue externe hébergé sur GitHub. Le script télécharge et applique les traductions dynamiquement selon votre sélection au démarrage :</p>
<ul data-start="1245" data-end="1348">
<li data-start="1245" data-end="1348">
<p data-start="1247" data-end="1348">Anglais, Chinois simplifié, Russe, Persan, Japonais, Espagnol, Français, Allemand, Coréen, Portugais.</p>
</li>
</ul>
<h3 data-start="1350" data-end="1377">Modes de fonctionnement</h3>
<ul data-start="1378" data-end="1721">
<li data-start="1378" data-end="1527">
<p data-start="1380" data-end="1527"><strong data-start="1380" data-end="1402">Mode Global (WARP)</strong> : Crée une interface réseau virtuelle (CloudflareWARP) pour router tout le trafic système via le réseau global Cloudflare.</p>
</li>
<li data-start="1528" data-end="1721">
<p data-start="1530" data-end="1721"><strong data-start="1530" data-end="1553">Mode Proxy (SOCKS5)</strong> : Exécute WARP comme un proxy local (par défaut : 127.0.0.1:40000), permettant à certaines applications d’utiliser le tunnel sans modifier la table de routage système.</p>
</li>
</ul>
<h3 data-start="1723" data-end="1757">Intégration Zero Trust (Teams)</h3>
<ul data-start="1758" data-end="2183">
<li data-start="1758" data-end="1888">
<p data-start="1760" data-end="1888"><strong data-start="1760" data-end="1789">Enregistrement automatisé</strong> : Supporte l’enregistrement en un clic avec <code data-start="1834" data-end="1846">TEAM_TOKEN</code> pour les environnements sans interface.</p>
</li>
<li data-start="1889" data-end="2011">
<p data-start="1891" data-end="2011"><strong data-start="1891" data-end="1920">Enregistrement interactif</strong> : Configuration guidée avec le nom de l’organisation et authentification via navigateur.</p>
</li>
<li data-start="2012" data-end="2183">
<p data-start="2014" data-end="2183"><strong data-start="2014" data-end="2048">Automatisation des certificats</strong> : Télécharge et installe automatiquement le certificat racine Cloudflare dans le store de confiance pour supporter l’inspection HTTPS.</p>
</li>
</ul>
<h3 data-start="2185" data-end="2210">Routage réseau avancé</h3>
<ul data-start="2211" data-end="2671">
<li data-start="2211" data-end="2362">
<p data-start="2213" data-end="2362"><strong data-start="2213" data-end="2242">Exclusion multi-interface</strong> : Analyse toutes les interfaces locales et exclut leurs plages CIDR pour éviter les conflits SSH et de routage local.</p>
</li>
<li data-start="2363" data-end="2498">
<p data-start="2365" data-end="2498"><strong data-start="2365" data-end="2403">Résolution dynamique des endpoints</strong> : Résout automatiquement les IP Cloudflare (IPv4/IPv6) et les ajoute à la liste d’exclusion.</p>
</li>
<li data-start="2499" data-end="2671">
<p data-start="2501" data-end="2671"><strong data-start="2501" data-end="2524">Patch priorité IPv4</strong> : Modifie atomiquement <code data-start="2548" data-end="2558">gai.conf</code> pour prioriser IPv4 sur IPv6 si nécessaire, garantissant la stabilité sur serveurs dual-stack ou IPv6 seulement.</p>
</li>
</ul>
<h3 data-start="2673" data-end="2712">Auto-réparation et optimisation MTU</h3>
<ul data-start="2713" data-end="3075">
<li data-start="2713" data-end="2850">
<p data-start="2715" data-end="2850"><strong data-start="2715" data-end="2736">Découverte de MTU</strong> : Test heuristique de ping (1420 à 1350 octets) pour trouver la MTU maximale stable et éviter la fragmentation.</p>
</li>
<li data-start="2851" data-end="3075">
<p data-start="2853" data-end="3075"><strong data-start="2853" data-end="2877">Surveillance Systemd</strong> : Installe un watchdog en arrière-plan (<code data-start="2918" data-end="2928">warp-mgr</code>) qui vérifie la connectivité via <code data-start="2962" data-end="2992">cloudflare.com/cdn-cgi/trace</code>. Si la connexion échoue 3 fois consécutives, le service redémarre automatiquement.</p>
</li>
</ul>
<hr data-start="3077" data-end="3080">
<h2 data-start="3082" data-end="3114">🛠 Installation &amp; Utilisation</h2>
<p data-start="3115" data-end="3189">Exécuter la commande suivante sur un terminal Linux (droits root requis) :</p>
<pre class="overflow-visible! px-0!" data-start="3191" data-end="3360"><div class="contain-inline-size rounded-2xl corner-superellipse/1.1 relative bg-token-sidebar-surface-primary"><div class="flex items-center text-token-text-secondary px-4 py-2 text-xs font-sans justify-between h-9 bg-token-sidebar-surface-primary select-none rounded-t-2xl corner-t-superellipse/1.1">bash</div><div class="sticky top-[calc(var(--sticky-padding-top)+9*var(--spacing))]"><div class="absolute end-0 bottom-0 flex h-9 items-center pe-2"><div class="bg-token-bg-elevated-secondary text-token-text-secondary flex items-center gap-4 rounded-sm px-2 font-sans text-xs"></div></div></div><div class="overflow-y-auto p-4" dir="ltr"><code class="whitespace-pre! language-bash"><span><span>wget -O warp.sh https://raw.githubusercontent.com/suanlihey/Cloudflare-WARP-and-Zero-Trust-For-Linux/refs/heads/main/warp.sh &amp;&amp; </span><span><span class="hljs-built_in">chmod</span></span><span> +x warp.sh &amp;&amp; ./warp.sh
</span></span></code></div></div></pre>
<p data-start="3362" data-end="3385"><strong data-start="3362" data-end="3385">Options du script :</strong></p>
<ul data-start="3386" data-end="3770">
<li data-start="3386" data-end="3482">
<p data-start="3388" data-end="3482"><strong data-start="3388" data-end="3411">Sélection de langue</strong> : Choisissez votre langue préférée (1-10) lors du premier lancement.</p>
</li>
<li data-start="3483" data-end="3616">
<p data-start="3485" data-end="3616"><strong data-start="3485" data-end="3512">Déploiement intelligent</strong> : Installe les dépendances, configure le client WARP, gère les comptes et applique les optimisations.</p>
</li>
<li data-start="3617" data-end="3770">
<p data-start="3619" data-end="3770"><strong data-start="3619" data-end="3647">Désinstallation complète</strong> : Supprime totalement le client WARP, les overrides systemd, restaure <code data-start="3718" data-end="3728">gai.conf</code> et nettoie les dossiers de configuration.</p>
</li>
</ul>
<hr data-start="3772" data-end="3775">
<h2 data-start="3777" data-end="3802">📁 Structure du projet</h2>
<ul data-start="3803" data-end="4032">
<li data-start="3803" data-end="3848">
<p data-start="3805" data-end="3848"><code data-start="3805" data-end="3814">warp.sh</code> : moteur d’exécution principal.</p>
</li>
<li data-start="3849" data-end="3920">
<p data-start="3851" data-end="3920"><code data-start="3851" data-end="3864">Language.sh</code> : pack de langue externe pour le support multilingue.</p>
</li>
<li data-start="3921" data-end="4032">
<p data-start="3923" data-end="4032"><code data-start="3923" data-end="3933">warp-mgr</code> : outil local installé dans <code data-start="3962" data-end="3979">/usr/local/bin/</code> pour vérifier le statut et reconnecter manuellement.</p>
</li>
</ul>
<hr data-start="4034" data-end="4037">
<h2 data-start="4039" data-end="4063">🛡 Notes de stabilité</h2>
<ul data-start="4064" data-end="4396">
<li data-start="4064" data-end="4199">
<p data-start="4066" data-end="4199"><strong data-start="4066" data-end="4081">Support TUN</strong> : Le script vérifie la disponibilité du périphérique TUN et tente de corriger automatiquement les noeuds manquants.</p>
</li>
<li data-start="4200" data-end="4396">
<p data-start="4202" data-end="4396"><strong data-start="4202" data-end="4226">Isolation du service</strong> : Utilise <code data-start="4237" data-end="4260">systemd override.conf</code> pour garantir que WARP ne dépasse jamais sa limite mémoire, protégeant ainsi les autres applications du serveur contre les crashes OOM.</p>
</li>
</ul>
<hr data-start="4398" data-end="4401">
<h2 data-start="4403" data-end="4416">📄 Licence</h2>
<p data-start="4417" data-end="4523" data-is-last-node="" data-is-only-node="">Projet sous <strong data-start="4429" data-end="4444">MIT License</strong>. Utilisez-le de manière responsable pour l’optimisation réseau et la sécurité.</p></div></div>
