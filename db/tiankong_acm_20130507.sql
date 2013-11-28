-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 05 月 07 日 15:19
-- 服务器版本: 5.5.24-log
-- PHP 版本: 5.4.9

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
-- 表的结构 `contest`
--

DROP TABLE IF EXISTS `contest`;
CREATE TABLE IF NOT EXISTS `contest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `start_time` bigint(20) NOT NULL,
  `oj` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `contest`
--

INSERT INTO `contest` (`id`, `name`, `link`, `start_time`, `oj`) VALUES
(1, 'Data Structures Spring 2013 Exam 3', 'http://acm.sjtu.edu.cn/OnlineJudge/contest/70', 1367834400, 'SJTU'),
(2, '组队赛第三场', 'http://www.acmore.net/contest.php?cid=1014', 1368093600, 'CSUST'),
(3, '2013年每周一赛第六场', 'http://soj.me/contest_detail.php?cid=1001', 1368097200, 'SYSU'),
(4, 'Google Codejam Round 1C', 'http://code.google.com/codejam', 1368349200, 'Google'),
(5, '上海交通大学“超级码力”程序设计大奖赛 5月月赛', 'http://202.120.61.1/contests/13/', 1368356400, 'SJTU'),
(6, 'Google Codejam Round 2', 'http://code.google.com/codejam', 1370095200, 'Google'),
(7, 'Marathon Round 3', 'http://community.topcoder.com/tco13/marathon/', 1370451600, 'Topcoder'),
(8, 'Google Codejam Round 3', 'http://code.google.com/codejam', 1371304800, 'Google'),
(9, '126 - The 10th Zhejiang Provincial Collegiate Programming Contest', 'http://acm.zju.edu.cn/onlinejudge/contestInfo.do?contestId=347', 1368248400, 'ZJU'),
(10, 'XI Programming Olympiads in Murcia (Spain)', 'http://uva.onlinejudge.org/index.php?option=com_onlinejudge&amp;Itemid=12&amp;page=show_contest&amp;contest=319', 1368257400, 'UVA'),
(11, 'Algorithm Round 2C', 'http://community.topcoder.com/tco13/algorithm/', 1368288000, 'Topcoder'),
(12, '2013金山西山居创意游戏程序挑战赛——初赛（1）', 'http://acm.hdu.edu.cn/contests/contest_show.php?cid=451&amp;PHPSESSID=rsqotlbejda9q58oq71d9oavu5', 1368788400, 'HDU'),
(13, '2013金山西山居创意游戏程序挑战赛——初赛（2）', 'http://acm.hdu.edu.cn/contests/contest_show.php?cid=452&amp;PHPSESSID=rsqotlbejda9q58oq71d9oavu5', 1368853200, 'HDU'),
(14, '2013金山西山居创意游戏程序挑战赛——初赛（3）', 'http://acm.hdu.edu.cn/contests/contest_show.php?cid=453&amp;PHPSESSID=rsqotlbejda9q58oq71d9oavu5', 1368874800, 'HDU'),
(15, 'SRM 579', 'http://community.topcoder.com/tc?module=MatchDetails&amp;rd=15499', 1368892800, 'Topcoder'),
(16, '2013金山西山居创意游戏程序挑战赛——初赛（4）', 'http://acm.hdu.edu.cn/contests/contest_show.php?cid=454&amp;PHPSESSID=rsqotlbejda9q58oq71d9oavu5', 1368961200, 'HDU'),
(17, 'ACM ICPC World Finals 2013 Warmup', 'http://uva.onlinejudge.org/index.php?option=com_onlinejudge&amp;Itemid=12&amp;page=show_contest&amp;contest=315', 1369472400, 'UVA'),
(18, 'SRM 580', 'http://community.topcoder.com/tc?module=MatchDetails&amp;rd=15500', 1369497600, 'Topcoder'),
(19, 'SRM 581', 'http://community.topcoder.com/tc?module=MatchDetails&amp;rd=15501', 1370307600, 'Topcoder'),
(20, 'Algorithm Round 3A', 'http://community.topcoder.com/tco13/algorithm/', 1370707200, 'Topcoder'),
(21, 'SRM 582', 'http://community.topcoder.com/tc?module=MatchDetails&amp;rd=15502', 1371207600, 'Topcoder'),
(22, 'SRM 583', 'http://community.topcoder.com/tc?module=MatchDetails&amp;rd=15503', 1371567600, 'Topcoder'),
(23, 'Algorithm Round 3B', 'http://community.topcoder.com/tco13/algorithm/', 1371916800, 'Topcoder');

-- --------------------------------------------------------

--
-- 表的结构 `contest_problem`
--

DROP TABLE IF EXISTS `contest_problem`;
CREATE TABLE IF NOT EXISTS `contest_problem` (
  `contest_id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  PRIMARY KEY (`contest_id`,`problem_id`),
  KEY `fk_contest_problem_contest1_idx` (`contest_id`),
  KEY `fk_contest_problem_problem1_idx` (`problem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `contest_user`
--

DROP TABLE IF EXISTS `contest_user`;
CREATE TABLE IF NOT EXISTS `contest_user` (
  `contest_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`contest_id`,`user_id`),
  KEY `fk_contest_user_contest_idx` (`contest_id`),
  KEY `fk_contest_user_user1_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `problem`
--

DROP TABLE IF EXISTS `problem`;
CREATE TABLE IF NOT EXISTS `problem` (
  `id` int(11) NOT NULL,
  `problem_name` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `AC` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `problem_summary`
--

DROP TABLE IF EXISTS `problem_summary`;
CREATE TABLE IF NOT EXISTS `problem_summary` (
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
-- 表的结构 `summary`
--

DROP TABLE IF EXISTS `summary`;
CREATE TABLE IF NOT EXISTS `summary` (
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
-- 表的结构 `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `realname` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `realname`) VALUES
(1, 'tiankonguse', 'feb8f21e3b5191e2c324ec6d96cb7581c9db7b4e', 'i@tiankonguse.com', '袁小康');

--
-- 限制导出的表
--

--
-- 限制表 `contest_problem`
--
ALTER TABLE `contest_problem`
  ADD CONSTRAINT `fk_contest_problem_contest1` FOREIGN KEY (`contest_id`) REFERENCES `contest` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_contest_problem_problem1` FOREIGN KEY (`problem_id`) REFERENCES `problem` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 限制表 `contest_user`
--
ALTER TABLE `contest_user`
  ADD CONSTRAINT `fk_contest_user_contest` FOREIGN KEY (`contest_id`) REFERENCES `contest` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_contest_user_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 限制表 `problem_summary`
--
ALTER TABLE `problem_summary`
  ADD CONSTRAINT `fk_problem_summary_problem1` FOREIGN KEY (`problem_id`) REFERENCES `problem` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_problem_summary_summary1` FOREIGN KEY (`summary_id`) REFERENCES `summary` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 限制表 `summary`
--
ALTER TABLE `summary`
  ADD CONSTRAINT `fk_summary_contest1` FOREIGN KEY (`contest_id`) REFERENCES `contest` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_summary_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
