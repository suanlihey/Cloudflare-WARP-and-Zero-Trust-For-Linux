<div class="flex w-full flex-col gap-1 empty:hidden first:pt-[1px]"><div class="markdown prose dark:prose-invert w-full wrap-break-word dark markdown-new-styling"><h1 data-start="0" data-end="53">☁️ Cloudflare WARP &amp; Zero Trust Global Adaptor v1.0</h1>
<p data-start="55" data-end="159">Linuxサーバー向けに設計された、<strong data-start="73" data-end="92">Cloudflare WARP</strong> と <strong data-start="95" data-end="116">Zero Trust（Teams）</strong> をシームレスに導入・管理するための高性能プロフェッショナルシェルスクリプトです。</p>
<p data-start="161" data-end="221">インテリジェントなハードウェア検知、自動多言語対応（リモート言語パック）、高度なネットワーク自己修復機能を備えています。</p>
<hr data-start="223" data-end="226">
<h2 data-start="228" data-end="238">🚀 主な機能</h2>
<h2 data-start="240" data-end="263">🧠 インテリジェント・ハードウェア検知</h2>
<p data-start="265" data-end="326">Cgroupおよび物理メモリを解析し、CPUコア数とRAM容量を自動判定。<br data-start="302" data-end="305">
3つの最適化プロファイルを自動適用します。</p>
<h3 data-start="328" data-end="351">🔹 LOW（メモリ &lt; 300MB）</h3>
<ul data-start="352" data-end="412">
<li data-start="352" data-end="371">
<p data-start="354" data-end="371">メモリ上限：100MB（厳格制限）</p>
</li>
<li data-start="372" data-end="381">
<p data-start="374" data-end="381">ログ出力：無効</p>
</li>
<li data-start="382" data-end="394">
<p data-start="384" data-end="394">再起動遅延：長め設定</p>
</li>
<li data-start="395" data-end="412">
<p data-start="397" data-end="412">極小VPS向けの最大安定モード</p>
</li>
</ul>
<h3 data-start="414" data-end="438">🔹 MED（メモリ &lt; 1024MB）</h3>
<ul data-start="439" data-end="481">
<li data-start="439" data-end="452">
<p data-start="441" data-end="452">メモリ上限：256MB</p>
</li>
<li data-start="453" data-end="465">
<p data-start="455" data-end="465">ログ出力：エラーのみ</p>
</li>
<li data-start="466" data-end="481">
<p data-start="468" data-end="481">安定性と性能のバランス重視</p>
</li>
</ul>
<h3 data-start="483" data-end="505">🔹 HIGH（メモリ &gt; 1GB）</h3>
<ul data-start="506" data-end="542">
<li data-start="506" data-end="519">
<p data-start="508" data-end="519">メモリ上限：512MB</p>
</li>
<li data-start="520" data-end="528">
<p data-start="522" data-end="528">標準ログ有効</p>
</li>
<li data-start="529" data-end="542">
<p data-start="531" data-end="542">高パフォーマンスモード</p>
</li>
</ul>
<hr data-start="544" data-end="547">
<h2 data-start="549" data-end="567">🌐 ユニバーサル言語エンジン</h2>
<p data-start="569" data-end="601">GitHub上の外部言語パックを利用し、起動時に動的取得・適用。</p>
<p data-start="603" data-end="614">対応言語（10言語）：</p>
<ul data-start="615" data-end="689">
<li data-start="615" data-end="619">
<p data-start="617" data-end="619">英語</p>
</li>
<li data-start="620" data-end="630">
<p data-start="622" data-end="630">中国語（簡体字）</p>
</li>
<li data-start="631" data-end="637">
<p data-start="633" data-end="637">ロシア語</p>
</li>
<li data-start="638" data-end="645">
<p data-start="640" data-end="645">ペルシア語</p>
</li>
<li data-start="646" data-end="651">
<p data-start="648" data-end="651">日本語</p>
</li>
<li data-start="652" data-end="659">
<p data-start="654" data-end="659">スペイン語</p>
</li>
<li data-start="660" data-end="667">
<p data-start="662" data-end="667">フランス語</p>
</li>
<li data-start="668" data-end="674">
<p data-start="670" data-end="674">ドイツ語</p>
</li>
<li data-start="675" data-end="680">
<p data-start="677" data-end="680">韓国語</p>
</li>
<li data-start="681" data-end="689">
<p data-start="683" data-end="689">ポルトガル語</p>
</li>
</ul>
<hr data-start="691" data-end="694">
<h2 data-start="696" data-end="711">🔄 デュアル動作モード</h2>
<h3 data-start="713" data-end="734">🌍 グローバルモード（WARP）</h3>
<ul data-start="735" data-end="814">
<li data-start="735" data-end="772">
<p data-start="737" data-end="772">仮想ネットワークインターフェース（CloudflareWARP）を作成</p>
</li>
<li data-start="773" data-end="814">
<p data-start="775" data-end="814">システム全体のトラフィックをCloudflareネットワーク経由でルーティング</p>
</li>
</ul>
<h3 data-start="816" data-end="838">🧦 プロキシモード（SOCKS5）</h3>
<ul data-start="839" data-end="916">
<li data-start="839" data-end="877">
<p data-start="841" data-end="877">ローカルプロキシとして動作（デフォルト：127.0.0.1:40000）</p>
</li>
<li data-start="878" data-end="895">
<p data-start="880" data-end="895">特定アプリのみトンネル利用可能</p>
</li>
<li data-start="896" data-end="916">
<p data-start="898" data-end="916">システムルーティングテーブル変更なし</p>
</li>
</ul>
<hr data-start="918" data-end="921">
<h2 data-start="923" data-end="948">🏢 Zero Trust（Teams）統合</h2>
<h3 data-start="950" data-end="961">🔹 自動登録</h3>
<ul data-start="962" data-end="1002">
<li data-start="962" data-end="990">
<p data-start="964" data-end="990"><code data-start="964" data-end="976">TEAM_TOKEN</code> を使用したワンクリック登録</p>
</li>
<li data-start="991" data-end="1002">
<p data-start="993" data-end="1002">ヘッドレス環境対応</p>
</li>
</ul>
<h3 data-start="1004" data-end="1016">🔹 対話型登録</h3>
<ul data-start="1017" data-end="1057">
<li data-start="1017" data-end="1039">
<p data-start="1019" data-end="1039">チーム名（Organization）入力</p>
</li>
<li data-start="1040" data-end="1057">
<p data-start="1042" data-end="1057">ブラウザ認証によるセットアップ</p>
</li>
</ul>
<h3 data-start="1059" data-end="1073">🔹 証明書自動導入</h3>
<ul data-start="1074" data-end="1133">
<li data-start="1074" data-end="1100">
<p data-start="1076" data-end="1100">Cloudflare Root CA を自動取得</p>
</li>
<li data-start="1101" data-end="1115">
<p data-start="1103" data-end="1115">システム信頼ストアへ登録</p>
</li>
<li data-start="1116" data-end="1133">
<p data-start="1118" data-end="1133">HTTPSインスペクション対応</p>
</li>
</ul>
<hr data-start="1135" data-end="1138">
<h2 data-start="1140" data-end="1161">🛣 高度なネットワークルーティング</h2>
<h3 data-start="1163" data-end="1183">🔹 マルチインターフェース除外</h3>
<ul data-start="1184" data-end="1236">
<li data-start="1184" data-end="1204">
<p data-start="1186" data-end="1204">全ローカルインターフェースを自動検出</p>
</li>
<li data-start="1205" data-end="1222">
<p data-start="1207" data-end="1222">CIDR範囲を除外リストへ追加</p>
</li>
<li data-start="1223" data-end="1236">
<p data-start="1225" data-end="1236">SSHロックアウト防止</p>
</li>
</ul>
<h3 data-start="1238" data-end="1254">🔹 エンドポイント解決</h3>
<ul data-start="1255" data-end="1299">
<li data-start="1255" data-end="1290">
<p data-start="1257" data-end="1290">Cloudflareエンドポイント（IPv4/IPv6）を動的解決</p>
</li>
<li data-start="1291" data-end="1299">
<p data-start="1293" data-end="1299">自動除外設定</p>
</li>
</ul>
<h3 data-start="1301" data-end="1317">🔹 IPv4優先パッチ</h3>
<ul data-start="1318" data-end="1362">
<li data-start="1318" data-end="1337">
<p data-start="1320" data-end="1337"><code data-start="1320" data-end="1330">gai.conf</code> を安全に修正</p>
</li>
<li data-start="1338" data-end="1362">
<p data-start="1340" data-end="1362">デュアルスタック/IPv6環境での安定性向上</p>
</li>
</ul>
<hr data-start="1364" data-end="1367">
<h2 data-start="1369" data-end="1388">🛠 自己修復 &amp; MTU最適化</h2>
<h3 data-start="1390" data-end="1404">🔹 パスMTU探索</h3>
<ul data-start="1405" data-end="1467">
<li data-start="1405" data-end="1440">
<p data-start="1407" data-end="1440">1420〜1350バイト範囲でヒューリスティックPingテスト実行</p>
</li>
<li data-start="1441" data-end="1455">
<p data-start="1443" data-end="1455">最大安定MTUを自動検出</p>
</li>
<li data-start="1456" data-end="1467">
<p data-start="1458" data-end="1467">パケット断片化防止</p>
</li>
</ul>
<h3 data-start="1469" data-end="1487">🔹 Systemd監視機能</h3>
<ul data-start="1488" data-end="1574">
<li data-start="1488" data-end="1515">
<p data-start="1490" data-end="1515">バックグラウンド監視ツール「warp-mgr」導入</p>
</li>
<li data-start="1516" data-end="1558">
<p data-start="1518" data-end="1558"><code data-start="1518" data-end="1548">cloudflare.com/cdn-cgi/trace</code> による接続チェック</p>
</li>
<li data-start="1559" data-end="1574">
<p data-start="1561" data-end="1574">3回連続失敗時に自動再起動</p>
</li>
</ul>
<hr data-start="1576" data-end="1579">
<h2 data-start="1581" data-end="1595">🛠 インストール方法</h2>
<p data-start="1597" data-end="1621">Linuxターミナルで実行（root権限必要）：</p>
<pre class="overflow-visible! px-0!" data-start="1623" data-end="1796"><div class="contain-inline-size rounded-2xl corner-superellipse/1.1 relative bg-token-sidebar-surface-primary"><div class="flex items-center text-token-text-secondary px-4 py-2 text-xs font-sans justify-between h-9 bg-token-sidebar-surface-primary select-none rounded-t-2xl corner-t-superellipse/1.1">bash</div><div class="sticky top-[calc(var(--sticky-padding-top)+9*var(--spacing))]"><div class="absolute end-0 bottom-0 flex h-9 items-center pe-2"><div class="bg-token-bg-elevated-secondary text-token-text-secondary flex items-center gap-4 rounded-sm px-2 font-sans text-xs"></div></div></div><div class="overflow-y-auto p-4" dir="ltr"><code class="whitespace-pre! language-bash"><span><span>wget -O warp.sh https://raw.githubusercontent.com/suanlihey/Cloudflare-WARP-and-Zero-Trust-For-Linux/refs/heads/main/warp.sh \
&amp;&amp; </span><span><span class="hljs-built_in">chmod</span></span><span> +x warp.sh \
&amp;&amp; ./warp.sh
</span></span></code></div></div></pre>
<hr data-start="1798" data-end="1801">
<h2 data-start="1803" data-end="1819">📋 スクリプトオプション</h2>
<h3 data-start="1821" data-end="1832">🔹 言語選択</h3>
<p data-start="1833" data-end="1847">初回起動時に1〜10から選択</p>
<h3 data-start="1849" data-end="1866">🔹 インテリジェント導入</h3>
<ul data-start="1867" data-end="1916">
<li data-start="1867" data-end="1881">
<p data-start="1869" data-end="1881">依存関係自動インストール</p>
</li>
<li data-start="1882" data-end="1896">
<p data-start="1884" data-end="1896">WARPクライアント設定</p>
</li>
<li data-start="1897" data-end="1906">
<p data-start="1899" data-end="1906">アカウント構成</p>
</li>
<li data-start="1907" data-end="1916">
<p data-start="1909" data-end="1916">各種最適化適用</p>
</li>
</ul>
<h3 data-start="1918" data-end="1935">🔹 完全アンインストール</h3>
<ul data-start="1936" data-end="1993">
<li data-start="1936" data-end="1944">
<p data-start="1938" data-end="1944">WARP削除</p>
</li>
<li data-start="1945" data-end="1965">
<p data-start="1947" data-end="1965">systemd override復元</p>
</li>
<li data-start="1966" data-end="1978">
<p data-start="1968" data-end="1978">gai.conf修復</p>
</li>
<li data-start="1979" data-end="1993">
<p data-start="1981" data-end="1993">設定ディレクトリ完全削除</p>
</li>
</ul>
<hr data-start="1995" data-end="1998">
<h2 data-start="2000" data-end="2014">📁 プロジェクト構成</h2>
<ul data-start="2016" data-end="2110">
<li data-start="2016" data-end="2040">
<p data-start="2018" data-end="2040"><strong data-start="2018" data-end="2029">warp.sh</strong>：コア実行エンジン</p>
</li>
<li data-start="2041" data-end="2068">
<p data-start="2043" data-end="2068"><strong data-start="2043" data-end="2058">Language.sh</strong>：外部言語パック</p>
</li>
<li data-start="2069" data-end="2110">
<p data-start="2071" data-end="2110"><strong data-start="2071" data-end="2083">warp-mgr</strong>：ローカル管理ツール（/usr/local/bin/）</p>
</li>
</ul>
<hr data-start="2112" data-end="2115">
<h2 data-start="2117" data-end="2132">🛡 安定性に関する注意</h2>
<h3 data-start="2134" data-end="2150">🔹 TUNサポート確認</h3>
<ul data-start="2151" data-end="2177">
<li data-start="2151" data-end="2164">
<p data-start="2153" data-end="2164">TUNデバイス存在確認</p>
</li>
<li data-start="2165" data-end="2177">
<p data-start="2167" data-end="2177">不足時は自動修復試行</p>
</li>
</ul>
<h3 data-start="2179" data-end="2194">🔹 サービス分離設計</h3>
<ul data-start="2195" data-end="2267">
<li data-start="2195" data-end="2220">
<p data-start="2197" data-end="2220">systemd override.conf利用</p>
</li>
<li data-start="2221" data-end="2234">
<p data-start="2223" data-end="2234">メモリ使用量を厳格制限</p>
</li>
<li data-start="2235" data-end="2267">
<p data-start="2237" data-end="2267">他アプリのOOM（Out Of Memory）クラッシュ防止</p>
</li>
</ul>
<hr data-start="2269" data-end="2272">
<h2 data-start="2274" data-end="2285">📄 ライセンス</h2>
<p data-start="2287" data-end="2362">本プロジェクトは <strong data-start="2296" data-end="2308">MITライセンス</strong> の下で公開されています。<br data-start="2321" data-end="2324">
ネットワーク最適化およびセキュリティ用途として、責任を持ってご利用ください。</p>
<hr data-start="2364" data-end="2369">
<p data-start="2371" data-end="2429" data-is-last-node="" data-is-only-node="">必要であれば、より「公式ドキュメント風」「営業資料風」「GitHub README最適化版」などにも再構成できます。</p></div></div>
