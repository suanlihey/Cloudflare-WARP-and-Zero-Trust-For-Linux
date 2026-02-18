<div class="markdown prose dark:prose-invert w-full wrap-break-word dark markdown-new-styling">
<hr data-start="85" data-end="88">
<h2 data-start="90" data-end="141">Cloudflare WARP &amp; Zero Trust Global Adaptor v1.0</h2>
<p data-start="143" data-end="308">전문가용 고성능 쉘 스크립트로, Linux 서버에서 <strong data-start="172" data-end="191">Cloudflare WARP</strong> 및 **Zero Trust (Teams)**를 원활하게 배포하고 관리할 수 있습니다.<br data-start="239" data-end="242">
이 도구는 지능형 하드웨어 감지, 원격 언어 팩을 통한 자동 다국어 지원, 고급 네트워크 자가 복구 기능을 제공합니다.</p>
<hr data-start="310" data-end="313">
<h2 data-start="315" data-end="326">🚀 주요 기능</h2>
<h3 data-start="328" data-end="346">1. 지능형 하드웨어 감지</h3>
<ul data-start="347" data-end="444">
<li data-start="347" data-end="414">
<p data-start="349" data-end="414">스크립트는 시스템 자원(CPU 코어, RAM)을 <strong data-start="376" data-end="386">Cgroup</strong> 및 물리 메모리 분석을 통해 자동 감지합니다.</p>
</li>
<li data-start="415" data-end="444">
<p data-start="417" data-end="444">다음 3가지 최적화 프로필 중 하나를 적용합니다:</p>
</li>
</ul>
<div class="TyagGW_tableContainer"><div tabindex="-1" class="group TyagGW_tableWrapper flex flex-col-reverse w-fit"><table data-start="446" data-end="653" class="w-fit min-w-(--thread-content-width)"><thead data-start="446" data-end="464"><tr data-start="446" data-end="464"><th data-start="446" data-end="452" data-col-size="sm" class="">프로필</th><th data-start="452" data-end="458" data-col-size="sm" class="">메모리</th><th data-start="458" data-end="464" data-col-size="md" class="">특징</th></tr></thead><tbody data-start="492" data-end="653"><tr data-start="492" data-end="564"><td data-start="492" data-end="501" data-col-size="sm">LOW</td><td data-col-size="sm" data-start="501" data-end="511">&lt; 300MB</td><td data-col-size="md" data-start="511" data-end="564">메모리 제한 100MB, 로그 비활성화, 재시작 지연 연장 (소형 VPS 안정성 최적화)</td></tr><tr data-start="565" data-end="612"><td data-start="565" data-end="574" data-col-size="sm">MED</td><td data-col-size="sm" data-start="574" data-end="585">&lt; 1024MB</td><td data-col-size="md" data-start="585" data-end="612">메모리 제한 256MB, 오류 로그만 기록</td></tr><tr data-start="613" data-end="653"><td data-start="613" data-end="622" data-col-size="sm">HIGH</td><td data-col-size="sm" data-start="622" data-end="630">&gt; 1GB</td><td data-col-size="md" data-start="630" data-end="653">메모리 제한 512MB, 표준 로그</td></tr></tbody></table><div class="sticky h-0 select-none end-(--thread-content-margin) self-end"><div class="absolute end-0 flex items-end" style="height: 33px;"><span class="" data-state="closed"></span></div></div></div></div>
<hr data-start="655" data-end="658">
<h3 data-start="660" data-end="673">2. 다국어 지원</h3>
<ul data-start="674" data-end="800">
<li data-start="674" data-end="779">
<p data-start="676" data-end="716">GitHub 호스팅 외부 언어 팩을 통해 <strong data-start="699" data-end="712">10개 주요 언어</strong> 지원:</p>
<ul data-start="719" data-end="779">
<li data-start="719" data-end="779">
<p data-start="721" data-end="779">영어, 중국어(간체), 러시아어, 페르시아어, 일본어, 스페인어, 프랑스어, 독일어, 한국어, 포르투갈어</p>
</li>
</ul>
</li>
<li data-start="780" data-end="800">
<p data-start="782" data-end="800">시작 시 선택한 언어를 자동 적용</p>
</li>
</ul>
<hr data-start="802" data-end="805">
<h3 data-start="807" data-end="822">3. 듀얼 운영 모드</h3>
<ul data-start="823" data-end="994">
<li data-start="823" data-end="907">
<p data-start="825" data-end="907"><strong data-start="825" data-end="847">Global Mode (WARP)</strong>: Cloudflare 글로벌 네트워크를 통해 모든 시스템 트래픽을 라우팅하는 가상 네트워크 인터페이스 생성</p>
</li>
<li data-start="908" data-end="994">
<p data-start="910" data-end="994"><strong data-start="910" data-end="933">Proxy Mode (SOCKS5)</strong>: WARP를 로컬 프록시로 실행 (기본: 127.0.0.1:40000), 특정 애플리케이션만 터널 사용 가능</p>
</li>
</ul>
<hr data-start="996" data-end="999">
<h3 data-start="1001" data-end="1029">4. Zero Trust (Teams) 통합</h3>
<ul data-start="1030" data-end="1192">
<li data-start="1030" data-end="1082">
<p data-start="1032" data-end="1082"><strong data-start="1032" data-end="1041">자동 등록</strong>: TEAM_TOKEN을 이용한 원클릭 등록 지원 (헤드리스/자동화 환경)</p>
</li>
<li data-start="1083" data-end="1123">
<p data-start="1085" data-end="1123"><strong data-start="1085" data-end="1097">인터랙티브 등록</strong>: 팀 이름 및 브라우저 기반 인증 가이드 제공</p>
</li>
<li data-start="1124" data-end="1192">
<p data-start="1126" data-end="1192"><strong data-start="1126" data-end="1137">인증서 자동화</strong>: Cloudflare 루트 CA를 다운로드하여 시스템 신뢰 저장소에 설치 (HTTPS 검사 지원)</p>
</li>
</ul>
<hr data-start="1194" data-end="1197">
<h3 data-start="1199" data-end="1217">5. 고급 네트워크 라우팅</h3>
<ul data-start="1218" data-end="1427">
<li data-start="1218" data-end="1283">
<p data-start="1220" data-end="1283"><strong data-start="1220" data-end="1235">다중 인터페이스 제외</strong>: SSH 잠금 방지 및 로컬 충돌 방지를 위해 모든 로컬 네트워크 CIDR 자동 제외</p>
</li>
<li data-start="1284" data-end="1354">
<p data-start="1286" data-end="1354"><strong data-start="1286" data-end="1298">엔드포인트 해결</strong>: Cloudflare Endpoint IP(IPv4/IPv6)를 동적으로 확인 후 제외 목록에 추가</p>
</li>
<li data-start="1355" data-end="1427">
<p data-start="1357" data-end="1427"><strong data-start="1357" data-end="1371">IPv4 우선 패치</strong>: 필요 시 gai.conf를 수정하여 dual-stack 또는 IPv6 전용 서버에서도 안정성 확보</p>
</li>
</ul>
<hr data-start="1429" data-end="1432">
<h3 data-start="1434" data-end="1456">6. 자가 복구 &amp; MTU 최적화</h3>
<ul data-start="1457" data-end="1589">
<li data-start="1457" data-end="1523">
<p data-start="1459" data-end="1523"><strong data-start="1459" data-end="1481">Path MTU Discovery</strong>: 1420~1350 바이트 핑 테스트로 최적 MTU 탐색, 패킷 분할 방지</p>
</li>
<li data-start="1524" data-end="1589">
<p data-start="1526" data-end="1589"><strong data-start="1526" data-end="1542">Systemd 모니터링</strong>: <code data-start="1544" data-end="1554">warp-mgr</code> 백그라운드 감시, 3회 연속 연결 실패 시 서비스 자동 재시작</p>
</li>
</ul>
<hr data-start="1591" data-end="1594">
<h2 data-start="1596" data-end="1610">🛠 설치 및 사용법</h2>
<pre class="overflow-visible! px-0!" data-start="1612" data-end="1775"><div class="contain-inline-size rounded-2xl corner-superellipse/1.1 relative bg-token-sidebar-surface-primary"><div class="flex items-center text-token-text-secondary px-4 py-2 text-xs font-sans justify-between h-9 bg-token-sidebar-surface-primary select-none rounded-t-2xl corner-t-superellipse/1.1">bash</div><div class="sticky top-[calc(var(--sticky-padding-top)+9*var(--spacing))]"><div class="absolute end-0 bottom-0 flex h-9 items-center pe-2"><div class="bg-token-bg-elevated-secondary text-token-text-secondary flex items-center gap-4 rounded-sm px-2 font-sans text-xs"></div></div></div><div class="overflow-y-auto p-4" dir="ltr"><code class="whitespace-pre! language-bash"><span><span>wget -O warp.sh https://raw.githubusercontent.com/suanlihey/Cloudflare-WARP-and-Zero-Trust-For-Linux/refs/heads/main/warp.sh
</span><span><span class="hljs-built_in">chmod</span></span><span> +x warp.sh
./warp.sh
</span></span></code></div></div></pre>
<ul data-start="1777" data-end="1932">
<li data-start="1777" data-end="1808">
<p data-start="1779" data-end="1808"><strong data-start="1779" data-end="1788">언어 선택</strong>: 첫 실행 시 1~10번 언어 선택</p>
</li>
<li data-start="1809" data-end="1859">
<p data-start="1811" data-end="1859"><strong data-start="1811" data-end="1821">지능형 배포</strong>: 의존성 설치, WARP 클라이언트 설정, 계정 구성, 최적화 적용</p>
</li>
<li data-start="1860" data-end="1932">
<p data-start="1862" data-end="1932"><strong data-start="1862" data-end="1871">완전 제거</strong>: WARP 클라이언트 삭제, systemd override 제거, gai.conf 복원, 구성 디렉터리 정리</p>
</li>
</ul>
<hr data-start="1934" data-end="1937">
<h2 data-start="1939" data-end="1952">📁 프로젝트 구조</h2>
<ul data-start="1953" data-end="2062">
<li data-start="1953" data-end="1974">
<p data-start="1955" data-end="1974"><code data-start="1955" data-end="1964">warp.sh</code>: 핵심 실행 엔진</p>
</li>
<li data-start="1975" data-end="1999">
<p data-start="1977" data-end="1999"><code data-start="1977" data-end="1990">Language.sh</code>: 외부 언어 팩</p>
</li>
<li data-start="2000" data-end="2062">
<p data-start="2002" data-end="2062"><code data-start="2002" data-end="2012">warp-mgr</code>: 상태 확인 및 수동 재연결용 로컬 관리 도구 (<code data-start="2040" data-end="2057">/usr/local/bin/</code>에 설치)</p>
</li>
</ul>
<hr data-start="2064" data-end="2067">
<h2 data-start="2069" data-end="2081">🛡 안정성 주의</h2>
<ul data-start="2082" data-end="2188">
<li data-start="2082" data-end="2122">
<p data-start="2084" data-end="2122"><strong data-start="2084" data-end="2094">TUN 지원</strong>: TUN 장치 존재 확인 및 노드 자동 복구 시도</p>
</li>
<li data-start="2123" data-end="2188">
<p data-start="2125" data-end="2188"><strong data-start="2125" data-end="2135">서비스 격리</strong>: Systemd override.conf 사용, 할당된 메모리 프로필 초과 방지, OOM 보호</p>
</li>
</ul>
<hr data-start="2190" data-end="2193">
<h2 data-start="2195" data-end="2205">📄 라이선스</h2>
<ul data-start="2206" data-end="2255">
<li data-start="2206" data-end="2221">
<p data-start="2208" data-end="2221">MIT License</p>
</li>
<li data-start="2222" data-end="2255">
<p data-start="2224" data-end="2255">네트워크 최적화 및 보안을 위해 책임감 있게 사용하세요.</p>
</li>
</ul>
<hr data-start="2257" data-end="2260">
<p data-start="2262" data-end="2295">한국어 버전은 이미 위와 같이 완전히 번역되어 있습니다.</p>
</div>
