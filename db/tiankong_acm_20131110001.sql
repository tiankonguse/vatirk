-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 11 月 10 日 12:37
-- 服务器版本: 5.1.68
-- PHP 版本: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `tiankong_acm`
--

-- --------------------------------------------------------

--
-- 表的结构 `vatirk_contest`
--

CREATE TABLE IF NOT EXISTS `vatirk_contest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `start_time` bigint(20) NOT NULL,
  `oj` varchar(45) NOT NULL,
  `duration` bigint(20) DEFAULT '18000',
  `cid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1339 ;

--
-- 转存表中的数据 `vatirk_contest`
--

INSERT INTO `vatirk_contest` (`id`, `name`, `link`, `start_time`, `oj`, `duration`, `cid`) VALUES
(1, 'Data Structures Spring 2013 Exam 3', 'http://acm.sjtu.edu.cn/OnlineJudge/contest/70', 1367834400, 'SJTU', 18000, NULL),
(2, '组队赛第三场', 'http://www.acmore.net/contest.php?cid=1014', 1368093600, 'CSUST', 18000, NULL),
(3, '2013年每周一赛第六场', 'http://soj.me/contest_detail.php?cid=1001', 1368097200, 'SYSU', 18000, NULL),
(4, 'Google Codejam Round 1C', 'http://code.google.com/codejam', 1368349200, 'Google', 18000, NULL),
(5, '上海交通大学“超级码力”程序设计大奖赛 5月月赛', 'http://202.120.61.1/contests/13/', 1368356400, 'SJTU', 18000, NULL),
(6, 'Google Codejam Round 2', 'http://code.google.com/codejam', 1370095200, 'Google', 18000, NULL),
(7, 'Marathon Round 3', 'http://community.topcoder.com/tco13/marathon/', 1370451600, 'Topcoder', 18000, NULL),
(8, 'Google Codejam Round 3', 'http://code.google.com/codejam', 1371304800, 'Google', 18000, NULL),
(9, '126 - The 10th Zhejiang Provincial Collegiate Programming Contest', 'http://acm.zju.edu.cn/onlinejudge/contestInfo.do?contestId=347', 1368248400, 'ZJU', 18000, NULL),
(10, 'XI Programming Olympiads in Murcia (Spain)', 'http://uva.onlinejudge.org/index.php?option=com_onlinejudge&amp;Itemid=12&amp;page=show_contest&amp;contest=319', 1368257400, 'UVA', 18000, NULL),
(11, 'Algorithm Round 2C', 'http://community.topcoder.com/tco13/algorithm/', 1368288000, 'Topcoder', 18000, NULL),
(18, 'SRM 580', 'http://community.topcoder.com/tc?module=MatchDetails&amp;rd=15500', 1369497600, 'Topcoder', 18000, NULL),
(19, 'SRM 581', 'http://community.topcoder.com/tc?module=MatchDetails&amp;rd=15501', 1370307600, 'Topcoder', 18000, NULL),
(20, 'Algorithm Round 3A', 'http://community.topcoder.com/tco13/algorithm/', 1370707200, 'Topcoder', 18000, NULL),
(21, 'SRM 582', 'http://community.topcoder.com/tc?module=MatchDetails&amp;rd=15502', 1371207600, 'Topcoder', 18000, NULL),
(22, 'SRM 583', 'http://community.topcoder.com/tc?module=MatchDetails&amp;rd=15503', 1371567600, 'Topcoder', 18000, NULL),
(23, 'Algorithm Round 3B', 'http://community.topcoder.com/tco13/algorithm/', 1371916800, 'Topcoder', 18000, NULL),
(24, '12级随机算法', 'http://acm.xmu.edu.cn/JudgeOnline/contest.php?id=116', 1368006867, 'XMU', 18000, NULL),
(25, '2013 UESTC ACM Training for Search Algorithm', 'http://acm.uestc.edu.cn/contest.php?cid=213', 1368072000, 'UESTC', 18000, NULL),
(26, 'Codeforces Round #183 (Div. 1)', 'http://codeforces.com/contests', 1368363600, 'Codeforces', 18000, NULL),
(27, 'Codeforces Round #183 (Div. 2)', 'http://codeforces.com/contests', 1368363600, 'Codeforces', 18000, NULL),
(32, '2013校内赛之热身赛', 'http://202.117.21.117/xjoj/contest.php?act=home&amp;cid=74', 1368144000, 'XJTU', 18000, NULL),
(33, '2013校内赛之正式赛', 'http://202.117.21.117/xjoj/contest.php?act=home&amp;cid=75', 1368331200, 'XJTU', 18000, NULL),
(38, 'imut--Rookie 进步赛5.10', 'http://ac.nbutoj.com/Contest/view/id/52.xhtml', 1368183600, 'NBUT', 18000, NULL),
(39, '“网宿科技杯”厦门大学第十届程序设计竞赛 现场决赛', 'http://acm.xmu.edu.cn/JudgeOnline/contest.php?id=117', 1368331200, 'XMU', 18000, NULL),
(49, 'TJU ACM/ICPC Team Selection 2013 Round1A', 'http://acm.tju.edu.cn/toj/contest/contest166.html', 1368252000, 'TJU', 18000, NULL),
(50, '2013“嘉杰信息”杯ACM/ICPC湘潭多省程序设计竞赛暨湘潭市第五届大学生程序设计竞赛', 'http://202.197.224.59/OnlineJudge2/index.php', 1368264600, 'XTU', 18000, NULL),
(51, '2013 联合训练赛-湘潭大学', 'http://202.197.224.59/OnlineJudge2/index.php', 1368334800, 'XTU', 18000, NULL),
(60, 'Testing Round #6', 'http://codeforces.com/contests', 1368302400, 'Codeforces', 18000, NULL),
(65, '“网宿科技杯”厦门大学第十届程序设计竞赛 现场热身赛', 'http://acm.xmu.edu.cn/JudgeOnline/contest.php?id=118', 1368325800, 'XMU', 18000, NULL),
(82, '2013金山西山居创意游戏程序挑战赛——初赛（1）', 'http://acm.hdu.edu.cn/contests/contest_show.php?cid=451&amp;PHPSESSID=jgtsef66gt6vnfhfp23mbnb9s2', 1368788400, 'HDU', 18000, '451'),
(83, '2013金山西山居创意游戏程序挑战赛——初赛（2）', 'http://acm.hdu.edu.cn/contests/contest_show.php?cid=452&amp;PHPSESSID=jgtsef66gt6vnfhfp23mbnb9s2', 1368853200, 'HDU', 18000, '452'),
(84, '2013金山西山居创意游戏程序挑战赛——初赛（3）', 'http://acm.hdu.edu.cn/contests/contest_show.php?cid=453&amp;PHPSESSID=jgtsef66gt6vnfhfp23mbnb9s2', 1368874800, 'HDU', 18000, '453'),
(85, '2013金山西山居创意游戏程序挑战赛——初赛（4）', 'http://acm.hdu.edu.cn/contests/contest_show.php?cid=454&amp;PHPSESSID=jgtsef66gt6vnfhfp23mbnb9s2', 1368961200, 'HDU', 18000, '454'),
(86, '二分图练习', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=71#overview', 1367726400, 'nenu', 18000, NULL),
(87, 'POJ Monthly--2007.08.05', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20050#overview', 1370275200, 'hust', 18000, NULL),
(88, 'POJ Monthly--2007.07.08', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20051#overview', 1370275200, 'hust', 18000, NULL),
(95, 'XTU2013专题训练----1', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20350#overview', 1363104000, 'hust', 18000, NULL),
(96, 'Nya~Meow~Miao~喵喵喵~咩~蛤蛤', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20366#overview', 1366214400, 'hust', 18000, NULL),
(97, '&lt;&lt;算法设计与分析&gt;&gt;动态规划一章例题', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20418#overview', 1363171800, 'hust', 18000, NULL),
(99, 'CDQZ Graph Training 4', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20427#overview', 1363177800, 'hust', 18000, NULL),
(100, 'Graph Theory - Union-Find Sets', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20441#overview', 1363219200, 'hust', 18000, NULL),
(101, ' Graph Theory - Match(1)', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20443#overview', 1363219200, 'hust', 18000, NULL),
(102, 'Graph Theory - Shortest Path(1)', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20444#overview', 1363219200, 'hust', 18000, NULL),
(103, 'Graph Theory - Shortest Path(2)', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20446#overview', 1363219200, 'hust', 18000, NULL),
(104, ' Graph Theory - Network Flow', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20447#overview', 1363219200, 'hust', 18000, NULL),
(105, 'Graph Theory - Assignment Problem', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20448#overview', 1363219200, 'hust', 18000, NULL),
(106, ' Graph Theory - Minimum Spanning Tree', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20449#overview', 1363219200, 'hust', 18000, NULL),
(107, ' Graph Theory - Others', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20452#overview', 1363219200, 'hust', 18000, NULL),
(108, 'Dynamic Programming(1)', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20455#overview', 1363219200, 'hust', 18000, NULL),
(109, '  Dynamic Programming(2)', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20457#overview', 1363219200, 'hust', 18000, NULL),
(110, 'Search(1)', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20458#overview', 1363219200, 'hust', 18000, NULL),
(111, 'Search(2)', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20459#overview', 1363219200, 'hust', 18000, NULL),
(112, 'Data Structure - Segment Tree', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20460#overview', 1363219200, 'hust', 18000, NULL),
(113, '个人学习', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20495#overview', 1363276800, 'hust', 18000, NULL),
(114, '网络流', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20496#overview', 1363276800, 'hust', 18000, NULL),
(115, '计算几何Trainning 1', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20511#overview', 1363310160, 'hust', 18000, NULL),
(116, 'ds6.0', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20524#overview', 1363363225, 'hust', 18000, NULL),
(117, 'Level - 1', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20574#overview', 1363387200, 'hust', 18000, NULL),
(120, '2001 - Vancouver', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20631#overview', 1363492800, 'hust', 18000, NULL),
(121, '2012 Changchun Onsite', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20655#overview', 1363518600, 'hust', 18000, NULL),
(122, 'CDQZ Game Theory', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20663#overview', 1363527000, 'hust', 18000, NULL),
(123, 'Vayen的蛋疼网络流', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20681#overview', 1363582800, 'hust', 18000, NULL),
(124, 'kmp(3)', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20685#overview', 1363584000, 'hust', 18000, NULL),
(125, '2000 - Orlando', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20693#overview', 1363649400, 'hust', 18000, NULL),
(126, '锻炼思维III', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20718#overview', 1363622400, 'hust', 18000, NULL),
(127, ' 锻炼思维IV', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20719#overview', 1363622400, 'hust', 18000, NULL),
(128, '锻炼思维V', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20721#overview', 1363622400, 'hust', 18000, NULL),
(130, 'for graph theory', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20730#overview', 1363662000, 'hust', 18000, NULL),
(131, '一个屌丝的自我修养0x00----------入门经典-&gt;数据结构-&gt;图', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20737#overview', 1363668600, 'hust', 18000, NULL),
(133, '2010 Asia Chengdu Regional Contest ', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20742#overview', 1363680360, 'hust', 18000, NULL),
(134, '训练之南第二章数学基础p0', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20757#overview', 1363688400, 'hust', 18000, NULL),
(139, 'Fall Contest #2', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20817#overview', 1367834700, 'hust', 18000, NULL),
(141, '矩阵+高斯消元', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20851#overview', 1363876800, 'hust', 18000, NULL),
(143, 'For Zipu and Emi', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20897#overview', 1363963440, 'hust', 18000, NULL),
(144, '一个屌丝的自我修养0x02----------Dynamic Programming Part.1', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20905#overview', 1363968600, 'hust', 18000, NULL),
(159, 'Andrew Stankevich&#39;s Contest #10', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21084#overview', 1365220800, 'hust', 18000, NULL),
(171, 'DFS+BFS（7）——图论算法', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21101#overview', 1364306400, 'hust', 18000, NULL),
(172, 'DFS+BFS（8）——图论算法(OK)', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21102#overview', 1364306400, 'hust', 18000, NULL),
(173, 'DFS+BFS（9）——图论算法(OK)', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21104#overview', 1364306400, 'hust', 18000, NULL),
(174, 'DFS+BFS（10）——图论算法', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21105#overview', 1364306400, 'hust', 18000, NULL),
(180, '练习测试', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21221#overview', 1364525100, 'hust', 18000, NULL),
(181, 'drn_高斯消元专题', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21226#overview', 1364527800, 'hust', 18000, NULL),
(185, 'selftraining ', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21344#overview', 1364738400, 'hust', 18000, NULL),
(187, '2013 ACM Heilongjiang Provincial Programming Contest HIT Warmup', 'http://acm.hit.edu.cn/hoj/contest/view?id=100224', 1368334800, 'HIT', 18000, NULL),
(188, 'TJU ACM/ICPC Team Selection 2013 Round1B', 'http://acm.tju.edu.cn/toj/contest/contest167.html', 1368338400, 'TJU', 18000, NULL),
(193, '杭电ACM程序设计竞赛（2013’05）(暨暑期集训队选拔赛)', 'http://acm.hdu.edu.cn/contests/contest_show.php?cid=465&amp;PHPSESSID=2a199nij1o16koq941tjpsa8n3', 1369540800, 'HDU', 18000, '465'),
(205, '一个屌丝的自我修养0x06----------20130331', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21434#overview', 1364833800, 'hust', 18000, NULL),
(213, 'NBUT-2013校赛·网络同步赛', 'http://ac.nbutoj.com/Contest/view/id/53.xhtml', 1368851400, 'NBUT', 18000, NULL),
(291, 'ShanDong Muti-University Training Contest III', 'http://acm.upc.edu.cn/contest.php?cid=1027', 1368698400, 'UPC', 18000, NULL),
(292, 'ShanDong Muti-University Training Contest II', 'http://acm.upc.edu.cn/contest.php?cid=1026', 1368525600, 'UPC', 18000, NULL),
(314, '2013/5/15', 'http://acm.neu.edu.cn/hustoj/contest.php?cid=1022', 1368612000, 'NEU', 18000, NULL),
(315, 'IEEE DataStructure Spring 2013 Exam3', 'http://acm.sjtu.edu.cn/OnlineJudge/contest/72', 1368611400, 'SJTU', 18000, NULL),
(317, 'Croc Champ 2013 - Trial Contest (Finals)', 'http://codeforces.com/contests', 1368692400, 'Codeforces', 18000, NULL),
(320, '&nbsp;Sorting【练习1】', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19586&PHPSESSID=6a84jbdh2fem0ndej8v0tf4ni4', 1368680400, 'HDU', 1339200, '19586'),
(321, '&nbsp;【图论09】动态树', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=16642&PHPSESSID=6a84jbdh2fem0ndej8v0tf4ni4', 1368347160, 'HDU', 1814400, '16642'),
(322, '&nbsp;【图论08】伸展树', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=16641&PHPSESSID=6a84jbdh2fem0ndej8v0tf4ni4', 1368347100, 'HDU', 1814400, '16641'),
(323, '&nbsp;【图论07】线段树', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=16640&PHPSESSID=6a84jbdh2fem0ndej8v0tf4ni4', 1368347040, 'HDU', 1814400, '16640'),
(324, '&nbsp;【趣题03】图论趣题', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=16428&PHPSESSID=6a84jbdh2fem0ndej8v0tf4ni4', 1368346500, 'HDU', 1814400, '16428'),
(325, '&nbsp;【趣题02】动态规划趣题', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=16245&PHPSESSID=6a84jbdh2fem0ndej8v0tf4ni4', 1368346440, 'HDU', 1814400, '16245'),
(326, '&nbsp;【趣题01】搜索趣题', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=11690&PHPSESSID=6a84jbdh2fem0ndej8v0tf4ni4', 1368346380, 'HDU', 1814400, '11690'),
(327, '&nbsp;hunau pre-game test', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19520&PHPSESSID=6a84jbdh2fem0ndej8v0tf4ni4', 1368086400, 'HDU', 849600, '19520'),
(328, '&nbsp;A^B%C', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19512&PHPSESSID=6a84jbdh2fem0ndej8v0tf4ni4', 1368019680, 'HDU', 18000, '19512'),
(329, '&nbsp;★第一届开放式新人杯（延期） 欢迎大家参加！★', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19062&PHPSESSID=6a84jbdh2fem0ndej8v0tf4ni4', 1367942400, 'HDU', 2160000, '19062'),
(330, '&nbsp;2-sat For KMP_KING', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19472&PHPSESSID=6a84jbdh2fem0ndej8v0tf4ni4', 1367824200, 'HDU', 1296000, '19472'),
(331, '&nbsp; 【zhbit】_赛前复习――广搜', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19241&PHPSESSID=6a84jbdh2fem0ndej8v0tf4ni4', 1367419800, 'HDU', 18000, '19241'),
(332, '&nbsp;博弈【HDU】', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19407&PHPSESSID=6a84jbdh2fem0ndej8v0tf4ni4', 1367395200, 'HDU', 2246400, '19407'),
(333, '&nbsp;【练习13】博弈02', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19392&PHPSESSID=6a84jbdh2fem0ndej8v0tf4ni4', 1367193600, 'HDU', 1900800, '19392'),
(334, '&nbsp;【练习13】博弈01', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19391&PHPSESSID=6a84jbdh2fem0ndej8v0tf4ni4', 1367193600, 'HDU', 1900800, '19391'),
(335, '&nbsp;1', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19352&PHPSESSID=6a84jbdh2fem0ndej8v0tf4ni4', 1366973400, 'HDU', 2322000, '19352'),
(336, '&nbsp;19930601', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19351&PHPSESSID=6a84jbdh2fem0ndej8v0tf4ni4', 1366972200, 'HDU', 2322000, '19351'),
(337, '&nbsp;【搜索】摸路', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=15658&PHPSESSID=6a84jbdh2fem0ndej8v0tf4ni4', 1366948800, 'HDU', 2160000, '15658'),
(338, '&nbsp;华南师范大学2012年ACM程序设计竞赛（初赛+决赛无尽版）', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=14855&PHPSESSID=6a84jbdh2fem0ndej8v0tf4ni4', 1366639200, 'HDU', 2419200, '14855'),
(341, 'Croc Champ 2013 - Finals', 'http://codeforces.com/contests', 1368784800, 'Codeforces', 18000, NULL),
(344, '&nbsp;Virtual Contest', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19600&PHPSESSID=nv6qrh0b028qbre5sdrh04al56', 1368719940, 'HDU', 1555140, '19600'),
(349, '&nbsp;KMP【练习2】', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19605&PHPSESSID=n6ej0hf0qe1ol1nr2tnq3ih0v7', 1368788400, 'HDU', 1796400, '19605'),
(352, '训练指南第六章1-3', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21622#overview', 1367251200, 'hust', 18000, NULL),
(353, '训练指南第六章1-4', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21624#overview', 1367251200, 'hust', 18000, NULL),
(354, '&nbsp;Knapsack Problem For 12', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19620&PHPSESSID=9jega7spk248587ku41h7cri06', 1368840600, 'HDU', 1296000, '19620'),
(355, '5/18新手练习赛', 'http://acm.neu.edu.cn/hustoj/contest.php?cid=1023', 1368852000, 'NEU', 18000, NULL),
(356, '一个屌丝的自我修养0x07----------Volume 3. Brute Force :: Elementary Skills ', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21682#overview', 1365235800, 'hust', 18000, NULL),
(357, '&nbsp;江西师范大学ACM协会 4月月赛 赛后重挂', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19623&PHPSESSID=h2hl97rmjb9pcf72d8vfhe30i2', 1368849600, 'HDU', 648000, '19623'),
(358, '一个屌丝的自我修养0x08----------Volume 3. Brute Force :: Backtracking - Easy ', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21683#overview', 1365238800, 'hust', 18000, NULL),
(369, 'test', 'http://acm.neu.edu.cn/hustoj/contest.php?cid=1024', 1368863400, 'NEU', 18000, NULL),
(376, '一个屌丝的自我修养0x09----------Volume 3. Brute Force :: Backtracking - Hard', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21684#overview', 1365238800, 'hust', 18000, NULL),
(392, '&nbsp;DP֮·һ', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19572&PHPSESSID=77k7hgktfhvnf1dmhvbs9vck47', 1368806400, 'HDU', 1296000, '19572'),
(520, '程序设计周赛大一组暨周赛热身赛11月26号午时', 'http://acm.upc.edu.cn/contest.php?cid=1012', 1322280000, 'UPC', 18000, '	1012'),
(582, 'NEFU奇葩的搜索练习', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21207#overview', 1364467200, 'hust', 5184000, '21207'),
(595, '训练指南第一章2-3', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21414#overview', 1367251200, 'hust', 5115600, '21414'),
(596, '训练之南第一章2-4', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21415#overview', 1367251200, 'hust', 5115600, '21415'),
(603, '训练指南第二章2-3', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21448#overview', 1367251200, 'hust', 5115600, '21448'),
(604, '训练指南第二章2-4', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21450#overview', 1367251200, 'hust', 5115600, '21450'),
(605, '训练指南第二章2-5', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21452#overview', 1367251200, 'hust', 5115600, '21452'),
(606, '训练指南第二章2-6', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21453#overview', 1367251200, 'hust', 5115600, '21453'),
(608, '训练指南第三章1-1', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21481#overview', 1367251200, 'hust', 5115600, '21481'),
(609, '训练指南第三章1-2', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21482#overview', 1367251200, 'hust', 5115600, '21482'),
(610, '训练指南第三章1-3', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21483#overview', 1367251200, 'hust', 5115600, '21483'),
(611, '训练指南第三章1-5', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21484#overview', 1367251200, 'hust', 5115600, '21484'),
(612, '训练指南第四章1-1', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21485#overview', 1367251200, 'hust', 5115600, '21485'),
(613, '训练指南第四章1-2', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21486#overview', 1367251200, 'hust', 5115600, '21486'),
(614, '训练指南第四章1-3', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21487#overview', 1367251200, 'hust', 5115600, '21487'),
(628, '一个屌丝的自我修养0x0A----------Volume 3. Brute Force :: Implicit Graph Traversal ', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21685#overview', 1365238800, 'hust', 5184000, '21685'),
(630, 'SRM 579', 'http://community.topcoder.com/tc?module=MatchDetails&amp;rd=15499', 1368892800, 'Topcoder', 18000, '0'),
(631, '2013 UESTC ACM-ICPC Summer Training Team Selection (1)', 'http://acm.uestc.edu.cn/contest.php?cid=214', 1368936000, 'UESTC', 18000, '0'),
(632, 'Codeforces Round #184 (Div. 2)', 'http://codeforces.com/contests', 1368968400, 'Codeforces', 18000, '0'),
(634, 'ACM ICPC World Finals 2013 Warmup', 'http://uva.onlinejudge.org/index.php?option=com_onlinejudge&amp;Itemid=12&amp;page=show_contest&amp;contest=315', 1369472400, 'UVA', 18000, '0'),
(662, '&nbsp;asdasd', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19631&PHPSESSID=h2l8u4svucigh280vla5f5kk44', 1368878400, 'HDU', 1630800, '19631'),
(675, 'TJU ACM/ICPC Team Selection 2013 Round2B', 'http://acm.tju.edu.cn/toj/contest/contest169.html', 1368943200, 'TJU', 18000, '0'),
(681, 'May Cook-off 2013', 'http://www.codechef.com/COOK34/', 1368979200, 'Codechef', 18000, '0'),
(682, 'Online Contest Round #13', 'http://acm.guet.edu.cn/contests', 1369998000, 'GUET', 18000, '0'),
(692, '&nbsp;XTU_DPѵ', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=15337&PHPSESSID=joeq2angpjuq5jebvef1sr2j46', 1368859800, 'HDU', 2160000, '15337'),
(696, 'Shandong Muti-University Trainng Contest', 'http://acm.upc.edu.cn/contest.php?cid=1025', 1367748000, 'UPC', 18000, '	1025'),
(697, '2013年中国石油大学程序设计竞赛决赛', 'http://acm.upc.edu.cn/contest.php?cid=1024', 1367706600, 'UPC', 18000, '	1024'),
(698, '2013年中国石油大学程序设计竞赛 热身赛', 'http://acm.upc.edu.cn/contest.php?cid=1022', 1367434800, 'UPC', 18000, '	1022'),
(701, '训练指南第四章1-4', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21488#overview', 1367251200, 'hust', 5115600, '21488'),
(702, '训练指南第五章1-1', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21489#overview', 1367251200, 'hust', 5115600, '21489'),
(703, '训练指南第五章1-2', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21615#overview', 1367251200, 'hust', 5115600, '21615'),
(704, '训练指南第五章1-3', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21616#overview', 1367251200, 'hust', 5115600, '21616'),
(705, '训练指南第五章1-4', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21617#overview', 1367251200, 'hust', 5115600, '21617'),
(716, '一个屌丝的自我修养0x0B----------Volume 3. Brute Force :: Hashing / Sets ', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21686#overview', 1365238800, 'hust', 5184000, '21686'),
(720, '5月19日新生赛', 'http://acm.neu.edu.cn/hustoj/contest.php?cid=1025', 1368937800, 'NEU', 18000, '	1025'),
(721, '&nbsp;大一acmer组队打怪之四', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19604&PHPSESSID=ote5bqhhls3784d82v61klhar4', 1368929700, 'HDU', 878400, '19604'),
(722, '一个屌丝的自我修养0x0C----------Volume 3. Brute Force :: Rujia Liu&#39;s Problems for Beginners ', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21687#overview', 1365238800, 'hust', 5184000, '21687'),
(730, '二分图练习', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=71#overview', 1367726400, 'nenu', 2592000, '71'),
(735, 'Real Contest', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=83#overview', 1368981000, 'nenu', 104400, '83'),
(736, 'ShanDong Muti-University Training Contest IV', 'http://acm.upc.edu.cn/contest.php?cid=1028', 1369044000, 'UPC', 18000, '	1028'),
(737, 'NEFU  implementation 练习题', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21692#overview', 1365243420, 'hust', 5184000, '21692'),
(738, '&nbsp;7201_Fly_youth', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19656&PHPSESSID=5khqk9jr7kmugmnrfgb52spi42', 1369029600, 'HDU', 18000, '19656'),
(739, '好无聊~', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21723#overview', 1365273780, 'hust', 5184000, '21723'),
(740, '5.22新手赛', 'http://acm.neu.edu.cn/hustoj/contest.php?cid=1026', 1369218600, 'NEU', 18000, '	1026'),
(742, '&nbsp;背包【练习3】', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19662&PHPSESSID=k6p5ovtugksfv0apc0r19fhh44', 1369047600, 'HDU', 2228400, '19662'),
(745, '狗狗40（1）', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21730#overview', 1365307200, 'hust', 5184000, '21730'),
(746, '狗狗40（2）', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21731#overview', 1365307200, 'hust', 5184000, '21731'),
(747, 'Matrix', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21758#overview', 1365350400, 'hust', 4338000, '21758'),
(748, '图论基础', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21795#overview', 1365415200, 'hust', 4338000, '21795'),
(749, '图论1-DFS及其应用', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21796#overview', 1365415200, 'hust', 4338000, '21796'),
(750, 'watercc', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=88#overview', 1369197000, 'nenu', 18000, '88'),
(751, 'vatirk练习02', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=84#overview', 1369119600, 'nenu', 108900, '84'),
(754, '&nbsp;Summer Exercise', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19673&PHPSESSID=b9v0dndeo5vlhu0oasqvr75792', 1369202400, 'HDU', 864000, '19673'),
(755, '&nbsp;吉林师大计算机ACM', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19550&PHPSESSID=b9v0dndeo5vlhu0oasqvr75792', 1369202400, 'HDU', 12600, '19550'),
(756, '图论2-最短路', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21797#overview', 1365415200, 'hust', 4338000, '21797'),
(757, '图论3-最小生成树', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21798#overview', 1365415200, 'hust', 4338000, '21798'),
(758, '图论4-二分图匹配', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21799#overview', 1365415200, 'hust', 4338000, '21799'),
(759, '图论5-网络流', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21800#overview', 1365415200, 'hust', 4338000, '21800'),
(760, '&nbsp;练习-首届华中区程序设计邀请赛暨第十届武汉大学程序设计大赛', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19677&PHPSESSID=birss36u7bjptmn6b93avepnc7', 1369223400, 'HDU', 259200, '19677'),
(761, '2012 ACM-ICPC China Shandong Provincial Programming Contest(Practice)', 'http://acm.upc.edu.cn/contest.php?cid=1029', 1369476000, 'UPC', 18000, '	1029'),
(762, '基础数据结构', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21810#overview', 1365420600, 'hust', 4338000, '21810'),
(763, '数据结构2-区间信息维护', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21811#overview', 1365420600, 'hust', 4338000, '21811'),
(764, '数据结构3-字符串', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21812#overview', 1365420600, 'hust', 4338000, '21812'),
(765, '11', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=89#overview', 1369441800, 'nenu', 18000, '89'),
(768, '数据结构4-排序二叉树', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21813#overview', 1365420600, 'hust', 4338000, '21813'),
(769, '数学基础1-组合计数', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21814#overview', 1365422400, 'hust', 4338000, '21814'),
(770, '数学基础2-数论', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21815#overview', 1365422400, 'hust', 4338000, '21815'),
(771, '&nbsp;大一acm打怪，打打打~~~~~', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19688&PHPSESSID=k3thdt3ts6je0nk900e48etuu2', 1369470120, 'HDU', 446400, '19688'),
(772, '&nbsp;搜索1【练习4】', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19685&PHPSESSID=k3thdt3ts6je0nk900e48etuu2', 1369393200, 'HDU', 2228400, '19685'),
(773, '&nbsp;字典树【练习5】', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19686&PHPSESSID=k3thdt3ts6je0nk900e48etuu2', 1369393200, 'HDU', 2314800, '19686'),
(774, '数学基础3-组合游戏', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21816#overview', 1365422400, 'hust', 4338000, '21816'),
(775, '数学基础4-概率', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21817#overview', 1365422400, 'hust', 4338000, '21817'),
(776, '数学基础5-置换', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21818#overview', 1365422400, 'hust', 4338000, '21818'),
(777, '数学基础6-矩阵与线性方程组', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21819#overview', 1365422400, 'hust', 4338000, '21819'),
(778, '数学基础7-数值方法', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21820#overview', 1365422400, 'hust', 4338000, '21820'),
(779, '几何2-二维几何', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21821#overview', 1365422400, 'hust', 4338000, '21821'),
(780, '几何3-几何算法', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21822#overview', 1365422400, 'hust', 4338000, '21822'),
(781, '几何4-三维几何', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21823#overview', 1365422400, 'hust', 4338000, '21823'),
(782, 'GRAPH', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21828#overview', 1365436800, 'hust', 5115600, '21828'),
(783, '从今往后就混数据结构了', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21845#overview', 1365463800, 'hust', 5184000, '21845'),
(784, '迷の博弈', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21877#overview', 1367337600, 'hust', 2754540, '21877'),
(785, '动规之二', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21904#overview', 1365518700, 'hust', 5184000, '21904'),
(786, 'ZOJ Monthly, September 2012', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21907#overview', 1365523200, 'hust', 4338000, '21907'),
(787, 'DP专题1', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21934#overview', 1365581700, 'hust', 4338000, '21934'),
(789, '数据结构专题一', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21948#overview', 1365589800, 'hust', 4338000, '21948'),
(794, 'いい天気_(:3JZ)_', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21978#overview', 1371744000, 'hust', 1209600, '21978'),
(795, 'balabala', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=92#overview', 1369659600, 'nenu', 277200, '92'),
(798, 'process1', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21984#overview', 1365868800, 'hust', 5184000, '21984'),
(799, '&nbsp;test qtech', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19720&PHPSESSID=78lr3m42btv6dht6k46ireds46', 1369656000, 'HDU', 18000, '19720'),
(800, '再忙也要刷题2', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21991#overview', 1365665400, 'hust', 5184000, '21991'),
(801, '【QTREE系列】', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22060#overview', 1365782400, 'hust', 5184000, '22060'),
(802, '&nbsp;EMP+', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19724&PHPSESSID=9cpcq6tn47c6e2knjq52nvl8k1', 1369717320, 'HDU', 345600, '19724'),
(803, 'POJ Monthly--2007.10.06', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20053#overview', 1371571200, 'hust', 18000, '20053'),
(804, '&nbsp;上帝孩子', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19727&PHPSESSID=d5lsojob860let70gdvd214t96', 1369733400, 'HDU', 864000, '19727'),
(805, '&nbsp;asaddd', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19728&PHPSESSID=j4nair0e2dlc4rgs1ld37310f7', 1369735200, 'HDU', 172800, '19728'),
(806, 'random2', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=93#overview', 1369751400, 'nenu', 259200, '93'),
(820, '石大ACM队训练赛', 'http://acm.upc.edu.cn/contest.php?cid=1023', 1366449300, 'UPC', 18000, '	1023'),
(821, 'process2', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22070#overview', 1365955200, 'hust', 5184000, '22070'),
(822, 'process3', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22071#overview', 1366041600, 'hust', 5184000, '22071'),
(823, '【CF图论】——(1)', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22092#overview', 1365811200, 'hust', 5184000, '22092'),
(824, '【CF图论】——(2)', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22093#overview', 1365811200, 'hust', 5184000, '22093'),
(825, '【CF图论】——(3)', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22095#overview', 1365868800, 'hust', 5184000, '22095'),
(826, '【CF图论】——(4)', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22096#overview', 1365868800, 'hust', 5184000, '22096'),
(828, '三分', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22168#overview', 1365948600, 'hust', 5184000, '22168'),
(829, '后缀数组练习', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22258#overview', 1366119000, 'hust', 4752000, '22258'),
(830, 'Private_Contest_1_1', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22261#overview', 1366128000, 'hust', 5115600, '22261'),
(833, 'Private_Contest_1_3', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22264#overview', 1366128000, 'hust', 5115600, '22264'),
(834, 'Private_Contest_1_5', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22265#overview', 1366128000, 'hust', 5115600, '22265'),
(835, 'Private_Contest_1_6', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22266#overview', 1366128000, 'hust', 5115600, '22266'),
(836, 'Private_Contest_1_7', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22267#overview', 1366128000, 'hust', 5115600, '22267'),
(837, 'Private_Contest_1_8', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22268#overview', 1366128000, 'hust', 5115600, '22268'),
(838, 'XTU Training-ZOJ DogDog Problem Set_1', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22303#overview', 1366209000, 'hust', 5184000, '22303'),
(839, 'XTU Training-ZOJ DogDog Problem Set_2', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22304#overview', 1366209000, 'hust', 5184000, '22304'),
(840, 'লেবু আইন', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22344#overview', 1366278300, 'hust', 5184000, '22344'),
(841, '线段树-1_(:з」∠)_', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22360#overview', 1366293720, 'hust', 5115600, '22360'),
(842, 'jxust_acm-Stack-2013-4-20', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22413#overview', 1366420200, 'hust', 4320000, '22413'),
(844, '╭(╯^╰)╮', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22466#overview', 1366474440, 'hust', 5115600, '22466'),
(845, 'mibuwusi', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22495#overview', 1366552800, 'hust', 4338000, '22495'),
(846, 'Spanning Tree', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22553#overview', 1366626000, 'hust', 5184000, '22553'),
(848, 'LOL', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=94#overview', 1369810500, 'nenu', 18000, '94'),
(849, 'contest_nin', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=95#overview', 1369818900, 'nenu', 14400, '95'),
(850, '&nbsp;简单测试', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19735&PHPSESSID=ld5tdafbg6t4977n6g55gdbq62', 1369830600, 'HDU', 333000, '19735'),
(851, '&nbsp;aa', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19734&PHPSESSID=ld5tdafbg6t4977n6g55gdbq62', 1369815000, 'HDU', 90060, '19734'),
(852, '&nbsp;2013--5.20 の 桌桌专场 之 无法离去的留恋', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19663&PHPSESSID=ld5tdafbg6t4977n6g55gdbq62', 1369654200, 'HDU', 702000, '19663'),
(861, '狗狗四十题', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21353#overview', 1364774400, 'hust', 5184000, '21353'),
(866, 'YGDSDZWXY0x06----------20130331', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21434#overview', 1364833800, 'hust', 5184000, '21434'),
(869, 'Recursion Practise', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22378#overview', 1366340700, 'hust', 4449600, '22378'),
(870, 'poj_DP', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22415#overview', 1366426800, 'hust', 5115600, '22415'),
(872, '初不见抑或不恋', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22617#overview', 1372396440, 'hust', 439200, '22617'),
(873, 'graph test2', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22620#overview', 1366732800, 'hust', 5184000, '22620'),
(874, '机智的contest', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22621#overview', 1366732800, 'hust', 4334400, '22621'),
(875, 'SCUT2013专题训练之数据结构二', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22646#overview', 1366801200, 'hust', 3474000, '22646'),
(876, '&nbsp;大连交通大学省赛热身', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19752&PHPSESSID=m8mp9qh5vio1roij2brfkpiip6', 1369912440, 'HDU', 432000, '19752'),
(877, 'standard template library practise', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22387#overview', 1366353900, 'hust', 4060800, '22387'),
(878, 'SCUT2013专题训练之数据结构三', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22648#overview', 1366801200, 'hust', 3474000, '22648'),
(879, 'SCUT2013专项训练之搜索', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22655#overview', 1366801200, 'hust', 3474000, '22655'),
(880, 'SCUT2013专题训练之字符串', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22656#overview', 1366801200, 'hust', 3474000, '22656'),
(881, 'SCUT2013专题训练之图论一', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22657#overview', 1366801200, 'hust', 3474000, '22657'),
(882, 'zjut_LD&#39;s AC自动机 practice', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22666#overview', 1366801500, 'hust', 4770000, '22666'),
(883, 'SCUT2013专题训练之数据结构一', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22667#overview', 1366801800, 'hust', 3474000, '22667'),
(884, 'SCUT2013专题训练之动态规划一', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22669#overview', 1366803000, 'hust', 3474000, '22669'),
(885, '&nbsp;Dp之路二', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19595&PHPSESSID=gta8mcahpnbse4oddumqv85834', 1370016000, 'HDU', 518400, '19595'),
(886, 'SCUT2013专题训练之图论二', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22671#overview', 1366803660, 'hust', 3474000, '22671'),
(887, 'SCUT2013专题训练之动态规划二', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22672#overview', 1366803600, 'hust', 3474000, '22672'),
(888, 'SCUT2013专题训练之图论三', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22674#overview', 1366804800, 'hust', 3474000, '22674'),
(889, 'SCUT2013专题训练之图论四', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22676#overview', 1366804800, 'hust', 3474000, '22676'),
(890, 'SCUT2013专题训练之数学', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22681#overview', 1366809000, 'hust', 3474000, '22681'),
(891, '&nbsp;DP【练习6】', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19765&PHPSESSID=l1bebv6lilrpc2cuticl8o8sj2', 1370102340, 'HDU', 496800, '19765'),
(892, '石油大学2012新生程序设计竞赛暨ACM选拔赛 决赛', 'http://acm.upc.edu.cn/contest.php?cid=1020', 1356236100, 'UPC', 18000, '	1020'),
(893, '新生赛 预赛 解出3题以上的大一同学与解出4题以上的大二同学晋级决赛', 'http://acm.upc.edu.cn/contest.php?cid=1019', 1355630400, 'UPC', 18000, '	1019'),
(894, '新生赛暨选拔赛 热身赛', 'http://acm.upc.edu.cn/contest.php?cid=1018', 1355047200, 'UPC', 18000, '	1018'),
(895, 'ACM程序设计月赛', 'http://acm.upc.edu.cn/contest.php?cid=1017', 1323580800, 'UPC', 18000, '	1017'),
(896, '石油大学程序设计大赛月赛——网络预赛', 'http://acm.upc.edu.cn/contest.php?cid=1016', 1323504000, 'UPC', 18000, '	1016'),
(897, '历次比赛简单题汇总（跨年练习）', 'http://acm.upc.edu.cn/contest.php?cid=1015', 1325671200, 'UPC', 18000, '	1015'),
(898, 'ACM程序设计周赛大一组暨周赛热身赛【五】', 'http://acm.upc.edu.cn/contest.php?cid=1014', 1322902800, 'UPC', 18000, '	1014'),
(899, '石大acm程序设计比赛第五周周赛2011年12月4号午时', 'http://acm.upc.edu.cn/contest.php?cid=1013', 1322971200, 'UPC', 18000, '	1013'),
(900, '妈蛋', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22685#overview', 1366812000, 'hust', 5184000, '22685'),
(903, '中国石油大学第三周ACM-ICPC程序设计竞赛', 'http://acm.upc.edu.cn/contest.php?cid=1011', 1321131000, 'UPC', 18000, '	1011'),
(904, '中国石油大学ACM第三届周赛', 'http://acm.upc.edu.cn/contest.php?cid=1010', 1321156800, 'UPC', 18000, '	1010'),
(905, '程序设计周赛大一组暨周赛热身赛', 'http://acm.upc.edu.cn/contest.php?cid=1009', 1321044000, 'UPC', 18000, '	1009'),
(906, '大一新生训练', 'http://acm.upc.edu.cn/contest.php?cid=1008', 1321484400, 'UPC', 18000, '	1008'),
(907, '石油大学ACM程序设计竞赛周赛【二】', 'http://acm.upc.edu.cn/contest.php?cid=1007', 1320552000, 'UPC', 18000, '	1007'),
(908, '石油大学ACM程序设计竞赛周赛热身赛', 'http://acm.upc.edu.cn/contest.php?cid=1006', 1320465600, 'UPC', 18000, '	1006'),
(909, '石油大学ACM程序设计大赛周赛 【一】', 'http://acm.upc.edu.cn/contest.php?cid=1005', 1319947200, 'UPC', 18000, '	1005'),
(910, '石油大学ACM程序设计大赛测试赛', 'http://acm.upc.edu.cn/contest.php?cid=1004', 1319860800, 'UPC', 18000, '	1004'),
(920, '训练指南第一章2-1', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21412#overview', 1367251200, 'hust', 5115600, '21412'),
(921, '训练之南第一章2-2', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=21413#overview', 1367251200, 'hust', 5115600, '21413'),
(927, '背包九讲（1）--动态规划', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22694#overview', 1367251200, 'hust', 5184000, '22694'),
(928, '背包九讲（2）--动态规划', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22695#overview', 1366992000, 'hust', 5184000, '22695'),
(929, 'Brute Force(2)--入门经典', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22696#overview', 1366992000, 'hust', 5184000, '22696'),
(930, 'Brute Force(3)--入门经典', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22698#overview', 1366992000, 'hust', 5184000, '22698'),
(931, 'Algorithm Design（1）--入门经典', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22699#overview', 1366992000, 'hust', 5184000, '22699'),
(932, 'Algorithm Design（2）--入门经典', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22700#overview', 1367078400, 'hust', 5184000, '22700'),
(933, 'LoveZx', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22734#overview', 1366887600, 'hust', 5184000, '22734'),
(934, 'week9', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22777#overview', 1366959600, 'hust', 3830400, '22777'),
(935, 'Andrew Stankevich&#39;s Contest #1', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22797#overview', 1367197200, 'hust', 5184000, '22797'),
(938, 'Andrew Stankevich&#39;s Contest #9', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22800#overview', 1368770400, 'hust', 5184000, '22800'),
(939, '&nbsp;全是水题啊亲', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19791&PHPSESSID=gtnfriaft4p523gka77vkr7it2', 1370361600, 'HDU', 1296000, '19791'),
(940, '&nbsp;...', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19789&PHPSESSID=gtnfriaft4p523gka77vkr7it2', 1370348400, 'HDU', 1728000, '19789'),
(943, '&nbsp;踩死多重背包。。。爆', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19784&PHPSESSID=gtnfriaft4p523gka77vkr7it2', 1370261520, 'HDU', 419400, '19784'),
(944, '&nbsp;深搜深搜。。。。。', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19783&PHPSESSID=gtnfriaft4p523gka77vkr7it2', 1370260800, 'HDU', 342000, '19783'),
(945, 'water_fc', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=98#overview', 1370417400, 'nenu', 18000, '98'),
(948, 'POJ Monthly--2007.09.09', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20052#overview', 1372435200, 'hust', 18000, '20052'),
(949, 'POJ Monthly--2007.11.25', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20055#overview', 1372435200, 'hust', 18000, '20055'),
(950, 'POJ Monthly--2007.06.03', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=20056#overview', 1372435200, 'hust', 18000, '20056'),
(952, 'poj中级#3', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22810#overview', 1367164800, 'hust', 5184000, '22810'),
(953, '算法竞赛入门经典-数据结构', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22813#overview', 1367026200, 'hust', 5115600, '22813'),
(956, '算法竞赛入门经典-高效算法设计', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22815#overview', 1367026200, 'hust', 5115600, '22815'),
(957, '算法竞赛入门经典-动态规划初步1', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22816#overview', 1367026200, 'hust', 5115600, '22816'),
(958, '算法竞赛入门经典-动态规划初步2', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22817#overview', 1367028000, 'hust', 5115600, '22817'),
(959, '算法竞赛入门经典-数学概念与方法1', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22818#overview', 1367031600, 'hust', 5115600, '22818'),
(964, '算法竞赛入门经典-数学概念与方法2', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22820#overview', 1367031600, 'hust', 5115600, '22820'),
(965, '&nbsp;Game', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19808&PHPSESSID=o2vstuln6ghsqd5a6dq0e3dkn7', 1370583300, 'HDU', 864000, '19808'),
(968, '算法竞赛入门经典-暴力求解', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22821#overview', 1367035200, 'hust', 5115600, '22821'),
(969, '&nbsp;后缀数组【练习7】', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19777&PHPSESSID=267qu6gietr0hf0o4mr1j1m3s0', 1370689200, 'HDU', 1623600, '19777'),
(970, '算法竞赛入门经典-暴力求解2', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22822#overview', 1367035200, 'hust', 5115600, '22822'),
(971, '拓扑排序——图论算法', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22825#overview', 1367038800, 'hust', 5184000, '22825'),
(972, '【指数型母函数】', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22834#overview', 1367046000, 'hust', 5184000, '22834'),
(973, '【高斯消元】', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22835#overview', 1367046000, 'hust', 5184000, '22835'),
(974, '生成树（1）——图论算法（M，O，P，Q)', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22850#overview', 1367053200, 'hust', 5184000, '22850'),
(977, '生成树（2）——图论算法', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22852#overview', 1367053200, 'hust', 5184000, '22852'),
(978, '生成树（3）——图论算法', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22853#overview', 1367053200, 'hust', 5184000, '22853'),
(979, 'hengfanz_Search', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22855#overview', 1367054700, 'hust', 5115600, '22855'),
(980, '算法竞赛入门经典-基础题目选解', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22856#overview', 1367060400, 'hust', 5115600, '22856'),
(981, '算法竞赛入门经典-基础题目选解2', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22857#overview', 1367060400, 'hust', 5115600, '22857'),
(982, 'kuailezhishang', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=99#overview', 1371013200, 'nenu', 16200, '99'),
(985, '【挖坑】看毛片', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22868#overview', 1367071200, 'hust', 4320000, '22868'),
(986, '算法竞赛入门经典-图论', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22894#overview', 1367128800, 'hust', 5115600, '22894'),
(987, '训练指南第2章数学基础', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22897#overview', 1367132400, 'hust', 5115600, '22897'),
(988, '训练指南第2章数学基础2', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22899#overview', 1367136000, 'hust', 5115600, '22899'),
(991, '训练指南第2章数学基础3', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22902#overview', 1367139600, 'hust', 5115600, '22902'),
(992, '最短路（1）——图论算法', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22903#overview', 1367139600, 'hust', 5184000, '22903'),
(993, '最短路（2）——图论算法', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22904#overview', 1367139600, 'hust', 5184000, '22904'),
(994, '&nbsp;水题【练习7】', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19827&PHPSESSID=vp1ppoce0lsqjkvm595tvsq391', 1371207600, 'HDU', 864000, '19827'),
(997, '最短路（3）——图论算法', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22905#overview', 1367139600, 'hust', 5184000, '22905'),
(998, '最短路（4）——图论算法', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22906#overview', 1367139600, 'hust', 5184000, '22906'),
(999, '训练指南第2章数学基础4', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22907#overview', 1367139600, 'hust', 5115600, '22907'),
(1000, '最短路（5）——图论算法', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22908#overview', 1367139600, 'hust', 5184000, '22908');
INSERT INTO `vatirk_contest` (`id`, `name`, `link`, `start_time`, `oj`, `duration`, `cid`) VALUES
(1001, '最短路（6）——图论算法', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22909#overview', 1367139600, 'hust', 5184000, '22909'),
(1002, '训练指南第3章实用数据结构', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22910#overview', 1367143200, 'hust', 5115600, '22910'),
(1003, '训练指南第3章实用数据结构2', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22915#overview', 1367143200, 'hust', 5115600, '22915'),
(1004, '训练指南第5章图论', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22918#overview', 1367146800, 'hust', 5115600, '22918'),
(1005, '算法入门训练指南2.3数论2.4组合游戏2.5概率与数学期望', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22923#overview', 1367143200, 'hust', 4338000, '22923'),
(1006, '&nbsp;HD12级周赛', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19830&PHPSESSID=e7of66uci3q9nqu06hso2sk766', 1371376800, 'HDU', 10800, '19830'),
(1007, '【状压DP终结者】', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22950#overview', 1367164800, 'hust', 5184000, '22950'),
(1008, '【树链剖分】', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22952#overview', 1367164800, 'hust', 5184000, '22952'),
(1009, '《入门经典》数据结构之图', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22953#overview', 1367158500, 'hust', 4338000, '22953'),
(1010, '【线性规划】', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22955#overview', 1367164800, 'hust', 5184000, '22955'),
(1011, '《入门经典》第五章之字符串', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22984#overview', 1367214660, 'hust', 4338000, '22984'),
(1016, '《入门经典》第五章之高精度运算', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22985#overview', 1367214600, 'hust', 4338000, '22985'),
(1017, '《入门经典》第五章之排序与检索', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22986#overview', 1367214900, 'hust', 4338000, '22986'),
(1018, '《入门经典》之第五章数学题', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22987#overview', 1367215200, 'hust', 4338000, '22987'),
(1019, '《入门经典》第五章之数论', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22988#overview', 1367215200, 'hust', 4338000, '22988'),
(1020, '《入门经典》第五章之几何计算', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22989#overview', 1367215200, 'hust', 4338000, '22989'),
(1021, '动态规划之背包专题', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22990#overview', 1367218800, 'hust', 5184000, '22990'),
(1022, 'National Programming Contest of Bangladesh at SUST', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23024#overview', 1371549600, 'hust', 18000, '23024'),
(1023, 'Saturday Practice #1', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23040#overview', 1367294100, 'hust', 5115600, '23040'),
(1024, '来和DP滚床单-1', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23085#overview', 1367337600, 'hust', 5115600, '23085'),
(1025, '来和DP滚床单-3', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23087#overview', 1367337600, 'hust', 5097600, '23087'),
(1027, 'Saturday Practice #2', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23123#overview', 1367381940, 'hust', 5115600, '23123'),
(1028, 'Saturday Practice #3', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23125#overview', 1367382300, 'hust', 5115600, '23125'),
(1031, 'GSS', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=22874#overview', 1367079600, 'hust', 5184000, '22874'),
(1032, 'Andrew Stankevich ##1', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23155#overview', 1367424000, 'hust', 5184000, '23155'),
(1033, 'Czyz Summer ACM', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23175#overview', 1374076800, 'hust', 14400, '23175'),
(1036, '&nbsp;test', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19848&PHPSESSID=u467jusdupcurofqum1nr1lhr4', 1371906300, 'HDU', 90060, '19848'),
(1037, 'heu 一队搜索专练（一） 目测没有二', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23197#overview', 1367485200, 'hust', 5184000, '23197'),
(1038, 'LEVEL-03', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23232#overview', 1367517600, 'hust', 5097600, '23232'),
(1039, 'Andrew Stankevich&#39;s Contest #11', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23262#overview', 1367580600, 'hust', 5184000, '23262'),
(1040, '回溯（易）', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23263#overview', 1367581080, 'hust', 5184000, '23263'),
(1041, '回溯（难）', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23264#overview', 1368788400, 'hust', 5184000, '23264'),
(1042, '贪心（1）', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23265#overview', 1367581800, 'hust', 5184000, '23265'),
(1043, '贪心2', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23267#overview', 1367596800, 'hust', 5184000, '23267'),
(1044, '&nbsp;DP_Test', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19855&PHPSESSID=p9d715ahq2411mfj9lh6uih1d1', 1372003200, 'HDU', 1728000, '19855'),
(1045, '回溯', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23271#overview', 1367583600, 'hust', 5184000, '23271'),
(1046, 'AC自动机(ノ・ω・)ノ', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23276#overview', 1367764200, 'hust', 5115600, '23276'),
(1049, 'HUST ACM Training Problem Set - 线段树专题', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23283#overview', 1367596800, 'hust', 5184000, '23283'),
(1050, '请加张月 QQ 344580894', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23287#overview', 1367596800, 'hust', 5115600, '23287'),
(1051, '专项练习', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23296#overview', 1367629200, 'hust', 5184000, '23296'),
(1053, 'dfsdf', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23378#overview', 1367699880, 'hust', 5115600, '23378'),
(1054, 'process4', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23380#overview', 1370275200, 'hust', 5184000, '23380'),
(1055, '差分约束——图论算法', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23411#overview', 1367769600, 'hust', 5184000, '23411'),
(1056, 'ACKMPTRIE', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23421#overview', 1368115200, 'hust', 5184000, '23421'),
(1057, 'jihe', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23422#overview', 1368115200, 'hust', 5184000, '23422'),
(1058, 'owe-genesis-10', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23427#overview', 1367769600, 'hust', 5184000, '23427'),
(1059, '初级', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23538#overview', 1368201600, 'hust', 5184000, '23538'),
(1060, '初级II', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23539#overview', 1368806400, 'hust', 5184000, '23539'),
(1061, 'hengfanz_DP', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23573#overview', 1367978400, 'hust', 5115600, '23573'),
(1062, 'KM', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23618#overview', 1368028800, 'hust', 5184000, '23618'),
(1063, 'HUST ACM Training Problem Set - 图论专题', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23702#overview', 1368145800, 'hust', 5184000, '23702'),
(1066, '127 - ZOJ Monthly, June 2013', 'http://acm.zju.edu.cn/onlinejudge/contestInfo.do?contestId=348', 1372478400, 'ZJU', 18000, '348'),
(1067, 'ZOJ2012-August', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23708#overview', 1368160800, 'hust', 4338000, '23708'),
(1069, 'exercise', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23728#overview', 1368201600, 'hust', 5184000, '23728'),
(1070, '狗狗40题（1）', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23830#overview', 1368448800, 'hust', 5184000, '23830'),
(1071, '狗狗40题（2）', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23831#overview', 1368448800, 'hust', 5184000, '23831'),
(1072, 'dp入门2', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23905#overview', 1368535500, 'hust', 4770000, '23905'),
(1073, 'youwowudi1', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23927#overview', 1368594000, 'hust', 5183940, '23927'),
(1074, 'F的狗狗40题(2)', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23929#overview', 1368592800, 'hust', 5184000, '23929'),
(1075, '[HUT]训练计划一', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23942#overview', 1368601200, 'hust', 5115600, '23942'),
(1076, 'codeforces test', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23987#overview', 1368682800, 'hust', 5184000, '23987'),
(1077, 'Kiss the kth', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=23991#overview', 1368684480, 'hust', 5184000, '23991'),
(1078, 'cf exercise', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24020#overview', 1368706560, 'hust', 5184000, '24020'),
(1082, 'MENGSHAGNQI', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24211#overview', 1368971160, 'hust', 4770000, '24211'),
(1083, 'MENGSHANGQI.SHORTESTPATH', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24214#overview', 1368972360, 'hust', 4770000, '24214'),
(1084, '树形DP', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24236#overview', 1369022400, 'hust', 5115600, '24236'),
(1085, '线段树+扫描线练习', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24284#overview', 1369058400, 'hust', 5184000, '24284'),
(1086, '2012 成都赛区 现场赛', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24294#overview', 1369065900, 'hust', 5184000, '24294'),
(1087, 'Sgu 100-125', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24303#overview', 1369108800, 'hust', 5184000, '24303'),
(1088, 'F♂A(Splay)', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24318#overview', 1369115400, 'hust', 5184000, '24318'),
(1089, 'Jinhua 2012', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24343#overview', 1369146600, 'hust', 5184000, '24343'),
(1090, 'イナバ！イナバ！イナバ！', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24350#overview', 1373817600, 'hust', 1227600, '24350'),
(1091, 'Number Theory', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24357#overview', 1369238400, 'hust', 5184000, '24357'),
(1092, 'no title', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24379#overview', 1369216440, 'hust', 5115600, '24379'),
(1093, 'no title2', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24381#overview', 1369238400, 'hust', 5115600, '24381'),
(1094, 'no title3', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24382#overview', 1369843200, 'hust', 5115600, '24382'),
(1095, 'ヾ(*｀∀´*)ﾉｸﾞﾍﾍﾍ', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24383#overview', 1371304800, 'hust', 1227600, '24383'),
(1096, '后缀数组', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24399#overview', 1369238400, 'hust', 5184000, '24399'),
(1097, 'F♂A(上下界)', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24449#overview', 1369411200, 'hust', 5184000, '24449'),
(1098, 'Sat. 几何', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24457#overview', 1369314600, 'hust', 5115600, '24457'),
(1099, 'toTry', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24492#overview', 1369393380, 'hust', 4338000, '24492'),
(1100, '生成树', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24534#overview', 1369497600, 'hust', 4338000, '24534'),
(1101, '最短路(包括差分约束)', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24535#overview', 1369497600, 'hust', 4338000, '24535'),
(1102, 'DP--背包专题之完全背包+分组背包（2）', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24537#overview', 1369522800, 'hust', 4338000, '24537'),
(1103, '树状数组', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24544#overview', 1369540800, 'hust', 5112000, '24544'),
(1104, '树状数组2', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24545#overview', 1369540800, 'hust', 5106600, '24545'),
(1105, 'Geometry', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24588#overview', 1369670400, 'hust', 5184000, '24588'),
(1106, '几何1', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24594#overview', 1369649700, 'hust', 4338000, '24594'),
(1107, '博弈论', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24604#overview', 1369658640, 'hust', 5184000, '24604'),
(1108, '伸展树', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24608#overview', 1370016000, 'hust', 5184000, '24608'),
(1109, 'T-S', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24624#overview', 1369717200, 'hust', 4338000, '24624'),
(1110, 'sing  a song01', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24632#overview', 1369718400, 'hust', 5184000, '24632'),
(1111, '3D-Geometry', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24643#overview', 1369756800, 'hust', 5184000, '24643'),
(1113, 'sing a song02dp', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24669#overview', 1369756800, 'hust', 5184000, '24669'),
(1114, '背包', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24675#overview', 1369794600, 'hust', 5184000, '24675'),
(1115, 'train11(Andrew Stankevich&#39;s Contest #1)', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24678#overview', 1369803600, 'hust', 5184000, '24678'),
(1116, '陪齐爷学图论~', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24688#overview', 1369811400, 'hust', 2592000, '24688'),
(1117, 'YGDSDZWXY0x07----------Dynamic Programming Part.2', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24694#overview', 1369818600, 'hust', 5184000, '24694'),
(1118, 'ac自动机 ', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24704#overview', 1369830600, 'hust', 2592000, '24704'),
(1119, 'WindXY 二分', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24710#overview', 1369833780, 'hust', 5184000, '24710'),
(1120, '线段树小小小合集', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24724#overview', 1369840500, 'hust', 4338000, '24724'),
(1121, '天空不大却看不清楚', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24734#overview', 1369878000, 'hust', 5184000, '24734'),
(1122, '123', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24743#overview', 1369893000, 'hust', 2610000, '24743'),
(1123, 'Qtree', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24758#overview', 1369911600, 'hust', 5184000, '24758'),
(1124, '初级（copy）', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24760#overview', 1369911600, 'hust', 5097600, '24760'),
(1126, '概率，期望DP', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24785#overview', 1369971900, 'hust', 2592000, '24785'),
(1127, '#59 - Need for speed', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24803#overview', 1372521600, 'hust', 3600, '24803'),
(1128, '喜迎六一', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24809#overview', 1370019600, 'hust', 5180400, '24809'),
(1129, '图论', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24815#overview', 1370052000, 'hust', 2592000, '24815'),
(1130, 'HUST ACM Training Problem Set - 动态规划2', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24818#overview', 1370056200, 'hust', 5184000, '24818'),
(1131, 'WHU @hangzhou warming up', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24829#overview', 1370088600, 'hust', 2606400, '24829'),
(1132, '狂三は俺の嫁だ！！！！！！！', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24831#overview', 1372608000, 'hust', 2606400, '24831'),
(1133, 'YGDSDZWXY0x08----------segment tree', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24840#overview', 1370149800, 'hust', 5184000, '24840'),
(1134, '第一章 算法设计基础（一）', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24844#overview', 1370183400, 'hust', 5184000, '24844'),
(1135, '第一章 算法设计基础（二）', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24845#overview', 1370772000, 'hust', 5184000, '24845'),
(1136, '初级III（main search）', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24850#overview', 1370354400, 'hust', 5184000, '24850'),
(1137, '初级IV（数学）几何', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24851#overview', 1370448000, 'hust', 5184000, '24851'),
(1138, '中级I', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24852#overview', 1370448000, 'hust', 5184000, '24852'),
(1139, '中级II', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24853#overview', 1370534400, 'hust', 5184000, '24853'),
(1140, '中级III', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24854#overview', 1370620800, 'hust', 5184000, '24854'),
(1141, '基础数据结构3.1', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24874#overview', 1370253720, 'hust', 2610000, '24874'),
(1142, '&nbsp;2012长春现场赛题目重现', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19887&PHPSESSID=6hnisgl5tr562pdc7j016na493', 1372612200, 'HDU', 1314000, '19887'),
(1144, 'FORFUN（IV）', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24875#overview', 1370257200, 'hust', 2610000, '24875'),
(1146, 'unsolved problem', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24899#overview', 1370336400, 'hust', 5184000, '24899'),
(1147, '[PC-1][1-8] 男人八题', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24903#overview', 1370347500, 'hust', 5184000, '24903'),
(1148, '这一次，为荣誉而战——树形DP专题', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24913#overview', 1370361600, 'hust', 2592000, '24913'),
(1149, 'DP  water', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24914#overview', 1370361625, 'hust', 4338000, '24914'),
(1150, '坑~~', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24916#overview', 1371225600, 'hust', 5184000, '24916'),
(1151, 'dd++博弈1', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24926#overview', 1370408700, 'hust', 2592000, '24926'),
(1152, 'inclusion-exclusion', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24948#overview', 1370448000, 'hust', 5184000, '24948'),
(1153, 'F♂A（三分）', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24969#overview', 1370534400, 'hust', 5184000, '24969'),
(1154, 'ACM/ICPC 2013 World Final Warming Up', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24977#overview', 1370506680, 'hust', 5184000, '24977'),
(1155, 'math problems', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24983#overview', 1370514600, 'hust', 5184000, '24983'),
(1156, '几何例题byLRJ', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24998#overview', 1370562900, 'hust', 4338000, '24998'),
(1157, 'DP水', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25005#overview', 1370793600, 'hust', 2610000, '25005'),
(1159, 'My——线段树', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24335#overview', 1369137600, 'hust', 5184000, '24335'),
(1160, '白书第五章', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25018#overview', 1370617680, 'hust', 4338000, '25018'),
(1161, '&nbsp;呵呵', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19898&PHPSESSID=nv1vpb0dlk6aedmbmoohndhh66', 1372898400, 'HDU', 2160000, '19898'),
(1162, 'ZOJ Monthly, October 2011', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25021#overview', 1373212800, 'hust', 18000, '25021'),
(1163, '数论专场', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25027#overview', 1370680800, 'hust', 5184000, '25027'),
(1164, 'splay', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25028#overview', 1370681400, 'hust', 5184000, '25028'),
(1167, 'Andrew Stankevich&#39;s Contest #3', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25043#overview', 1370746800, 'hust', 2592000, '25043'),
(1168, 'Andrew Stankevich&#39;s Contest #4', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25044#overview', 1370746800, 'hust', 2592000, '25044'),
(1169, '蓝桥杯热身赛', 'http://acm.upc.edu.cn/contest.php?cid=1031', 1373194800, 'UPC', 18000, '	1031'),
(1170, 'Two-SAT', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24878#overview', 1370278800, 'hust', 3042000, '24878'),
(1174, 'Andrew Stankevich&#39;s Contest #2', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25042#overview', 1370746800, 'hust', 2592000, '25042'),
(1175, '考完试的恢复练习-_-#', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=100#overview', 1373243400, 'nenu', 277200, '100'),
(1176, '容斥专题', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24293#overview', 1369065840, 'hust', 5184000, '24293'),
(1177, 'I Fuck China Telecom', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25062#overview', 1370765700, 'hust', 2937600, '25062'),
(1178, 'I Fuck China Telecom II ', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25063#overview', 1370765880, 'hust', 2782800, '25063'),
(1179, '博弈论(′▽`〃)', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25077#overview', 1370797200, 'hust', 4320000, '25077'),
(1180, '坑', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25078#overview', 1373385600, 'hust', 5115600, '25078'),
(1181, '基础题', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25079#overview', 1370836800, 'hust', 2592000, '25079'),
(1182, '&nbsp;最小生成树【练习10】', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19943&PHPSESSID=d8rdl9ba7rhtkgbbag4orbmqg1', 1373299200, 'HDU', 864000, '19943'),
(1183, '&nbsp;线段树【练习9】', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19942&PHPSESSID=d8rdl9ba7rhtkgbbag4orbmqg1', 1373299200, 'HDU', 432000, '19942'),
(1184, '2013 whu暑假集训选拔#1', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25064#overview', 1370838600, 'hust', 5115600, '25064'),
(1185, '简单DP', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25080#overview', 1370836800, 'hust', 2592000, '25080'),
(1186, '练习1', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25099#overview', 1370845800, 'hust', 3369600, '25099'),
(1187, '计算几何/w\\', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25105#overview', 1370865600, 'hust', 4338000, '25105'),
(1189, 'toTry2', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25128#overview', 1370934000, 'hust', 4402800, '25128'),
(1190, '蓝桥杯热身赛II', 'http://acm.upc.edu.cn/contest.php?cid=1032', 1373366700, 'UPC', 18000, '	1032'),
(1191, '&nbsp;c++', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19957&PHPSESSID=u9hqu76rb79rn0ance6p4fj6a1', 1373378100, 'HDU', 93600, '19957'),
(1194, '&nbsp;Search for fun', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19945&PHPSESSID=u9hqu76rb79rn0ance6p4fj6a1', 1373331600, 'HDU', 86400, '19945'),
(1195, 'dp', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24658#overview', 1369746000, 'hust', 5184000, '24658'),
(1196, 'DP专题2', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=24897#overview', 1370335500, 'hust', 3474000, '24897'),
(1199, '简单DP复习——练习', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25131#overview', 1373126400, 'hust', 450000, '25131'),
(1200, '背包DP和树形DP——练习', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25157#overview', 1373472000, 'hust', 450000, '25157'),
(1201, '状态压缩DP——练习', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25160#overview', 1373558400, 'hust', 450000, '25160'),
(1202, '状态压缩DP——比赛', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25161#overview', 1373212800, 'hust', 363600, '25161'),
(1205, '数位DP——比赛', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25167#overview', 1373212800, 'hust', 363600, '25167'),
(1206, '&nbsp;************Hrbust New Try************', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19975&PHPSESSID=jnu0m92mgnnorgp0kdcgkqn676', 1373528700, 'HDU', 1022400, '19975'),
(1207, '&nbsp;多校09-02', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19954&PHPSESSID=jnu0m92mgnnorgp0kdcgkqn676', 1373450400, 'HDU', 1015200, '19954'),
(1208, '&nbsp;【DFS练习】', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19801&PHPSESSID=jnu0m92mgnnorgp0kdcgkqn676', 1373415720, 'HDU', 2419200, '19801'),
(1209, '&nbsp;【BFS练习】', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19978&PHPSESSID=jnu0m92mgnnorgp0kdcgkqn676', 1373385600, 'HDU', 2419200, '19978'),
(1210, '#模拟练习#', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=101#overview', 1373418900, 'nenu', 450000, '101'),
(1211, '“只要A不死就往死里A”', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=102#overview', 1373422080, 'nenu', 432000, '102'),
(1212, '第一周 图论', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=103#overview', 1373428800, 'nenu', 388800, '103'),
(1213, 'week one', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=104#overview', 1373506200, 'nenu', 622800, '104'),
(1214, '适妞来学 网络流', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25174#overview', 1371060000, 'hust', 2592000, '25174'),
(1215, 'jiang', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25184#overview', 1371111840, 'hust', 5115600, '25184'),
(1216, '哈哈哈哈哈哈哈~', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25187#overview', 1371115800, 'hust', 2610000, '25187'),
(1217, 'Andrew Stankevich’s Contest #7', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25192#overview', 1371128880, 'hust', 5184000, '25192'),
(1218, '&nbsp;Ecust dp 1', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19984&PHPSESSID=j22880gt69nhl04566pfo7gtf0', 1373593500, 'HDU', 864000, '19984'),
(1219, 'Summer Training #X (div1)', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=105#overview', 1375243200, 'nenu', 622800, '105'),
(1220, 'Summer Training #1 (div2)', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=106#overview', 1373688000, 'nenu', 622800, '106'),
(1221, 'Summer Training #1 (div1)', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=107#overview', 1373688000, 'nenu', 622800, '107'),
(1222, '斜率优化DP', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25201#overview', 1371171600, 'hust', 5184000, '25201'),
(1223, 'NEFU 挑战编程----入门', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25206#overview', 1371181860, 'hust', 5184000, '25206'),
(1224, '..', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25215#overview', 1371190260, 'hust', 5184000, '25215'),
(1225, 'Kojima!!!!!!Kojima!!!!!!Kojima!!!!!!', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25225#overview', 1375891200, 'hust', 1209600, '25225'),
(1226, '&nbsp;*******************hrbust递推+贪心******************', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19999&PHPSESSID=rfg810mhhtp78onluhter1upe2', 1373710200, 'HDU', 1202400, '19999'),
(1227, '能天気', 'http://acm.hust.edu.cn/vjudge/contest/view.action?cid=25233#overview', 1375891200, 'hust', 1227600, '25233'),
(1228, '&nbsp;矩阵训练1', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=19853&PHPSESSID=j8anobj60bs3n1br9f4ucevrm7', 1373788800, 'HDU', 259380, '19853'),
(1229, '&nbsp;小7的考验', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20003&PHPSESSID=j8anobj60bs3n1br9f4ucevrm7', 1373781600, 'HDU', 1789200, '20003'),
(1230, 'Summer Training 2013 #2 (div1 &#38; div2)', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=108#overview', 1373860800, 'nenu', 18000, '108'),
(1231, 'Summer Training 2013 #3 (div1)', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=109#overview', 1375243200, 'nenu', 18000, '109'),
(1232, 'Summer Training 2013 #4 (div1 &#38; div2)', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=110#overview', 1375243200, 'nenu', 18000, '110'),
(1233, 'Summer Training 2013 #5 (div1)', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=111#overview', 1375243200, 'nenu', 18000, '111'),
(1234, 'Summer Training 2013 #6 (div1 &#38; div2)', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=112#overview', 1375243200, 'nenu', 18000, '112'),
(1235, 'Summer Training 2013 #8 (div1)', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=113#overview', 1375243200, 'nenu', 18000, '113'),
(1236, 'Summer Training 2013 #3', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=114#overview', 1374033600, 'nenu', 18000, '114'),
(1237, '&nbsp;为什么不能用后缀自动机？', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20035&PHPSESSID=hoktgnmb5derl6r0dfvhdoufd5', 1373940000, 'HDU', 864000, '20035'),
(1238, '&nbsp;搜索练习', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20044&PHPSESSID=7mqh4ddhkt4gakhcl1i4mimoa4', 1373967600, 'HDU', 172800, '20044'),
(1239, '&nbsp;coding_11', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20047&PHPSESSID=psqr00r8jm8sdj3ur4preh2sf5', 1373990400, 'HDU', 432000, '20047'),
(1240, '&nbsp;DP ', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20093&PHPSESSID=m86knit88p7474na8joiairod0', 1374292800, 'HDU', 864000, '20093'),
(1242, '&nbsp;2013 Training 1 For EMP_KING', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20103&PHPSESSID=m86knit88p7474na8joiairod0', 1374284400, 'HDU', 1728000, '20103'),
(1243, '&nbsp;Sound Seventh DP2', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20102&PHPSESSID=m86knit88p7474na8joiairod0', 1374283200, 'HDU', 1728000, '20102'),
(1244, '&nbsp;Sound Seventh DP1', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20101&PHPSESSID=m86knit88p7474na8joiairod0', 1374283200, 'HDU', 1728000, '20101'),
(1245, '&nbsp;搜索练习2', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20055&PHPSESSID=m86knit88p7474na8joiairod0', 1374282900, 'HDU', 183600, '20055'),
(1246, '&nbsp;搜索练习4', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20057&PHPSESSID=m86knit88p7474na8joiairod0', 1374282900, 'HDU', 172800, '20057'),
(1247, '&nbsp;搜索练习3', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20056&PHPSESSID=m86knit88p7474na8joiairod0', 1374282900, 'HDU', 172800, '20056'),
(1248, '&nbsp;来~刷几个题', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20095&PHPSESSID=m86knit88p7474na8joiairod0', 1374234000, 'HDU', 1807200, '20095'),
(1249, '&nbsp;【专题训练】- KMP', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20080&PHPSESSID=m86knit88p7474na8joiairod0', 1374169800, 'HDU', 1350900, '20080'),
(1250, '&nbsp;计算几何(1)', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20075&PHPSESSID=m86knit88p7474na8joiairod0', 1374120000, 'HDU', 864000, '20075'),
(1251, '&nbsp;不怨怒、不躁进、不强求', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20069&PHPSESSID=m86knit88p7474na8joiairod0', 1374066000, 'HDU', 864000, '20069'),
(1252, '&nbsp;来！一起背包吧！', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20058&PHPSESSID=m86knit88p7474na8joiairod0', 1374028200, 'HDU', 2203200, '20058'),
(1253, '&nbsp;25道题让你水个够水水更健康', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20121&PHPSESSID=g5htr89ogr3q749gqomjqhu9s5', 1374321600, 'HDU', 432000, '20121'),
(1254, '动态规划', 'http://acm.upc.edu.cn/contest.php?cid=1038', 1375489800, 'UPC', 18000, '	1038'),
(1255, '分治算法', 'http://acm.upc.edu.cn/contest.php?cid=1037', 1375057800, 'UPC', 18000, '	1037'),
(1256, '搜索专题', 'http://acm.upc.edu.cn/contest.php?cid=1036', 1374885000, 'UPC', 18000, '	1036'),
(1257, '贪心算法', 'http://acm.upc.edu.cn/contest.php?cid=1035', 1374724800, 'UPC', 18000, '	1035'),
(1258, '递推与递归', 'http://acm.upc.edu.cn/contest.php?cid=1034', 1374640200, 'UPC', 18000, '	1034'),
(1259, '枚举和排序', 'http://acm.upc.edu.cn/contest.php?cid=1033', 1374445800, 'UPC', 18000, '	1033'),
(1262, '&nbsp;xtu44444444444444444444444444444444444', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20197&PHPSESSID=h6je6lltaimu5sdtpsmg9j6bb7', 1374681600, 'HDU', 1728000, '20197'),
(1263, '&nbsp;并查集练习', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20200&PHPSESSID=h6je6lltaimu5sdtpsmg9j6bb7', 1374676200, 'HDU', 864000, '20200'),
(1264, '&nbsp;xtuxtuxtuxtuxtuxtuxtuxtuxtuxtu', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20196&PHPSESSID=h6je6lltaimu5sdtpsmg9j6bb7', 1374667920, 'HDU', 1728000, '20196'),
(1265, '&nbsp;【nyist】树状数组', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20159&PHPSESSID=h6je6lltaimu5sdtpsmg9j6bb7', 1374649200, 'HDU', 864000, '20159'),
(1266, '&nbsp;jsu_线段树入门', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20148&PHPSESSID=h6je6lltaimu5sdtpsmg9j6bb7', 1374530400, 'HDU', 432000, '20148'),
(1267, '&nbsp;继续水', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20145&PHPSESSID=h6je6lltaimu5sdtpsmg9j6bb7', 1374492600, 'HDU', 864000, '20145'),
(1268, '&nbsp;水个够', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20146&PHPSESSID=h6je6lltaimu5sdtpsmg9j6bb7', 1374492600, 'HDU', 864000, '20146'),
(1269, '&nbsp;哈哈水水', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20144&PHPSESSID=h6je6lltaimu5sdtpsmg9j6bb7', 1374492600, 'HDU', 864000, '20144'),
(1270, '&nbsp;莱健康', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20124&PHPSESSID=h6je6lltaimu5sdtpsmg9j6bb7', 1374376200, 'HDU', 2197200, '20124'),
(1271, '&nbsp;海滨小试', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20119&PHPSESSID=802586mg72ld1c723t9s18koe5', 1374923580, 'HDU', 1728000, '20119'),
(1272, '&nbsp;coding_12', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20258&PHPSESSID=d4n6sfcv968d6v6e7rghfdfkj6', 1375016400, 'HDU', 10800, '20258'),
(1273, '&nbsp;最短路径 海滨练习1', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20247&PHPSESSID=d4n6sfcv968d6v6e7rghfdfkj6', 1375005600, 'HDU', 2160000, '20247'),
(1274, '&nbsp;【nyist】专题练习 ● 背包', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=18851&PHPSESSID=mc5upuqa2f3ogiuami22sjhah2', 1375063920, 'HDU', 1246200, '18851'),
(1275, '通化~~', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=115#overview', 1375158600, 'nenu', 18000, '115'),
(1276, '&nbsp;coding_13', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20303&PHPSESSID=84op6vl287d2quou8dmpi68jr6', 1375200000, 'HDU', 432000, '20303'),
(1277, '&nbsp;树状数组', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20319&PHPSESSID=gt8pjrtagv8g828edrt61rnce1', 1375261200, 'HDU', 90060, '20319'),
(1278, '&nbsp;三打三防', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20330&PHPSESSID=dm4nhq998pni2hs8c59t0is0p3', 1375343400, 'HDU', 158400, '20330'),
(1279, '&nbsp;才发送到方法', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20329&PHPSESSID=dm4nhq998pni2hs8c59t0is0p3', 1375342860, 'HDU', 158400, '20329'),
(1280, '&nbsp;aaa ', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20073&PHPSESSID=dm4nhq998pni2hs8c59t0is0p3', 1375330320, 'HDU', 339120, '20073'),
(1281, '&nbsp;====zy个人之旅1====', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20324&PHPSESSID=dm4nhq998pni2hs8c59t0is0p3', 1375322400, 'HDU', 172800, '20324'),
(1282, '&nbsp;mingmingai ', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20131&PHPSESSID=passo1c7vmn1i53toi52v83kc5', 1375362660, 'HDU', 256980, '20131'),
(1283, '&nbsp;线段树', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20343&PHPSESSID=1n84s666hd9fnv18t89j7ou290', 1375423200, 'HDU', 1800000, '20343'),
(1284, '&nbsp;8888888', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20339&PHPSESSID=1n84s666hd9fnv18t89j7ou290', 1375406400, 'HDU', 864000, '20339'),
(1285, '&nbsp;88888', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20338&PHPSESSID=1n84s666hd9fnv18t89j7ou290', 1375406400, 'HDU', 864000, '20338'),
(1286, '&nbsp;*******啊啊啊*********', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20337&PHPSESSID=1n84s666hd9fnv18t89j7ou290', 1375405800, 'HDU', 864000, '20337'),
(1287, '&nbsp;java', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20365&PHPSESSID=m9kdf0sfnml2ip041p6d48d0p3', 1375588800, 'HDU', 475200, '20365'),
(1288, '&nbsp;水题大战，你敢装逼，我不让你看学姐的博客儿了(‘儿’字要重读)(该弄的都弄完了，向来大战学姐的ACMer都来虐待一下吧，都请看公告哦)', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20364&PHPSESSID=m9kdf0sfnml2ip041p6d48d0p3', 1375578000, 'HDU', 388800, '20364'),
(1289, '&nbsp;coding_14', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20368&PHPSESSID=8586qmd53mcmd0ldqsanc3m7v1', 1375632000, 'HDU', 604800, '20368'),
(1292, '&nbsp;Sound Eighth Suffix Automaton', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20376&PHPSESSID=p4l2abqfhf427fo8921jgk97p6', 1375679700, 'HDU', 1728000, '20376'),
(1293, '&nbsp;====zy个人之旅2====', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20375&PHPSESSID=p4l2abqfhf427fo8921jgk97p6', 1375678800, 'HDU', 122400, '20375'),
(1294, 'honeyaya', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=116#overview', 1375711800, 'nenu', 882000, '116'),
(1297, '&nbsp;学习博弈', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20381&PHPSESSID=lese5223vqkut7p8sq2lct73r4', 1375751400, 'HDU', 1728000, '20381'),
(1298, '&nbsp;老题目回顾', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20385&PHPSESSID=q5b93i5m57c1k3q5q6kub0oor3', 1375792200, 'HDU', 595380, '20385'),
(1301, '第一次积分赛', 'http://acm.upc.edu.cn/contest.php?cid=1039', 1376193600, 'UPC', 18000, '	1039'),
(1302, '&nbsp;www', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20416&PHPSESSID=ljsvjnjrgk4q4g810d4fttued6', 1376028240, 'HDU', 831600, '20416'),
(1303, '&nbsp;====zy个人之旅3====', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20426&PHPSESSID=eh4j0kpvincp9u2cft4n172ah6', 1376047860, 'HDU', 86400, '20426'),
(1306, '&nbsp;2819求过', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20452&PHPSESSID=dk429lknsbl8d43hss7nv53ui7', 1376223900, 'HDU', 604800, '20452'),
(1307, '&nbsp;zznu8月12日练习题', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20451&PHPSESSID=dk429lknsbl8d43hss7nv53ui7', 1376218800, 'HDU', 86400, '20451'),
(1308, '&nbsp;二分专题', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20470&PHPSESSID=6mhbnq7lf3hroeb3s6efq8n8u1', 1376353500, 'HDU', 259200, '20470'),
(1309, '&nbsp;【人艰不拆】我没得过七夕', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20471&PHPSESSID=emr7so28ptesvcn5en3ond1qj2', 1376356800, 'HDU', 86400, '20471'),
(1310, '&nbsp;zznu简单广搜', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20485&PHPSESSID=qntaipe7d0l3hst850cn49cgt2', 1376438400, 'HDU', 111600, '20485'),
(1311, '&nbsp;Primary DP 2', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=17948&PHPSESSID=ok6u8f93ms6jjc8ubbhr01lne3', 1376450100, 'HDU', 1728000, '17948'),
(1312, '第三次积分赛', 'http://acm.upc.edu.cn/contest.php?cid=1041', 1378188000, 'UPC', 18000, '	1041'),
(1313, '第二次积分赛', 'http://acm.upc.edu.cn/contest.php?cid=1040', 1376892000, 'UPC', 18000, '	1040'),
(1314, '&nbsp;JOJ', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20479&PHPSESSID=3cprrp9g553ofo2un2ga9nk2c2', 1376469600, 'HDU', 864000, '20479'),
(1317, '第一回合——DP（1）', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=117#overview', 1376614800, 'nenu', 604800, '117'),
(1318, '第二回合——DP（2）', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=118#overview', 1376841600, 'nenu', 604800, '118'),
(1319, '第三回合——DP（3）', 'http://acm.nenu.edu.cn/judge/contest/view.action?cid=119#overview', 1377100800, 'nenu', 622800, '119'),
(1320, '&nbsp;C语言入门题', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20513&PHPSESSID=6tke9qmqhv28v1rrru8eujmi51', 1376623200, 'HDU', 1425600, '20513'),
(1321, '&nbsp;树状数组 海滨练习', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20525&PHPSESSID=398u1m0jpakrgigmt6cp0a91r4', 1376690400, 'HDU', 1728000, '20525'),
(1322, '&nbsp;test!', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20518&PHPSESSID=398u1m0jpakrgigmt6cp0a91r4', 1376650800, 'HDU', 1461600, '20518'),
(1325, '&nbsp;强连通入门', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20544&PHPSESSID=h5v0c4i5kf96in9dqt6v5qs596', 1376811480, 'HDU', 1801200, '20544'),
(1326, '第四次积分赛（组队赛）', 'http://acm.upc.edu.cn/contest.php?cid=1042', 1378612800, 'UPC', 18000, '	1042'),
(1327, '&nbsp;coding_15', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20580&PHPSESSID=pq813ig8045t0icll5jus3djl7', 1377014400, 'HDU', 432000, '20580'),
(1328, '&nbsp;TJU', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20594&PHPSESSID=4nrtsedv4hrffbeklrvs7bv3f4', 1377055800, 'HDU', 1856400, '20594'),
(1329, '&nbsp;树状数组-初试', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20592&PHPSESSID=4nrtsedv4hrffbeklrvs7bv3f4', 1377054000, 'HDU', 2116800, '20592'),
(1330, '&nbsp;zzulitjbs', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20601&PHPSESSID=u0lc3h0kg737g6vmgeu7ppj9o3', 1377152580, 'HDU', 18180, '20601'),
(1331, '&nbsp;HDOJ贴吧第一届小吧主选拔赛 Day 1', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20549&PHPSESSID=u0lc3h0kg737g6vmgeu7ppj9o3', 1377147600, 'HDU', 10800, '20549'),
(1332, '&nbsp;树状数组、线段树自虐', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20609&PHPSESSID=c92vqe21lpfg3rb7sb7asql9v7', 1377154800, 'HDU', 1728000, '20609'),
(1333, '&nbsp;HDOJ贴吧第一届小吧主选拔赛 Day 2', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20550&PHPSESSID=po0cadh0natflblbsgpq413nk7', 1377234000, 'HDU', 10800, '20550'),
(1334, '&nbsp;coding_16', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20623&PHPSESSID=jm2pgt5l00k5badv9lsqpfeac1', 1377273600, 'HDU', 172800, '20623'),
(1335, '&nbsp;死神崛起', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20621&PHPSESSID=jm2pgt5l00k5badv9lsqpfeac1', 1377271800, 'HDU', 2332740, '20621'),
(1336, '&nbsp;coding_17', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20652&PHPSESSID=d4222u1ele0vr97qnekoour4r7', 1377446400, 'HDU', 604800, '20652'),
(1337, '&nbsp;博弈【练习11】', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20651&PHPSESSID=v1ndp6ddfkb3uv5j33p7rfqd16', 1377493200, 'HDU', 864000, '20651'),
(1338, '&nbsp;SCUT-2013暑期集训集中赛第三场重现', 'http://acm.hdu.edu.cn/diy/contest_show.php?cid=20657&PHPSESSID=irs3tfjaj9pl85m5m4hka1tl24', 1377512400, 'HDU', 1209600, '20657');

-- --------------------------------------------------------

--
-- 表的结构 `vatirk_contest_oj_problem`
--

CREATE TABLE IF NOT EXISTS `vatirk_contest_oj_problem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oj` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `vatirk_contest_problem`
--

CREATE TABLE IF NOT EXISTS `vatirk_contest_problem` (
  `contest_id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  PRIMARY KEY (`contest_id`,`problem_id`),
  KEY `fk_contest_problem_contest1_idx` (`contest_id`),
  KEY `fk_contest_problem_problem1_idx` (`problem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `vatirk_contest_update_problem`
--

CREATE TABLE IF NOT EXISTS `vatirk_contest_update_problem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contest_id` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_contest_update_problem_contest1_idx` (`contest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `vatirk_contest_update_time`
--

CREATE TABLE IF NOT EXISTS `vatirk_contest_update_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(2048) CHARACTER SET utf8 NOT NULL,
  `state` int(11) NOT NULL,
  `time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `vatirk_contest_update_time`
--

INSERT INTO `vatirk_contest_update_time` (`id`, `link`, `state`, `time`) VALUES
(1, 'http://contests.acmicpc.info/contests.json', 1, 1377531303),
(2, 'http://acm.zju.edu.cn/onlinejudge/showContests.do', 2, 1377525283),
(3, 'http://acm.nenu.edu.cn/judge/contest/toListContes', 3, 1377494118),
(4, 'http://acm.hust.edu.cn/vjudge/contest/toListContest.action', 4, 1377498281),
(5, 'http://acm.upc.edu.cn/contest.php', 5, 1377501616),
(6, 'http://acm.neu.edu.cn/hustoj/contest.php', 6, 1377527757),
(7, 'http://acm.hdu.edu.cn/diy/contest_list.php', 7, 1377529170);

-- --------------------------------------------------------

--
-- 表的结构 `vatirk_contest_user`
--

CREATE TABLE IF NOT EXISTS `vatirk_contest_user` (
  `contest_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`contest_id`,`user_id`),
  KEY `fk_contest_user_contest_idx` (`contest_id`),
  KEY `fk_contest_user_user1_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `vatirk_contest_user`
--

INSERT INTO `vatirk_contest_user` (`contest_id`, `user_id`) VALUES
(4, 9),
(5, 7),
(5, 9),
(6, 9),
(9, 1),
(9, 7),
(39, 7),
(51, 1),
(82, 7),
(86, 7),
(87, 9),
(88, 9),
(96, 9),
(187, 7),
(213, 7),
(291, 7),
(292, 7),
(314, 7),
(317, 7),
(730, 7);

-- --------------------------------------------------------

--
-- 表的结构`vatirk_problem`
--

CREATE TABLE IF NOT EXISTS`vatirk_problem` (
  `id` int(11) NOT NULL,
  `problem_name` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `AC` int(11) DEFAULT NULL,
  `vatirk_contest` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `vatirk_problem_summary`
--

CREATE TABLE IF NOT EXISTS `vatirk_problem_summary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `summary_id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `gain` longtext,
  `say` longtext,
  PRIMARY KEY (`id`),
  KEY `fk_problem_summary_summary1_idx` (`summary_id`),
  KEY `fk_problem_summary_problem1_idx` (`problem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `vatirk_summary`
--

CREATE TABLE IF NOT EXISTS `vatirk_summary` (
  `id` int(11) NOT NULL,
  `contest_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `experience` longtext,
  PRIMARY KEY (`id`),
  KEY `fk_summary_contest1_idx` (`contest_id`),
  KEY `fk_summary_user1_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `vatirk_user`
--

CREATE TABLE IF NOT EXISTS `vatirk_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `realname` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `vatirk_user`
--

INSERT INTO `vatirk_user` (`id`, `username`, `password`, `email`, `realname`) VALUES
(1, 'tiankonguse', 'feb8f21e3b5191e2c324ec6d96cb7581c9db7b4e', 'i@tiankonguse.com', '袁小康'),
(5, 'tiankongever', 'feb8f21e3b5191e2c324ec6d96cb7581c9db7b4e', '804345178@qq.com', 'ssss'),
(6, 'vincentuse', 'bc61ca9a81adec4c6ce454a3e310d049e810d6f1', '751479080@qq.com', '李淼洋'),
(7, 'vatirk', 'a4d35bf85a4acf4df7a7628f32603af6cbba2781', 'vatirk@tiankonguse.com', 'vatirk'),
(8, '160', 'ebdd2845d45da24b8665fbbad1eed4f54f514f81', '1713410606@qq.com', '160'),
(9, 'zxj', 'b1f6f7586730c08f0bcd28b9014bd44e378f898a', 'zhouxj327@sina.com', 'zxj'),
(10, 'admin', 'e3ba669686aed1bfb3697dc55a7b77db46f7a744', 'admin@tiankonguse.com', 'admin');

--
-- 限制导出的表
--

--
-- 限制表 `vatirk_contest_problem`
--
ALTER TABLE `vatirk_contest_problem`
  ADD CONSTRAINT `fk_contest_problem_contest1` FOREIGN KEY (`contest_id`) REFERENCES `vatirk_contest` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_contest_problem_problem1` FOREIGN KEY (`problem_id`) REFERENCES`vatirk_problem` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 限制表 `vatirk_contest_update_problem`
--
ALTER TABLE `vatirk_contest_update_problem`
  ADD CONSTRAINT `fk_contest_update_problem_contest1` FOREIGN KEY (`contest_id`) REFERENCES `vatirk_contest` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 限制表 `vatirk_contest_user`
--
ALTER TABLE `vatirk_contest_user`
  ADD CONSTRAINT `fk_contest_user_contest` FOREIGN KEY (`contest_id`) REFERENCES `vatirk_contest` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_contest_user_user1` FOREIGN KEY (`user_id`) REFERENCES `vatirk_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 限制表 `vatirk_problem_summary`
--
ALTER TABLE `vatirk_problem_summary`
  ADD CONSTRAINT `fk_problem_summary_problem1` FOREIGN KEY (`problem_id`) REFERENCES`vatirk_problem` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_problem_summary_summary1` FOREIGN KEY (`summary_id`) REFERENCES `vatirk_summary` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 限制表 `vatirk_summary`
--
ALTER TABLE `vatirk_summary`
  ADD CONSTRAINT `fk_summary_contest1` FOREIGN KEY (`contest_id`) REFERENCES `vatirk_contest` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_summary_user1` FOREIGN KEY (`user_id`) REFERENCES `vatirk_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
