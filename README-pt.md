<div class="flex w-full flex-col gap-1 empty:hidden first:pt-[1px]"><div class="markdown prose dark:prose-invert w-full wrap-break-word dark markdown-new-styling">
<hr data-start="63" data-end="66">
<h2 data-start="68" data-end="119">Cloudflare WARP &amp; Zero Trust Global Adaptor v1.0</h2>
<p data-start="121" data-end="459">Um script shell profissional e de alto desempenho projetado para implantação e gerenciamento contínuo do <strong data-start="226" data-end="245">Cloudflare WARP</strong> e <strong data-start="248" data-end="270">Zero Trust (Teams)</strong> em servidores Linux. Esta ferramenta apresenta detecção inteligente de hardware, suporte multilíngue automático via pacotes de idiomas remotos e recursos avançados de autocorreção de rede.</p>
<hr data-start="461" data-end="464">
<h2 data-start="466" data-end="491">🚀 Principais Recursos</h2>
<h3 data-start="493" data-end="529">Detecção Inteligente de Hardware</h3>
<p data-start="530" data-end="692">O script detecta automaticamente os recursos do sistema (núcleos de CPU e RAM) usando Cgroup e análise de memória física, aplicando um dos três perfis otimizados:</p>
<ul data-start="694" data-end="1061">
<li data-start="694" data-end="858">
<p data-start="696" data-end="858"><strong data-start="696" data-end="721">LOW (Memória &lt; 300MB)</strong>: Limite de memória agressivo (100MB), logs desativados e atraso estendido para reinício, garantindo máxima estabilidade em VPS pequenas.</p>
</li>
<li data-start="859" data-end="963">
<p data-start="861" data-end="963"><strong data-start="861" data-end="887">MED (Memória &lt; 1024MB)</strong>: Alocação equilibrada de recursos (limite de 256MB) e logs apenas de erros.</p>
</li>
<li data-start="964" data-end="1061">
<p data-start="966" data-end="1061"><strong data-start="966" data-end="990">HIGH (Memória &gt; 1GB)</strong>: Modo de alto desempenho com 512MB de memória permitida e logs padrão.</p>
</li>
</ul>
<hr data-start="1063" data-end="1066">
<h3 data-start="1068" data-end="1098">Motor Universal de Idiomas</h3>
<p data-start="1099" data-end="1279">Suporta 10 idiomas principais via um pacote de idiomas externo hospedado no GitHub. O script busca e aplica traduções dinamicamente com base na seleção do usuário na inicialização:</p>
<ul data-start="1281" data-end="1384">
<li data-start="1281" data-end="1384">
<p data-start="1283" data-end="1384">Inglês, Chinês (Simplificado), Russo, Persa, Japonês, Espanhol, Francês, Alemão, Coreano e Português.</p>
</li>
</ul>
<hr data-start="1386" data-end="1389">
<h3 data-start="1391" data-end="1419">Modos de Operação Duplos</h3>
<ul data-start="1420" data-end="1756">
<li data-start="1420" data-end="1567">
<p data-start="1422" data-end="1567"><strong data-start="1422" data-end="1444">Modo Global (WARP)</strong>: Cria uma interface de rede virtual (CloudflareWARP) para rotear todo o tráfego do sistema pela rede global da Cloudflare.</p>
</li>
<li data-start="1568" data-end="1756">
<p data-start="1570" data-end="1756"><strong data-start="1570" data-end="1593">Modo Proxy (SOCKS5)</strong>: Executa WARP como proxy local (padrão: <code data-start="1634" data-end="1651">127.0.0.1:40000</code>), permitindo que aplicativos específicos utilizem o túnel sem alterar a tabela de roteamento do sistema.</p>
</li>
</ul>
<hr data-start="1758" data-end="1761">
<h3 data-start="1763" data-end="1796">Integração Zero Trust (Teams)</h3>
<ul data-start="1797" data-end="2186">
<li data-start="1797" data-end="1915">
<p data-start="1799" data-end="1915"><strong data-start="1799" data-end="1824">Registro Automatizado</strong>: Suporta registro com um clique usando <code data-start="1864" data-end="1876">TEAM_TOKEN</code> para ambientes headless/automatizados.</p>
</li>
<li data-start="1916" data-end="2026">
<p data-start="1918" data-end="2026"><strong data-start="1918" data-end="1941">Registro Interativo</strong>: Configuração guiada para Nome da Equipe (Organização) e autenticação via navegador.</p>
</li>
<li data-start="2027" data-end="2186">
<p data-start="2029" data-end="2186"><strong data-start="2029" data-end="2058">Automação de Certificados</strong>: Baixa e instala automaticamente a <strong data-start="2094" data-end="2116">Cloudflare Root CA</strong> no repositório de confiança do sistema para suporte à inspeção HTTPS.</p>
</li>
</ul>
<hr data-start="2188" data-end="2191">
<h3 data-start="2193" data-end="2224">Roteamento Avançado de Rede</h3>
<ul data-start="2225" data-end="2702">
<li data-start="2225" data-end="2407">
<p data-start="2227" data-end="2407"><strong data-start="2227" data-end="2255">Exclusão Multi-Interface</strong>: Escaneia automaticamente todas as interfaces de rede locais e exclui seus intervalos CIDR para evitar bloqueio de SSH e conflitos de roteamento local.</p>
</li>
<li data-start="2408" data-end="2537">
<p data-start="2410" data-end="2537"><strong data-start="2410" data-end="2436">Resolução de Endpoints</strong>: Resolve dinamicamente os IPs de endpoints da Cloudflare (IPv4/IPv6) e adiciona à lista de exclusão.</p>
</li>
<li data-start="2538" data-end="2702">
<p data-start="2540" data-end="2702"><strong data-start="2540" data-end="2568">Patch de Prioridade IPv4</strong>: Modifica atomisticamente o <code data-start="2597" data-end="2607">gai.conf</code> para priorizar IPv4 sobre IPv6, garantindo estabilidade em servidores dual-stack ou IPv6-only.</p>
</li>
</ul>
<hr data-start="2704" data-end="2707">
<h3 data-start="2709" data-end="2745">Autocorreção &amp; Otimização de MTU</h3>
<ul data-start="2746" data-end="3117">
<li data-start="2746" data-end="2905">
<p data-start="2748" data-end="2905"><strong data-start="2748" data-end="2780">Descoberta de MTU do Caminho</strong>: Executa teste heurístico de ping (1420 a 1350 bytes) para encontrar o MTU máximo estável, evitando fragmentação de pacotes.</p>
</li>
<li data-start="2906" data-end="3117">
<p data-start="2908" data-end="3117"><strong data-start="2908" data-end="2933">Monitoramento Systemd</strong>: Instala um watchdog de fundo (<code data-start="2965" data-end="2975">warp-mgr</code>) que verifica conectividade via <code data-start="3008" data-end="3038">cloudflare.com/cdn-cgi/trace</code>. Se a conexão falhar 3 vezes consecutivas, o serviço reinicia automaticamente.</p>
</li>
</ul>
<hr data-start="3119" data-end="3122">
<h2 data-start="3124" data-end="3146">🛠 Instalação &amp; Uso</h2>
<p data-start="3148" data-end="3224">Execute o seguinte comando no terminal Linux (privilégios root necessários):</p>
<pre class="overflow-visible! px-0!" data-start="3226" data-end="3395"><div class="contain-inline-size rounded-2xl corner-superellipse/1.1 relative bg-token-sidebar-surface-primary"><div class="flex items-center text-token-text-secondary px-4 py-2 text-xs font-sans justify-between h-9 bg-token-sidebar-surface-primary select-none rounded-t-2xl corner-t-superellipse/1.1">bash</div><div class="sticky top-[calc(var(--sticky-padding-top)+9*var(--spacing))]"><div class="absolute end-0 bottom-0 flex h-9 items-center pe-2"><div class="bg-token-bg-elevated-secondary text-token-text-secondary flex items-center gap-4 rounded-sm px-2 font-sans text-xs"></div></div></div><div class="overflow-y-auto p-4" dir="ltr"><code class="whitespace-pre! language-bash"><span><span>wget -O warp.sh https://raw.githubusercontent.com/suanlihey/Cloudflare-WARP-and-Zero-Trust-For-Linux/refs/heads/main/warp.sh &amp;&amp; </span><span><span class="hljs-built_in">chmod</span></span><span> +x warp.sh &amp;&amp; ./warp.sh
</span></span></code></div></div></pre>
<ul data-start="3397" data-end="3752">
<li data-start="3397" data-end="3478">
<p data-start="3399" data-end="3478"><strong data-start="3399" data-end="3419">Opções do Script</strong>: Selecione o idioma preferido (1-10) na primeira execução.</p>
</li>
<li data-start="3479" data-end="3595">
<p data-start="3481" data-end="3595"><strong data-start="3481" data-end="3508">Implantação Inteligente</strong>: Instala dependências, configura o cliente WARP, gerencia contas e aplica otimizações.</p>
</li>
<li data-start="3596" data-end="3752">
<p data-start="3598" data-end="3752"><strong data-start="3598" data-end="3624">Desinstalação Completa</strong>: Remove totalmente o cliente WARP, limpa overrides do systemd, restaura <code data-start="3697" data-end="3707">gai.conf</code> e apaga todos os diretórios de configuração.</p>
</li>
</ul>
<hr data-start="3754" data-end="3757">
<h2 data-start="3759" data-end="3785">📁 Estrutura do Projeto</h2>
<ul data-start="3787" data-end="4029">
<li data-start="3787" data-end="3830">
<p data-start="3789" data-end="3830"><code data-start="3789" data-end="3798">warp.sh</code>: Motor de execução principal.</p>
</li>
<li data-start="3831" data-end="3900">
<p data-start="3833" data-end="3900"><code data-start="3833" data-end="3846">Language.sh</code>: Pacote de idioma externo para suporte multilíngue.</p>
</li>
<li data-start="3901" data-end="4029">
<p data-start="3903" data-end="4029"><code data-start="3903" data-end="3913">warp-mgr</code>: Ferramenta local de gerenciamento (instalada em <code data-start="3963" data-end="3980">/usr/local/bin/</code>) para verificar status e reconectar manualmente.</p>
</li>
</ul>
<hr data-start="4031" data-end="4034">
<h2 data-start="4036" data-end="4063">🛡 Notas de Estabilidade</h2>
<ul data-start="4065" data-end="4404">
<li data-start="4065" data-end="4187">
<p data-start="4067" data-end="4187"><strong data-start="4067" data-end="4082">Suporte TUN</strong>: O script verifica a disponibilidade do dispositivo TUN e tenta corrigir automaticamente nodes ausentes.</p>
</li>
<li data-start="4188" data-end="4404">
<p data-start="4190" data-end="4404"><strong data-start="4190" data-end="4215">Isolamento de Serviço</strong>: Utiliza <code data-start="4225" data-end="4240">override.conf</code> do systemd para garantir que o WARP nunca ultrapasse o perfil de memória alocado, protegendo outros aplicativos do servidor contra crashes por OOM (Out Of Memory).</p>
</li>
</ul>
<hr data-start="4406" data-end="4409">
<h2 data-start="4411" data-end="4424">📄 Licença</h2>
<p data-start="4426" data-end="4537">Este projeto é distribuído sob a <strong data-start="4459" data-end="4474">Licença MIT</strong>. Use com responsabilidade para otimização de rede e segurança.</p>
<hr data-start="4539" data-end="4542">
</div></div>
