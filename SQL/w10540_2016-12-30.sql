# ************************************************************
# Sequel Pro SQL dump
# Version 4529
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 140.137.41.137 (MySQL 5.5.29)
# Database: w10540
# Generation Time: 2016-12-30 14:02:53 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table tblyrics
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tblyrics`;

CREATE TABLE `tblyrics` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `verse` text,
  `uploadUser` int(11) DEFAULT NULL,
  `uploadDate` timestamp NULL DEFAULT NULL,
  `info` varchar(200) DEFAULT NULL,
  `link` varchar(300) DEFAULT NULL,
  `screen` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tblyrics` WRITE;
/*!40000 ALTER TABLE `tblyrics` DISABLE KEYS */;

INSERT INTO `tblyrics` (`id`, `title`, `verse`, `uploadUser`, `uploadDate`, `info`, `link`, `screen`)
VALUES
	(43,'Miss Ko 葛仲珊【就改天 Till Next Time】','Verse 1\nYea我記得我們遇見 那第一天 就很親密\n知道你會永遠是我好友 在我心裡\n不管在哪裡都在一起 那是一定\nPromised I would always be there if you ever need me\n但沒有預計 你會提早離開\n還沒說goodbye也就出了意外\n你走了讓我整個人生轉換\n從你身上瞭解生命多麼短暫\n所以不行 把它浪費\n跑去吸毒或犯罪的相類\n如果不是為了你我也不會\n懂這道理 直到已經too late\n非常感謝 給我機會能變好\n讓我人生的路終於顛倒\n我只希望可以讓你驕傲\n下次遇到 我們繼續再聊\n\nChorus\nCuz I know你離開了這世界\n不代表我們不會有一天\n再遇見 你存在我心裡面\n說再見不代表不會再見\n就改天 就改天 改天遇見\n就改天 就改天 改天遇見\n\nVerse 2\n我只想跟你報個平安 在歌裡留我靈感\n也希望你聽到它會喜歡\n如果能坐在雲端上面聊天\n我一定給你機會和我一起表演\n就把你當做我的來賓 很開心不在意 \n唱所有的歌曲你愛聽\n你是我永遠的homie 我兄弟\n就算你不在了 還存留在風裡\n有時候覺得這個世界不公平\n很希望轉回時間專門來救你\n把所有夢想幫你完畢\n像組成個團體 出專輯\n當學校裡的傳奇\nAh 對我棄不放 \n為你寫了這首由我當主唱\n也永遠記住你的臉不忘\nHope you’re smilin down with Biggie and Tupac\n\nVerse 3\nEverybody’s married now, of course except for me\nHope you’re smilin down, on your nephew and your niece\nCuz yall look so alike, you’re practically the same\nI guess found your way back through another means\nAnd it’s bittersweet to see\nHow everybody’s doing such bigger better things\nSome are back home and some are overseas\nBut on the holidays we come together as a team\nLike JT, it’s a been a long time\nBut no we ain’t forgot AznBadBoy9 \nEven though you’re gone, in our hearts you’re alive\nAnd no matter where you are yea you’re still on our minds\nI just hope you been cool, and practicin pool \nCuz next time I see you man you’re gonna get schooled (again)\nI’m just kiddin, I’ll leave with our daily good night\nLike always and forever, you’re my homie for life\n\nIn Loving Memory of John Tran\n(3.28.1985 – 10.29.2001)',25,'2016-12-29 21:11:53','詞曲：葛仲珊','https://www.youtube.com/watch?v=N0Nk8fB_O6U','N0Nk8fB_O6U'),
	(44,'田馥甄 小幸運 A Little Happiness','我聽見雨滴 落在青青草地\n我聽見遠方 下課鐘聲響起\n可是我沒有聽見你的聲音 認真呼喚我姓名\n\n愛上你的時候 還不懂感情\n離別了 才覺得刻骨銘心\n為什麼沒有發現 遇見了你 是生命最好的事情\n\n也許當時忙著微笑和哭泣\n忙著追逐天空中的流星\n人理所當然的忘記\n是誰風裡 雨裡 一直默默守護在原地\n\n原來你是 我最想留住的幸運\n原來我們 和愛情曾經靠得那麼近\n那為我對抗世界的決定 那陪我淋的雨\n一幕幕都是你 一塵不染的真心\n\n與你相遇 好幸運\n可我已失去 為你淚流滿面的權利\n但願在我看不到的天際 你張開了雙翼\n更多更詳盡歌詞 在 ※ Mojim.com　魔鏡歌詞網 \n遇見你的註定 她會有多幸運\n\n青春是段跌跌撞撞的旅行\n擁有著後知後覺的美麗\n來不及感謝 是你給我勇氣 讓我能做回我自己\n\n也許當時忙著微笑和哭泣\n忙著追逐天空中的流星\n人理所當然的忘記\n是誰風裡 雨裡 一直默默守護在原地\n\n原來你是 我最想留住的幸運\n原來我們 和愛情曾經靠得那麼近\n那為我對抗世界的決定 那陪我淋的雨\n一幕幕都是你 一塵不染的真心\n\n與你相遇 好幸運\n可我已失去為你淚流滿面的權利\n但願在我看不到的天際 你張開了雙翼\n遇見你的註定 Woooo~\n她會有多幸運',25,'2016-12-29 21:13:15','田馥甄','https://www.youtube.com/watch?v=_sQSXwdtxlY','_sQSXwdtxlY'),
	(45,'Dizzy Dizzo - 誰愛誰 (FEAT. E.SO)','\n快凌晨兩點鐘我不打算要走\n跳著舞 all night long 沒什麼話要說\n眼皮越來越重 在夢裡看你脫\n不想起來的夢 我變得不像我\n\n誰愛誰 難收覆水\n悄悄偷了心的賊 你是誰\n我試著抗拒卻愈靠愈近\n我試著不去想念卻為你\n無聲無息動了心 \n你就像顆恆星 相互吸引 replay replay\n\n強大引力的愛 不管誰都招架不來\n我的心被你主宰 以貪婪的非你不愛\n巨大的黑洞in my heart 愛你的衝動 in my heart\n巨大的黑洞 in my heart 我只想愛你到無法自拔 \n\n怎麼會遇見你幾秒鐘 \nI’m thinking bout you好幾個鐘頭 \n當我離開 我不停回頭 \n怎麼回事腦波太弱 \n沒有聯絡方式 甚至她的名字 我到底在找什麼\n應該是 對我沒有意思 或嫌我太瘦\n跟著我 ay mami Imma make you shine for sure\n如果你是我的女人我會帶你 on tour \n我是貪心的男人我要你的所有 \ncause I 沒時間想怎麼告白\n我只想拉你的手從這裡離開\n\n誰愛誰 無法預料\n只有愛情誰也逃不了\n誰愛誰 無法預料\n我逃不了 \n強大引力的愛 不管誰都招架不來\n我的心被你主宰 以貪婪的非你不愛\n巨大的黑洞in my heart 愛你的衝動 in my heart\n巨大的黑洞 in my heart 我只想愛你到無法自拔 \n誰愛誰 難收覆水\n悄悄偷了心的賊 \n你是誰',25,'2016-12-29 21:15:12','Dizzy Dizzo ','https://www.youtube.com/watch?v=Bsay9CRHEps','Bsay9CRHEps'),
	(46,'Dizzy Dizzo X MJ116 X Barry Chen - Life','E-SO\n\nCAN YOU FEEL ME\n你已經甚麼都有還在對天祈求\n喔看不慣怎麼做都姿勢不對\n一桌熱騰騰的菜色依然食之無味\n做了不好的事只為填飽空腹的胃\nDAMN 他已經背負著罪 \n拜託大哥別為難我貨到我只是來收帳\n東西插在身上 我希望不會用上\n突然有人開槍 當車頂上的燈亮\n巷口鐵門關上 到這才知道真相\nOH 為了錢殺紅眼 比起生意人命哪算貴\n如果 能夠重選 我只想活久點\n祈求回到神明腳下跪\n\nMuta\n\n要花多少錢買尊重口袋越深講話越生動\n茶來伸手我讓所有事都變聲控\n用錢砸人感受不到一絲疼痛\n這最大宗的利益才能被體制認同\n在這樣的環境下極端讓人想要氣喘\n面對每個人都要計算看能拿走幾萬\n我也想開始謀殺 變成殺人犯\n我想那也沒差 只是為了家人戰\n為了目的沒顧忌顧像是忘恩負義\n那些無際產主力好險有人幫我鼓勵\n不幹正仁之人 別抱怨 想努力\n多努力 在這處境最後被現實除夕\n\nKenzy\n\n他頂著駝背瘦小身軀推車推到發抖\n想要了斷卻又放不下那一家三口\n再苦還是要過 債主還是要躲\n試不了再多麻煩還是要牽起孫女的手\n有人活在別人眼下就怕敵人多了\n恨不得做給人看從未當自己是過客\n像是不敢死的孬種殺戮血流成河\n到底憑甚麼為什麼阻止別人的生命活著\n事過淪陷 走在一念之間 這一生不過是一場試煉\n在困苦都得嘗苦辣酸甜 別讓人生留下遺憾遊戲人間\n\nBarry Chen\n\n幾百萬人的城市 誰能混出頭\n金錢力量尊重 爭得你死我活\n黑吃黑的人吃人的不吐骨頭\n這裡沒有人會救妳就算叫破喉嚨\n每天睜開眼睛都在較勁\n身處叢林一不小心就會要命\n看過太多人為利益出賣自己\nLet\'s Right.    I can\'t trust no fucking body.\n壞的想法正在腦裡打轉\n陷入灰色地帶很難分青黑白\n已經沒有退路背後只剩懸崖\n誰能告訴我要怎樣才能活得精采\nWOW~在行駛中的列車寫下這段Verse\n但看上去感覺像是中了Curse\n我寧可為非作歹也不打算餓死\n舊的 Bullshit 才剛 結束\n新的 drama  才剛 開始 該死?',25,'2016-12-29 21:24:50','Dizzy Dizzo X MJ116 X Barry Chen','https://www.youtube.com/watch?v=svHObS_TcgM','svHObS_TcgM'),
	(48,'皇后區的皇后 Queen of Queens','Verse 1\n城門打開讓我進\n來自皇后區的queen\n別再落伍裝不相信\n誰的饒舌最有力\nBratatatat bomb ya team\n拿我詞來當武器\n哦你以為我不見就\n代表有人代得替－我\n很抱歉 但是我正在起火\n充滿嘻哈味道回到老娘的帝國\nI keep it equal 隨時換成bilingual\n英文如果厲害那就一定很清楚\n創新的記錄 看我技術一直進步\n負面那些評估 yea我相信只是嫉妒\n就躲在螢幕後面偷偷摸摸欺負\n以為我怕你但是真的我也並不\n想說我中文不強又怎樣\n你愛的歌手還是對我欣賞\n確得了獎 寫歌給aMEI唱\n我不是你偶像 我是你偶像的偶像\n\nChorus\nHands up 讓我看到你們雙手 (雙手)\nHands up, yea你最好別給搞錯 (搞錯)\nHands up 這是皇后區的皇后 (皇后區的皇后)\n皇后區的皇后\nHands up 讓我看到你們雙手 (雙手)\nHands up, yea你最好別給搞錯 (搞錯)\nHands up 這是皇后區的皇后 (皇后區的皇后)\n回到我的寶座\n\nVerse 2\nThat’s right, you know\n別想來跟我鬥\n或假裝跟我熟\n沒錢就沒有空\n不只是純藝人\n我是個生意人\n回來的目的就是努力 不是混一混\n不喜歡睡 習慣培養我的軍隊\n對女力嘻哈 華語歷史上第一位\n卻不是靠我父母給我任何機會\n在銀行裡的錢是自己賺的薪水\n想說我什麼 不懂的給我閉嘴\n從小就獨立從來沒有必要聽誰\n就個性堅強 邊饒舌邊唱\n把整個環球音樂扛在我的肩上\n我最不喜歡人家在我面前放屁\n除非是事實 我廢話都不相信\nYea這是Miss Ko你最好別給搞錯\n帶來一些好貨 回到我的寶座',25,'2016-12-29 21:30:34','Miss Ko 葛仲珊','https://www.youtube.com/watch?v=z62cSYXwF4s','z62cSYXwF4s'),
	(49,'MISS KO 葛仲珊 - 打破他','進到現場, party 或著演唱\n看著忌妒掛在他們臉上\n這是誰？旁邊都是辣妹\n手上鑽石閃得像在打雷\n對, 他們看到我會\n誤會我的衣服好像花費很貴\n我的J\'s, 乾淨也脆\n猜不出來其實都是來的免費\n哈, rock the party, don\'t stop\n手都放到空中, 大家一起在晃\n他們覺得欣賞\n女生饒舌歌手打破他們印象\n讓他們 recognize me\n進去也不需要 I.D.\n如果台灣嘻哈有 M.V.P.\n我就是饒舌的鄧麗君\n\n\n打破他們印象 (2x)\n打破他們音響\n\n\n把它打破像拿玻璃杯的“40”搥你\n如果你想來我這裡,\nbaby I could show you crazy\n讓你知道我的個性不是那種弱的美女\nNah, 這是顏社 First Lady\nHaters 不喜歡我怎麼樣,\nman, whatever 隨你\n注意看我中間指頭, 留著給你\n讓你認識看我多麼有規矩\n更多更詳盡歌詞 在 ※ Mojim.com　魔鏡歌詞網 \n哈, fuck it, “hibba to da hop”\n生活過得的嘻哈\nand I\'m never gon\' stop\nTil\' the top, 只能繼續往上\n一直到我口袋媽的塞的很胖\nRoar! 事業做得也大\n準備幾十萬才能找我演唱\n拿著麥克風, 把它當作球棒\n當我唱, 打破他們印象\n\n\n沒有聽過, 那是你的問題\n你的壞鄰居木柵潘若迪\n手上的東西\nthat\'s the money you chasing\n嘴角上揚, 我的 pocket never empty\n你做的爛貨我最不會,\n內褲塞磚頭 man, I\'m steak on steak\n我在做大生意你知道的就像 Jay-Z\n我不是生意人. 本身就是一門生意\nWhere\'re my girls at\n讓她們靠近, 我沒有關係\n我知道她的目的\n我就是 party party\n跟著我到廁所,\n我把門給反鎖讓外面的人等更久\n我是另一種 hustler, they already know\nHow we roll 的 roller\n安傑飛 CEO boss',25,'2016-12-29 21:32:09','MISS KO 葛仲珊 ','https://www.youtube.com/watch?v=JdAxA59WTz8','JdAxA59WTz8'),
	(50,'頑童MJ116【二手車】','瘦子 E-SO\nSNAPBACK WHITE FORCE OLD SCHOOL FLAVA \nRUNNING 木柵 GETTING BLUE PAPPER\n車裡載的代表三峽夥伴\n其人說的什麼工三小我幹\n快點搖下窗戶點頭裝酷\n喇叭開到最大讓他們知道是誰來光顧\n巡迴不計天數 我感謝天父\n低於限速的二手車 輪框依然電鍍\n訂閱我的PAGE 不是湊巧只關注\n那些COPY CAT愛裝成鄉民比酸度\nVIDEO太FAKE一堆臭小子充數\n我們的派對 我歡迎臭婊子加入\n尊敬我的前輩不管搭幾次BEAT\n慶功的香檳又忘了開幾支去\nWE PARTY SO HARD 你待在家裡視訊\n我項鍊99K管你押幾次韻\n\n超爽的開著二手車 聽著饒舌歌\n口音老鄉土 來自南方的台客素T穿白色\nWHAT YOU GONNA DO\nSOUTHSIDE SOUTHSIDE 台北台北市\nSOUTHSIDE SOUTHSIDE 台北台北CHICKS\nSOUTHSIDE SOUTHSIDE 台北台北市\nSOUTHSIDE SOUTHSIDE 台北台北KIDS\n\n\n小春 KENZY\n自己賺的我爽就花 奢華的都市 簡單過生活\n從松山開始走跳來到木柵早就賺到第一台二手車\n比出手勢打招呼 我們點頭\nHOLLA AT ME不在乎是否眼熟\n台北以南的城市 四處走跳\nHULSTE EVERY DAY 管誰跟我有仇\n我賺來的錢根本不需繳車貸\n沒在背債鈔票塞褲帶自己承擔好壞\n想陷害我 見怪不怪 但是現代 改朝換代 妹仔知道該要選誰變態\nBABY IN MY CAR 車廂還有球棒\n別隨意按喇叭棒子往你身上撞\n習慣溜搭開著車在街上晃\n在道路上ㄍㄟㄔㄨㄚ 跟我兄弟漂浪\n\n超爽的開著二手車 聽著饒舌歌\n口音老鄉土 來自南方的台客素T穿白色\nWHAT YOU GONNA DO\nSOUTHSIDE SOUTHSIDE 台北台北市\nSOUTHSIDE SOUTHSIDE 台北台北CHICKS\nSOUTHSIDE SOUTHSIDE 台北台北市\nSOUTHSIDE SOUTHSIDE 台北台北KIDS\n\n大淵 MUTA\n副駕車位 限乘辣妹最辣的台妹 讓你先插隊跟我去LONG DRIVE \n忘記那些雜碎白襪配拖鞋 老鄉中的FASHION關鍵 \n車身都降低 然後ㄍㄧㄥ著我的低音快當機 \n要當心 前面照相機 超速被拍的時候我還在車上吃炸雞買東西不喜歡下車 \n他們知道我寫的生活不是假的 \n認識我的人才知道品味跟價格\n我開的車是九零紅色五門的雅哥四處亂晃開車 讓妹們都愛著 \n南方老鄉的PARTY讓她們覺得太扯 就愛泡妞改車 \n再把兄弟載著代表南方的老鄉我就是來自木柵的台客\n\n超爽的開著二手車 聽著饒舌歌\n口音老鄉土 來自南方的台客素T穿白色\nWHAT YOU GONNA DO\nSOUTHSIDE SOUTHSIDE 台北台北市\nSOUTHSIDE SOUTHSIDE 台北台北CHICKS\nSOUTHSIDE SOUTHSIDE 台北台北市\nSOUTHSIDE SOUTHSIDE 台北台北KIDS',25,'2016-12-29 21:36:22','MJ116','https://www.youtube.com/watch?v=lLIQczb7V30','lLIQczb7V30'),
	(51,'Starr Chen Feat. J. Sheon - 早上PAPAPA ','大早醒來 就是要PA\n隔壁說 媽阿這扯了吧\n為何要啪 我壓力大\n跟著turn up 接力PA\n早晨PA加早餐 點份雙腸搗蛋\n蛋記得要飽滿 這美味直衝腦幹\n健康操獻兩招 忙一大早 WOW WOW ah ah ah ah\n現在要 你知道PA的驕傲\nPA PA PA 張開雙手\nDON’T CALL US CARZY 怎麼PA隨妳\nPA PA PA 張開雙手\nDON’T CALL US CARZY 怎麼PA隨妳\nPA PA PA 張開雙手\n\nPA像聖誕節的早晨 PA PA扮成聖誕老人\n趁妳睡得深 折成迴紋針\n六點零九分 PA PA PA PA完我還沒醒\nPA PA PA PA 臉根本還沒洗 反正妳的牙垢也還沒清\n我說他 萌萌躂 摸摸他 不婆媽 傻了嗎\n把妳收服變我的寶可夢 變態的回憶像剛做完的夢\n陽光填滿充滿窗簾的縫 BANG BANG PA PA PA 張開雙手 (先PA了再說)\nDON’T CALL US CARZY 怎麼PA隨妳\nPA PA PA 張開雙手\nDON’T CALL US CARZY 怎麼PA隨妳 (當妳老哥哥)\nPA PA PA 張開雙手\n\n早上就要PA PA PA (PA PA PA)\n晚上也要萌萌DA (PA什麼 怕什麼 跟著就玩)\n早上就要PA PA PA (PA PA PA)\n晚上也要萌萌DA',25,'2016-12-29 21:37:53','Starr Chen 、J. Sheon ','https://www.youtube.com/watch?v=yOEpwDu7OB4','yOEpwDu7OB4'),
	(52,'We don\'t talk anymore','We don\'t talk anymore, we don\'t talk anymore\nWe don\'t talk anymore, like we used to do\nWe don\'t love anymore\nWhat was all of it for?\nOh, we don\'t talk anymore, like we used to do\n\n',36,'2016-12-29 23:22:55','','https://www.youtube.com/watch?v=3AtDnEC4zak','3AtDnEC4zak'),
	(53,'Sing Me To Sleep','Wait a second, let me catch my breath\nRemind me how it feels to hear your voice\nYour lips are movin\', I can\'t hear a thing\n\n\ninRead invented by Teads\n\nLivin\' life as if we had a choice\n\nAnywhere, anytime\nI would do anything for you\nAnything for you\nYesterday got away\nMelodies stuck inside your head\nA song in every breath\n\nSing me to sleep now\nSing me to sleep\nOh, just sing me to sleep now\nSing me to sleep\n\nRemember me now, time cannot erase\nI can hear your whispers in my mind\nI\'ve become what you cannot embrace\nOur memory will be my lullaby\n\nSing me to sleep now\nSing me to sleep\nOh, just sing me to sleep now\nSing me to sleep\n\nA-anytime\nI would do\nTime away\nYesterday-day-day-day\n\nA-anytime\nI would do\nTime away\nYesterday-day-day-day',38,'2016-12-29 23:39:16','Alan Walker','https://www.youtube.com/watch?v=2i2khp_npdE','2i2khp_npdE'),
	(55,'玖壹壹-我的路','唱歌我可以 來吃苦我可以 不管作啥我可以 什麼事情我都可以\n唱歌我可以 來吃苦我可以 不管作啥我可以 什麼事情我都可以\n\n細漢時 選到歹路來走 厝裡人的話都沒再給他聽\n對人來做兄弟 想欲改變生活 有時陣要錢 咱也不要命\n說到你 我友情親像斷背山 我常常幫你度過真多難關\n感謝你在我身邊 將我往正路來牽 這份情我這世人還不完\n\n這是我選擇的路 管他有誰人在乎 一切的哭的 笑的 痛的幸福一起共度\n我們要一起長大 共同到每個國度 要聽到你的掌聲 尖叫就是我的全部\n這是我們走的路 管他有誰人在乎 感謝你在我身邊 給我扶持給我幫助\n我絕不會認輸 慢慢走一步一步 兄弟我們心連著心走 我們的路\n\n唱歌我也行 來吃苦我也行 不管作啥我也行 什麼事情我都也行\n唱歌我也行 來吃苦我也行 不管作啥我也行 什麼事情我都也行\n\n有的人非常渴望自己夢想 能夠實現 就會以實際行動去完成他\n有的人每天都在做白日夢 以為就會實現夢想 你省省吧~\n媽媽擔心我會學壞 到廟?求福到廟裡拜拜\n希望自己兒子有個好的未來 普遍家庭都這樣我不意外\n你的路 繼續走 你的夢 不會停 只要你想完成 這一局 一定行\n\n走一半 走一半 就放棄 不做完 太可惜 不就白費所有力氣\n就算翻腳都還是繼續 走 不會游泳的人也都學會 游\n每個環節我與我的兄弟團結 遇到困難就解決 這是我的路\n\n這是我的路這是這是我的路\n\n\n這是我選擇的路 管他有誰人在乎 一切的哭的 笑的 痛的幸福一起共度\n我們要一起長大 共同到每個國度 要聽到你的掌聲 尖叫就是我的全部\n這是我們走的路 管他有誰人在乎 感謝你在我身邊 給我扶持給我幫助\n我絕不會認輸 慢慢走一步一步 兄弟我們心連著心走 我們的路?',25,'2016-12-30 20:15:40','玖壹壹','https://www.youtube.com/watch?v=mNMH7SLGDOw','mNMH7SLGDOw');

/*!40000 ALTER TABLE `tblyrics` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tbuser
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbuser`;

CREATE TABLE `tbuser` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(100) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `intro` varchar(500) DEFAULT NULL,
  `tag` text,
  `type` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `token` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tbuser` WRITE;
/*!40000 ALTER TABLE `tbuser` DISABLE KEYS */;

INSERT INTO `tbuser` (`id`, `account`, `password`, `gender`, `intro`, `tag`, `type`, `name`, `token`)
VALUES
	(25,'1ggaa','40bd001563085fc35165329ea1ff5c5ecbdbbeef',1,'12','11',0,'UM','d6edb782de4266e7f9ed388324a74ab4e67fb5ac'),
	(36,'b0x0d','40bd001563085fc35165329ea1ff5c5ecbdbbeef',2,'','',0,'0.0a','e8f4300688c8816ea2e19cfd8ffb66d442e3508b'),
	(38,'ksdd33','7d9e9f21ecc34b14922e2e6dbb8ad020669b3ba4',1,'','',0,'LI-TSUN','a8ca0c48ebba800fe0bed0ba045a3c3f25361a63');

/*!40000 ALTER TABLE `tbuser` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
