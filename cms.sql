-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017 年 11 月 13 日 15:59
-- 服务器版本: 5.6.12-log
-- PHP 版本: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `cms`
--
CREATE DATABASE IF NOT EXISTS `cms` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cms`;

-- --------------------------------------------------------

--
-- 表的结构 `cms_adver`
--

CREATE TABLE IF NOT EXISTS `cms_adver` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//编号',
  `title` varchar(20) NOT NULL COMMENT '//标题',
  `thumbnail` varchar(100) NOT NULL COMMENT '//图片',
  `link` varchar(100) NOT NULL COMMENT '//链接',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//类型',
  `state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '//是否前台广告',
  `date` datetime NOT NULL COMMENT '//时间',
  `info` varchar(200) NOT NULL COMMENT '//描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `cms_adver`
--

INSERT INTO `cms_adver` (`id`, `title`, `thumbnail`, `link`, `type`, `state`, `date`, `info`) VALUES
(1, '腾讯开始进军网游市场', '', 'http://www.qq.com', 1, 1, '2017-07-05 10:24:54', '腾讯开始进军网游市场。'),
(2, '新浪微博开始大量招聘', '', 'http://ww.weibo.com', 1, 1, '2017-07-05 10:26:09', '新浪微博开始大量招聘'),
(3, '飘城web俱乐部开始', '', 'http://www.yc60.com', 1, 1, '2017-07-05 10:33:41', '飘城web俱乐部开始'),
(4, '网易开始代理魔兽世界', '', 'http://www.163.com', 1, 1, '2017-07-05 10:39:48', '网易开始代理魔兽世界'),
(5, '暑假人气网游推荐', '/CMS10.9/uploads/2017-11-10/20171110192916392.png', 'http://www.taobao.com', 2, 1, '2017-07-05 10:42:51', '暑假人气网游推荐'),
(6, '生活家买一送三', '/CMS10.9/uploads/2017-11-12/20171112202614790.png', 'http://www.tmall.com', 3, 1, '2017-07-05 10:44:26', '生活家买一送三'),
(7, '网易娱乐跨界盛典', '/CMS10.9/uploads/2017-11-10/20171110193024416.png', 'http://www.163.com', 2, 1, '2017-07-05 10:48:18', '网易娱乐跨界盛典'),
(8, '爱制造旗舰店', '/CMS10.9/uploads/2017-11-12/20171112202347877.png', 'http://www.360.com', 3, 1, '2017-07-05 10:50:40', '爱制造旗舰店'),
(9, 'M绅士全场三折', '/CMS10.9/uploads/2017-11-12/20171112200222970.png', 'https://www.jd.com/', 3, 1, '2017-07-05 10:59:58', 'M绅士全场三折'),
(10, '车优惠', '/CMS10.9/uploads/2017-11-12/20171112202730937.png', 'http://www.yc60.com', 3, 1, '2017-07-05 11:01:12', '车优惠'),
(11, '湖南信息职业技术学院', '/CMS10.9/uploads/2017-11-12/201711122010411000.png', 'http://www.hniu.cn/', 2, 1, '2017-11-12 20:10:58', '湖南信息职业技术学院');

-- --------------------------------------------------------

--
-- 表的结构 `cms_comment`
--

CREATE TABLE IF NOT EXISTS `cms_comment` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '//id',
  `user` varchar(20) NOT NULL COMMENT '//评论者',
  `content` varchar(255) NOT NULL COMMENT '//内容',
  `manner` tinyint(1) NOT NULL COMMENT '//态度',
  `state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '//状态',
  `date` datetime NOT NULL COMMENT '//时间',
  `cid` mediumint(8) unsigned NOT NULL COMMENT '//文档的id',
  `sustain` smallint(6) unsigned NOT NULL COMMENT '//支持率',
  `oppose` smallint(6) unsigned NOT NULL COMMENT '//反对率',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- 转存表中的数据 `cms_comment`
--

INSERT INTO `cms_comment` (`id`, `user`, `content`, `manner`, `state`, `date`, `cid`, `sustain`, `oppose`) VALUES
(38, '游客', '早应该退出', 0, 0, '2017-06-29 21:04:15', 3, 0, 0),
(41, '游客', '我一个女性朋友，刚参加工作不久，为了买个苹果手机，现在弄的房租都交不起了，上海房租便宜的都是每人1000多一月，她找我来借钱，我就晕了，我跟她说了现在收入远跟不上支出，她依然盲目消费，典型的月光族，还要负债消费，值得这样吗？', 1, 0, '2017-06-29 21:07:36', 3, 0, 0),
(42, '游客', '我一个女性朋友，刚参加工作不久，为了买个苹果手机，现在弄的房租都交不起了，上海房租便宜的都是每人1000多一月，她找我来借钱，我就晕了，我跟她说了现在收入远跟不上支出，她依然盲目消费，典型的月光族，还要负债消费，值得这样吗？', 1, 0, '2017-06-29 21:07:40', 3, 2, 0),
(43, '路飞', '我一个女性朋友，刚参加工作不久，为了买个苹果手机，现在弄的房租都交不起了，上海房租便宜的都是每人1000多一月，她找我来借钱，我就晕了，我跟她说了现在收入远跟不上支出，她依然盲目消费，典型的月光族，还要负债消费，值得这样吗？', 1, 1, '2017-06-29 21:08:53', 3, 4, 0),
(46, '游客', '我不是很看好这款产品', 0, 1, '2017-06-30 20:19:45', 2, 0, 0),
(47, '蜡笔小新', '我觉得索尼的东西都不错', 1, 1, '2017-06-30 20:22:19', 2, 6, 1),
(48, '蜡笔小新', '我对东芝不熟悉', 0, 1, '2017-06-30 20:24:55', 6, 0, 1),
(49, '游客', 'fafafea', 1, 0, '2017-10-28 16:29:16', 3, 0, 0),
(50, '游客', '内容不错', 1, 0, '2017-10-28 16:37:27', 3, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `cms_content`
--

CREATE TABLE IF NOT EXISTS `cms_content` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//编号',
  `title` varchar(50) NOT NULL COMMENT '//标题',
  `nav` mediumint(8) unsigned NOT NULL COMMENT '//栏目号',
  `attr` varchar(20) NOT NULL COMMENT '//属性',
  `tag` varchar(30) NOT NULL COMMENT '//标签',
  `keyword` varchar(30) NOT NULL COMMENT '//关键字',
  `thumbnail` varchar(100) NOT NULL COMMENT '//缩略图',
  `source` varchar(20) NOT NULL COMMENT '//文章来源',
  `author` varchar(10) NOT NULL COMMENT '//作者',
  `info` varchar(200) NOT NULL COMMENT '//简介',
  `content` text NOT NULL COMMENT '//详细内容',
  `commend` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否允许评论',
  `count` smallint(6) NOT NULL DEFAULT '0' COMMENT '//浏览次数',
  `gold` smallint(6) NOT NULL DEFAULT '0' COMMENT '//消费金币',
  `sort` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//排序',
  `readlimit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//阅读权限',
  `color` varchar(10) NOT NULL COMMENT '//颜色',
  `date` datetime NOT NULL COMMENT '//发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `cms_content`
--

INSERT INTO `cms_content` (`id`, `title`, `nav`, `attr`, `tag`, `keyword`, `thumbnail`, `source`, `author`, `info`, `content`, `commend`, `count`, `gold`, `sort`, `readlimit`, `color`, `date`) VALUES
(2, '索尼PS VR游戏销量公布 歪果仁最爱的VR游戏是它？', 34, '推荐,头条', '索尼PS，VR', '索尼PS ', '/phpeg/CMS6.2/uploads/2017-06-13/20170613140223446.jpg', '太平洋网', 'admin', '虽然索尼PS VR一直处于缺货状态，到本周为止，PS VR刚好发售了差不多一个月的时间，到底哪款PS VR游戏更受玩家青睐？我们来看看美国和欧洲两个地区的PlayStation Store的VR游戏销量排行吧。', '<p style="margin: 20px 0px; padding: 0px; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51);">\r\n	虽然索尼PS VR一直处于缺货状态、黄牛猖獗、一机难求，但早早买到PS VR的童鞋可谓是玩得那个欢啊。到本周为止，PS VR刚好发售了差不多一个月的时间，到底哪款PS VR游戏更受玩家青睐？我们来看看美国和欧洲两个地区的PlayStation Store的VR游戏销量排行吧。</p>\r\n<p style="margin: 20px 0px; padding: 0px; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51);">\r\n	　　首先需要说明的是，排行并没有显示具体的销售数字，而且这个排行只包括PlayStation Store销售的VR游戏，实体光盘游戏并不包括在其中。</p>\r\n<p style="margin: 20px 0px; padding: 0px; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); text-align: center;">\r\n	<span class="cmt-img-editor-el" style="font-size: 0px; line-height: 0;"><img alt="" src="/phpeg/CMS6.2/uploads/2017-06-13/20170613140205631.jpg" style="width: 600px; height: 338px;" /></span><br />\r\n	美国地区销量最高的《工作模拟器》</p>\r\n<p style="margin: 20px 0px; padding: 0px; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51);">\r\n	　　<strong>美国地区销量排行</strong></p>\r\n<p style="margin: 0px 22px 0px 15px; padding: 10px 15px; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); border-left: 5px solid rgb(226, 226, 226); background: rgb(242, 242, 242);">\r\n	1、Job Simulator（工作模拟器）</p>\r\n<p style="margin: 0px 22px 0px 15px; padding: 10px 15px; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); border-left: 5px solid rgb(226, 226, 226); background: rgb(242, 242, 242);">\r\n	2、Batman: Arkham VR（蝙蝠侠：阿卡姆VR）</p>\r\n<p style="margin: 0px 22px 0px 15px; padding: 10px 15px; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); border-left: 5px solid rgb(226, 226, 226); background: rgb(242, 242, 242);">\r\n	3、Until Dawn: Rush of Blood（直到黎明：血戮）</p>\r\n<p style="margin: 0px 22px 0px 15px; padding: 10px 15px; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); border-left: 5px solid rgb(226, 226, 226); background: rgb(242, 242, 242);">\r\n	4、PlayStation VR Worlds（PLayStation VR世界）</p>\r\n<p style="margin: 0px 22px 0px 15px; padding: 10px 15px; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); border-left: 5px solid rgb(226, 226, 226); background: rgb(242, 242, 242);">\r\n	5、Here They Lie（谎言凶间）</p>\r\n<p style="margin: 0px 22px 0px 15px; padding: 10px 15px; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); border-left: 5px solid rgb(226, 226, 226); background: rgb(242, 242, 242);">\r\n	6、Keep Talking and Nobody Explodes（保持通话炸弹不炸）</p>\r\n<p style="margin: 0px 22px 0px 15px; padding: 10px 15px; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); border-left: 5px solid rgb(226, 226, 226); background: rgb(242, 242, 242);">\r\n	7、EVE: Valkyrie（EVE：瓦尔基里）</p>\r\n<p style="margin: 0px 22px 0px 15px; padding: 10px 15px; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); border-left: 5px solid rgb(226, 226, 226); background: rgb(242, 242, 242);">\r\n	8、Gunjack</p>\r\n<p style="margin: 0px 22px 0px 15px; padding: 10px 15px; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); border-left: 5px solid rgb(226, 226, 226); background: rgb(242, 242, 242);">\r\n	9、Harmonix Music VR</p>\r\n<p style="margin: 0px 22px 0px 15px; padding: 10px 15px; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); border-left: 5px solid rgb(226, 226, 226); background: rgb(242, 242, 242);">\r\n	10、Sports Bar VR（运动酒吧VR）</p>\r\n<p style="margin: 20px 0px; padding: 0px; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); text-align: center;">\r\n	<br />\r\n	《蝙蝠侠：阿卡姆VR》</p>\r\n<p style="margin: 20px 0px; padding: 0px; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51);">\r\n	　　<strong>欧州地区销量排行</strong></p>\r\n<p style="margin: 0px 22px 0px 15px; padding: 10px 15px; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); border-left: 5px solid rgb(226, 226, 226); background: rgb(242, 242, 242);">\r\n	1、Batman: Arkham VR（蝙蝠侠：阿卡姆VR）</p>\r\n<p style="margin: 0px 22px 0px 15px; padding: 10px 15px; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); border-left: 5px solid rgb(226, 226, 226); background: rgb(242, 242, 242);">\r\n	2、PlayStation VR Worlds（PLayStation VR世界）</p>\r\n<p style="margin: 0px 22px 0px 15px; padding: 10px 15px; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); border-left: 5px solid rgb(226, 226, 226); background: rgb(242, 242, 242);">\r\n	3、Until Dawn: Rush of Blood（直到黎明：血戮）</p>\r\n<p style="margin: 0px 22px 0px 15px; padding: 10px 15px; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); border-left: 5px solid rgb(226, 226, 226); background: rgb(242, 242, 242);">\r\n	4、Here They Lie（谎言凶间）</p>\r\n<p style="margin: 0px 22px 0px 15px; padding: 10px 15px; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); border-left: 5px solid rgb(226, 226, 226); background: rgb(242, 242, 242);">\r\n	5、Tumble VR（平衡积木VR）</p>\r\n<p style="margin: 0px 22px 0px 15px; padding: 10px 15px; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); border-left: 5px solid rgb(226, 226, 226); background: rgb(242, 242, 242);">\r\n	6、Job Simulator（工作模拟器）</p>\r\n<p style="margin: 0px 22px 0px 15px; padding: 10px 15px; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); border-left: 5px solid rgb(226, 226, 226); background: rgb(242, 242, 242);">\r\n	7、Gunjack</p>\r\n<p style="margin: 0px 22px 0px 15px; padding: 10px 15px; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); border-left: 5px solid rgb(226, 226, 226); background: rgb(242, 242, 242);">\r\n	8、Driveclub VR（驾驶俱乐部VR）</p>\r\n<p style="margin: 0px 22px 0px 15px; padding: 10px 15px; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); border-left: 5px solid rgb(226, 226, 226); background: rgb(242, 242, 242);">\r\n	9、EVE: Valkyrie（EVE：瓦尔基里）</p>\r\n<p style="margin: 0px 22px 0px 15px; padding: 10px 15px; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); border-left: 5px solid rgb(226, 226, 226); background: rgb(242, 242, 242);">\r\n	10、Sports Bar VR（运动酒吧VR）</p>\r\n<p style="margin: 20px 0px; padding: 0px; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51);">\r\n	　　有意思的是，这份榜单中有不少是从PC平台移植过来的VR游戏，比如美国地区销量最高的《工作模拟器》，以及《保持通话炸弹不炸》、《EVE：瓦尔基里》、《Gunjack》和《运动酒吧VR》（也就是Steam上的《Pool Nation VR》），这说明索尼的第一批VR游戏确实不是很给力啊，期待明年的《GT Sport》和《生化危机7》能扳回一城。</p>\r\n', 1, 460, 0, 0, 0, '', '2017-07-01 14:04:18'),
(3, '荣耀9评测：秀外慧中，既能拼实力又能拼颜值', 30, '推荐,头条', '荣耀9', '华为，荣耀9', '/phpeg/CMS6.2/uploads/2017-06-13/20170613140837419.jpg', '太平洋网', 'admin', '从去年开始，荣耀手机已经拓宽自家旗舰机型的产品线，带来了荣耀V8、荣耀8和荣耀NOTE 8三款覆盖不同用户群体的机型。现在，荣耀又带来了今年的第二款重磅产品，也就是荣耀9。', '<p style="margin: 20px 0px; padding: 0px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51);">\r\n	从去年开始，荣耀手机已经拓宽自家旗舰机型的产品线，带来了荣耀V8、荣耀8和荣耀NOTE 8三款覆盖不同用户群体的机型。在今年2月21日，荣耀已经推出最新旗舰机型荣耀V9，该机凭借高性能和较高的性价比获得了普遍的好评。现在，荣耀又带来了今年的第二款重磅产品，也就是荣耀9。</p>\r\n<p style="margin: 20px 0px; padding: 0px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51);">\r\n	　　荣耀9和荣耀V9的定位稍有不同，荣耀V9主打的是2K屏幕和VR等新特性的体验，而荣耀9倾向于设计美学的突破。荣耀9不但拥有不俗的性能，而且在设计、拍照和音乐方面也有很大的突破。</p>\r\n<h2 style="margin-left: 23px; padding: 0px 0px 0px 5px; font-size: 18px; width: 550px; font-weight: normal; font-stretch: normal; line-height: 21px; font-family: 微软雅黑; border-bottom: 1px solid rgb(243, 124, 8); color: rgb(244, 125, 9); margin-top: 5px !important; margin-right: auto !important; margin-bottom: 5px !important;">\r\n	荣耀9现场上手体验视频</h2>\r\n<p style="margin: 20px 0px; padding: 0px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); text-align: center;">\r\n	&nbsp;</p>\r\n<p style="margin: 20px 0px; padding: 0px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51);">\r\n	<strong>配置简述：</strong></p>\r\n<p style="margin: 20px 0px; padding: 0px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51);">\r\n	　　配置方面，荣耀9搭载麒麟960处理器，最高配备6GB RAM+128GB ROM的内存组合。屏幕方面，荣耀9采用5.15英寸1080P分辨的屏幕，色彩饱和度高达96%，显示效果达到好莱坞数字影院的标准（DCI-P3）。拍照方面，前置为800万像素的摄像头，后置1200万像素彩色摄像头+2000万像素黑白摄像头。</p>\r\n<table align="center" bgcolor="#559eea" cellpadding="10" cellspacing="1" class="js3TB" style="border-spacing: 0px; height: 25px; color: rgb(51, 51, 51); background: rgb(40, 139, 222); line-height: 26px; margin: 0px auto; border-style: solid; border-color: rgb(40, 139, 222); font-family: 宋体, &quot;arial narrow&quot;, helvetica; table-layout: auto; width: 598px !important;" width="600">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="4" style="margin: 0px; padding: 5px 10px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 16px; white-space: nowrap;">\r\n				<div align="center" style="margin: 0px; padding: 0px;">\r\n					<span style="color: rgb(255, 255, 255);"><strong>荣耀9配置参数</strong></span></div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td bgcolor="#ecf0f8" class="col11" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(244, 244, 244); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; border-right-style: solid; border-right-color: rgb(229, 229, 229); width: 122px; text-align: center; color: rgb(153, 153, 153); white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="80">\r\n				CPU</td>\r\n			<td bgcolor="#ffffff" class="col12" colspan="3" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(255, 255, 255); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; text-align: center; white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="520">\r\n				麒麟960+微智核i6（4*A73 2.4GHz+4*A53 1.8GHz)</td>\r\n		</tr>\r\n		<tr>\r\n			<td bgcolor="#ecf0f8" class="col11" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(244, 244, 244); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; border-right-style: solid; border-right-color: rgb(229, 229, 229); width: 122px; text-align: center; color: rgb(153, 153, 153); white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="80">\r\n				GPU</td>\r\n			<td bgcolor="#ffffff" class="col12" colspan="3" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(255, 255, 255); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; text-align: center; white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="520">\r\n				Mali-G71 MP8</td>\r\n		</tr>\r\n		<tr>\r\n			<td bgcolor="#ecf0f8" class="col11" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(244, 244, 244); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; border-right-style: solid; border-right-color: rgb(229, 229, 229); width: 122px; text-align: center; color: rgb(153, 153, 153); white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="80">\r\n				RAM+ROM</td>\r\n			<td bgcolor="#ffffff" class="col12" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(255, 255, 255); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; text-align: center; white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="520">\r\n				4GB+64GB</td>\r\n			<td bgcolor="#ffffff" class="col12" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(255, 255, 255); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; text-align: center; white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="520">\r\n				6GB+64GB</td>\r\n			<td bgcolor="#ffffff" class="col12" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(255, 255, 255); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; text-align: center; white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="520">\r\n				6GB+128GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td bgcolor="#ecf0f8" class="col11" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(244, 244, 244); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; border-right-style: solid; border-right-color: rgb(229, 229, 229); width: 122px; text-align: center; color: rgb(153, 153, 153); white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="80">\r\n				屏幕</td>\r\n			<td bgcolor="#ffffff" class="col12" colspan="3" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(255, 255, 255); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; text-align: center; white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="520">\r\n				5.15英寸1080P分辨率、96%色彩饱和度</td>\r\n		</tr>\r\n		<tr>\r\n			<td bgcolor="#ecf0f8" class="col11" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(244, 244, 244); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; border-right-style: solid; border-right-color: rgb(229, 229, 229); width: 122px; text-align: center; color: rgb(153, 153, 153); white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="80">\r\n				摄像头</td>\r\n			<td bgcolor="#ffffff" class="col12" colspan="3" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(255, 255, 255); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; text-align: center; white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="520">\r\n				<div style="margin: 0px; padding: 0px;">\r\n					<div style="margin: 0px; padding: 0px;">\r\n						<strong>前置：</strong>800万像素摄像头、F/2.0光圈、美颜自拍<br />\r\n						<strong>后置：</strong>200万像素彩色+2000万黑白摄像头、F/2.2、激光对焦、深度对焦</div>\r\n				</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td bgcolor="#ecf0f8" class="col11" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(244, 244, 244); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; border-right-style: solid; border-right-color: rgb(229, 229, 229); width: 122px; text-align: center; color: rgb(153, 153, 153); white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="80">\r\n				系统</td>\r\n			<td bgcolor="#ffffff" class="col12" colspan="3" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(255, 255, 255); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; text-align: center; white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="520">\r\n				EMUI 5.0（Android 7.0）</td>\r\n		</tr>\r\n		<tr>\r\n			<td bgcolor="#ecf0f8" class="col11" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(244, 244, 244); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; border-right-style: solid; border-right-color: rgb(229, 229, 229); width: 122px; text-align: center; color: rgb(153, 153, 153); white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="80">\r\n				尺寸</td>\r\n			<td bgcolor="#ffffff" class="col12" colspan="3" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(255, 255, 255); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; text-align: center; white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="520">\r\n				147.3x70.9x7.45mm&nbsp;155g</td>\r\n		</tr>\r\n		<tr>\r\n			<td bgcolor="#ecf0f8" class="col11" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(244, 244, 244); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; border-right-style: solid; border-right-color: rgb(229, 229, 229); width: 122px; text-align: center; color: rgb(153, 153, 153); white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="80">\r\n				电池容量</td>\r\n			<td bgcolor="#ffffff" class="col12" colspan="3" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(255, 255, 255); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; text-align: center; white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="520">\r\n				3200mAh、9V/2A快速充电</td>\r\n		</tr>\r\n		<tr>\r\n			<td bgcolor="#ecf0f8" class="col11" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(244, 244, 244); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; border-right-style: solid; border-right-color: rgb(229, 229, 229); width: 122px; text-align: center; color: rgb(153, 153, 153); white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="80">\r\n				网络制式</td>\r\n			<td bgcolor="#ffffff" class="col12" colspan="3" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(255, 255, 255); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; text-align: center; white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="520">\r\n				全网通、双卡双待</td>\r\n		</tr>\r\n		<tr>\r\n			<td bgcolor="#ecf0f8" class="col11" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(244, 244, 244); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; border-right-style: solid; border-right-color: rgb(229, 229, 229); width: 122px; text-align: center; color: rgb(153, 153, 153); white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="80">\r\n				配色</td>\r\n			<td bgcolor="#ffffff" class="col12" colspan="3" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(255, 255, 255); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; text-align: center; white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="520">\r\n				琥珀金、幻夜黑、魅海蓝、海鸥灰</td>\r\n		</tr>\r\n		<tr>\r\n			<td bgcolor="#ecf0f8" class="col11" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(244, 244, 244); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; border-right-style: solid; border-right-color: rgb(229, 229, 229); width: 122px; text-align: center; color: rgb(153, 153, 153); white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="80">\r\n				特色功能</td>\r\n			<td bgcolor="#ffffff" class="col12" colspan="3" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(255, 255, 255); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; text-align: center; white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="520">\r\n				3D曲面激光玻璃机身、双摄无损变焦、HiFi音质、红外遥控、人像拍摄</td>\r\n		</tr>\r\n		<tr>\r\n			<td bgcolor="#ecf0f8" class="col11" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(244, 244, 244); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; border-right-style: solid; border-right-color: rgb(229, 229, 229); width: 122px; text-align: center; color: rgb(153, 153, 153); white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="80">\r\n				上市价格</td>\r\n			<td bgcolor="#ffffff" class="col12" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(255, 255, 255); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; text-align: center; white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="520">\r\n				<div style="margin: 0px; padding: 0px;">\r\n					2299元</div>\r\n			</td>\r\n			<td bgcolor="#ffffff" class="col12" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(255, 255, 255); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; text-align: center; white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="520">\r\n				2699元</td>\r\n			<td bgcolor="#ffffff" class="col12" style="margin: 0px 0px -1px; padding: 5px 10px; background: rgb(255, 255, 255); font-size: 14px; height: 30px; line-height: 30px; border-bottom-style: solid; border-bottom-color: rgb(229, 229, 229); word-break: break-all; text-align: center; white-space: nowrap; font-family: &quot;Microsoft Yahei&quot; !important;" width="520">\r\n				2999元</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p style="margin: 20px 0px; padding: 0px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51);">\r\n	　　荣耀9还加强了音质的体验，内置AKM Hi-Fi芯片，并且采用Huawei Histen音效处理技术和邀请了格莱美获奖大师调音。此外，荣耀9内置3200mAh容量电池，支持9V/2A快速充电，预装EMUI 5.0系统（Android 7.0）。</p>\r\n<p style="margin: 20px 0px; padding: 0px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51);">\r\n	　　荣耀9主要的亮点包括：</p>\r\n<p style="margin: 0px 22px 0px 15px; padding: 10px 15px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); background: rgb(242, 242, 242); border-left: 5px solid rgb(226, 226, 226);">\r\n	1.性能：麒麟960处理器，最高配备6GB运行内存；<br />\r\n	2.外观：3D曲面玻璃极光机身，手感出众，前置指纹，整体设计更时尚简约；<br />\r\n	3.双摄：1200W彩色+2000W黑白的双摄像头，两倍无损变焦，支持人像拍摄；<br />\r\n	4.音质：内置AKM Hi-Fi芯片，拥有3D沉浸式Hi-Fi体验；<br />\r\n	5.系统：新增扫码比价、翻译和搜题、NFC刷公交卡等新功能。</p>\r\n<p style="margin: 20px 0px; padding: 0px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51);">\r\n	<strong>外观：前置指纹，玻璃也能玩得很出彩</strong></p>\r\n<p style="margin: 20px 0px; padding: 0px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51);">\r\n	　　如果说玻璃是色彩和光线最好的载体，凭借3D光栅雕琢工艺和15层匠心工艺，荣耀8足够令人惊艳。然而至臻至美的追求无止境，荣耀9再度进行了雕琢，堪称年度美学旗舰。</p>\r\n<p style="margin: 20px 0px; padding: 0px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); text-align: center;">\r\n	<span class="cmt-img-editor-el" style="font-size: 0px; line-height: 0; position: relative; display: inline-block; vertical-align: top;"><button class="cmt-img-editor-bt" data-data="{i:1,target:''cmt_img_ikuiqa588po''}" data-event="showImgBt" style="margin: 0px; padding: 0px; transition: all 0.4s cubic-bezier(1, 0.03, 0.26, 1.43); display: block; position: absolute; bottom: 10px; right: 10px; border-width: 0px; border-style: initial; border-color: initial; font-size: 0px; line-height: 0; width: 86px; height: 27px; opacity: 0; cursor: pointer; background-repeat: no-repeat; background-position: 0px -1117px; background-image: url(&quot;http://www1.pconline.com.cn/test/cxk/static/images/icons.png&quot;);"></button></span></p>\r\n<p style="margin: 20px 0px; padding: 0px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51);">\r\n	　　荣耀9采用了5.15英寸1080P屏幕，显示效果达到了好莱坞级别的DCI-P3标准，色彩更加丰富以及层次感更加鲜明。从屏幕的调校风格上看，走的讨好眼球的鲜艳风格。</p>\r\n<p style="margin: 20px 0px; padding: 0px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51);">\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt="" src="/phpeg/CMS6.2/uploads/2017-06-13/20170613140905197.jpg" style="width: 600px; height: 400px;" /></p>\r\n<p style="margin: 20px 0px; padding: 0px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); text-align: center;">\r\n	<span class="cmt-img-editor-el" style="font-size: 0px; line-height: 0; position: relative; display: inline-block; vertical-align: top;"><button class="cmt-img-editor-bt" data-data="{i:2,target:''cmt_img_ikuiqa588po''}" data-event="showImgBt" style="margin: 0px; padding: 0px; transition: all 0.4s cubic-bezier(1, 0.03, 0.26, 1.43); display: block; position: absolute; bottom: 10px; right: 10px; border-width: 0px; border-style: initial; border-color: initial; font-size: 0px; line-height: 0; width: 86px; height: 27px; opacity: 0; cursor: pointer; background-repeat: no-repeat; background-position: 0px -1117px; background-image: url(&quot;http://www1.pconline.com.cn/test/cxk/static/images/icons.png&quot;);"></button></span></p>\r\n<p style="margin: 20px 0px; padding: 0px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); text-align: center;">\r\n	<span class="cmt-img-editor-el" style="font-size: 0px; line-height: 0; position: relative; display: inline-block; vertical-align: top;"><button class="cmt-img-editor-bt" data-data="{i:3,target:''cmt_img_ikuiqa588po''}" data-event="showImgBt" style="margin: 0px; padding: 0px; transition: all 0.4s cubic-bezier(1, 0.03, 0.26, 1.43); display: block; position: absolute; bottom: 10px; right: 10px; border-width: 0px; border-style: initial; border-color: initial; font-size: 0px; line-height: 0; width: 86px; height: 27px; opacity: 0; cursor: pointer; background-repeat: no-repeat; background-position: 0px -1117px; background-image: url(&quot;http://www1.pconline.com.cn/test/cxk/static/images/icons.png&quot;);"></button></span></p>\r\n<p style="margin: 20px 0px; padding: 0px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51);">\r\n	　　正面两面都采用2.5D玻璃覆盖，背部2.5D曲面符合人体工学，配合纤薄的机身，无论是握持手感还是重量都控制得很优秀，有种令人爱不释手得感觉。</p>\r\n<p style="margin: 20px 0px; padding: 0px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); text-align: center;">\r\n	<span class="cmt-img-editor-el" style="font-size: 0px; line-height: 0; position: relative; display: inline-block; vertical-align: top;"><button class="cmt-img-editor-bt" data-data="{i:4,target:''cmt_img_ikuiqa588po''}" data-event="showImgBt" style="margin: 0px; padding: 0px; transition: all 0.4s cubic-bezier(1, 0.03, 0.26, 1.43); display: block; position: absolute; bottom: 10px; right: 10px; border-width: 0px; border-style: initial; border-color: initial; font-size: 0px; line-height: 0; width: 86px; height: 27px; opacity: 0; cursor: pointer; background-repeat: no-repeat; background-position: 0px -1117px; background-image: url(&quot;http://www1.pconline.com.cn/test/cxk/static/images/icons.png&quot;);"></button></span></p>\r\n<p style="margin: 20px 0px; padding: 0px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51);">\r\n	　　不得不说，荣耀9的背面设计还是很出彩的。根据资料，荣耀9背面的15层工艺材质，每一层都是精心雕琢，才刻画出了光的流形，才调制了与众不同的颜色，每种颜色都对应不一样的工艺层组合 。在不同的光线下可以看到不断变化的光线和色彩，就像光在流动一样。</p>\r\n<p style="margin: 20px 0px; padding: 0px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); text-align: center;">\r\n	<span class="cmt-img-editor-el" style="font-size: 0px; line-height: 0; position: relative; display: inline-block; vertical-align: top;"><button class="cmt-img-editor-bt" data-data="{i:5,target:''cmt_img_ikuiqa588po''}" data-event="showImgBt" style="margin: 0px; padding: 0px; transition: all 0.4s cubic-bezier(1, 0.03, 0.26, 1.43); display: block; position: absolute; bottom: 10px; right: 10px; border-width: 0px; border-style: initial; border-color: initial; font-size: 0px; line-height: 0; width: 86px; height: 27px; opacity: 0; cursor: pointer; background-repeat: no-repeat; background-position: 0px -1117px; background-image: url(&quot;http://www1.pconline.com.cn/test/cxk/static/images/icons.png&quot;);"></button></span></p>\r\n<p style="margin: 20px 0px; padding: 0px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51);">\r\n	　　值得一提的是，这次荣耀9把指纹识别放到了正面，同时，这个指纹识别模块还集成了Home键、返回键以及多任务键，支持采用手势操作：点击返回上一页、长按返回主桌面、左右滑动进入最近任务；另外，返回键与多任务切换按键可以设置为实体键。初期使用的时候可能有些不习惯，但上手之后觉得非常好用。</p>\r\n<p style="margin: 20px 0px; padding: 0px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); text-align: center;">\r\n	<span class="cmt-img-editor-el" style="font-size: 0px; line-height: 0; position: relative; display: inline-block; vertical-align: top;"><button class="cmt-img-editor-bt" data-data="{i:6,target:''cmt_img_ikuiqa588po''}" data-event="showImgBt" style="margin: 0px; padding: 0px; transition: all 0.4s cubic-bezier(1, 0.03, 0.26, 1.43); display: block; position: absolute; bottom: 10px; right: 10px; border-width: 0px; border-style: initial; border-color: initial; font-size: 0px; line-height: 0; width: 86px; height: 27px; opacity: 0; cursor: pointer; background-repeat: no-repeat; background-position: 0px -1117px; background-image: url(&quot;http://www1.pconline.com.cn/test/cxk/static/images/icons.png&quot;);"></button></span></p>\r\n<p style="margin: 20px 0px; padding: 0px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51);">\r\n	　　在荣耀9并没有激进地去掉3.5mm耳机口，对于绝大部分用户而言是值得高兴的一件事，毕竟3.5mm耳机依旧是普及最广泛的，而且这对于边充电边听歌的用户而言体验很差，也许若干年后，当无线充电/无线耳机开始普及的时候，3.5mm耳机口才会慢慢被手机厂商和消费者遗弃。</p>\r\n', 1, 284, 0, 0, 0, '', '2017-07-02 14:09:47'),
(5, '10点开始预约：一加5手机（骁龙835+6/8GB RAM）   刘作虎：不用抢', 30, '头条,推荐,加粗', '手机，一加', '手机，phone', '/phpeg/CMS6.7/uploads/2017-06-14/20170614213455412.jpg', '太平洋网', 'admin', '【PConline 聚超值】\r\n一加5可谓小米6之后最受瞩目的国产手机了，从此前的爆料的硬件规格来看，一加5将会是目前地球最强的安卓手机，一加5手机采用了高通旗舰骁龙835芯片，并且搭载有6/8GB的内存，以及64/128GB ROM，1600w像素的双摄，前置指纹识别，屏幕则是更成熟省电的5.5英寸1080P Amoled。', '<p>\r\n	<strong class="art-headtag" style="float: left; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, tahoma, HELVETICA; font-size: 16px;">【PConline 聚超值】</strong></p>\r\n<p style="margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, tahoma, HELVETICA; font-size: 16px;">\r\n	一加5可谓小米6之后最受瞩目的国产手机了，从此前的爆料的硬件规格来看，一加5将会是目前地球最强的安卓手机，一加5手机采用了高通旗舰骁龙835芯片，并且搭载有6/8GB的内存，以及64/128GB ROM，1600w像素的双摄，前置指纹识别，屏幕则是更成熟省电的5.5英寸1080P Amoled。</p>\r\n<p style="margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, tahoma, HELVETICA; font-size: 16px;">\r\n	&nbsp;</p>\r\n<p _hover-ignore="1" style="margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, tahoma, HELVETICA; font-size: 16px;">\r\n	目前一加已经在<a href="http://best.pconline.com.cn/load.jsp?topicId=989397" style="color: rgb(238, 68, 68); text-decoration-line: none; outline: none; border-bottom: 1px dashed rgb(238, 68, 68);" target="_blank">京东商城</a>上架，10点钟就可以开启预约，价钱方面，尚未公布，不过按照一加以往几代手机的价格来看，售价3000左右的可能性相当大，这样的话，性价比还是相当突出的，毕竟这是835+6/8GB内存的手机，全球无出其右。</p>\r\n<p style="margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, tahoma, HELVETICA; font-size: 16px;">\r\n	&nbsp;</p>\r\n<p style="margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, tahoma, HELVETICA; font-size: 16px;">\r\n	除此之外，一加CEO刘作虎在微博上表示&ldquo;<strong>这次买一加5将是非常轻松加愉快的</strong>&rdquo;，这无疑是告诉外界，这次一加5将会告别抢购的模式。</p>\r\n<p style="margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;, tahoma, HELVETICA; font-size: 16px; text-align: center;">\r\n	<img alt="" src="/phpeg/CMS6.7/uploads/2017-06-14/20170614213600520.jpg" style="width: 255px; height: 255px;" /></p>\r\n', 0, 199, 63, 1, 1, 'red', '2017-07-01 21:36:42'),
(6, '还记得东芝吗？新发布的笔记本有个小蓝点。', 34, '头条,推荐,跳转', '手机，电脑，东芝', 'Tecra X40', '/phpeg/CMS6.8/uploads/2017-06-15/20170615091105542.jpg', '太平洋电脑网', 'admin', '【PConline 资讯】东芝今天发布了一款全新的超极本—Tecra X40。Tecra X40厚度问16.9mm，14英寸的它重量大约1.25Kg，可谓是非常轻薄了。并且继承了人脸识别、指纹识别、BitLocker、可信计算、vPro、指点杆(小蓝点)等，所以Tecra X40得对于商务人士来说非常的契合。', '<p style="margin: 20px 0px; padding: 0px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51);">\r\n	<strong>【PConline 资讯】</strong>东芝今天发布了一款全新的超极本&mdash;Tecra X40。Tecra X40厚度问16.9mm，14英寸的它重量大约1.25Kg，可谓是非常轻薄了。并且继承了人脸识别、指纹识别、BitLocker、可信计算、vPro、指点杆(小蓝点)等，所以Tecra X40得对于商务人士来说非常的契合。</p>\r\n<p style="margin: 20px 0px; padding: 0px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); text-align: center;">\r\n	<img alt="" src="/phpeg/CMS6.8/uploads/2017-06-15/20170615091211445.jpg" style="width: 600px; height: 464px;" /></p>\r\n<p style="margin: 20px 0px; padding: 0px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); text-align: center;">\r\n	<span class="cmt-img-editor-el" style="font-size: 0px; line-height: 0; position: relative; display: inline-block; vertical-align: top;"><button class="cmt-img-editor-bt" data-data="{i:0,target:''cmt_img_vo5ukp2l6s''}" data-event="showImgBt" style="margin: 0px; padding: 0px; transition: all 0.4s cubic-bezier(1, 0.03, 0.26, 1.43); display: block; position: absolute; bottom: 10px; right: 10px; border-width: 0px; border-style: initial; border-color: initial; font-size: 0px; line-height: 0; width: 86px; height: 27px; opacity: 0; cursor: pointer; background-repeat: no-repeat; background-position: 0px -1117px; background-image: url(&quot;http://www1.pconline.com.cn/test/cxk/static/images/icons.png&quot;);"></button></span></p>\r\n<p style="margin: 20px 0px; padding: 0px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51);">\r\n	　　电脑基本配置方面7代酷睿处理器，Windows 10专业版系统，1080P显示屏，提供2个USB-C(雷电3)、1个USB 3.0 Type-A、一个HDMI、1个读卡器、1个耳麦一体。</p>\r\n<p style="margin: 20px 0px; padding: 0px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51); text-align: center;">\r\n	<span class="cmt-img-editor-el" style="font-size: 0px; line-height: 0; position: relative; display: inline-block; vertical-align: top;"><button class="cmt-img-editor-bt" data-data="{i:1,target:''cmt_img_vo5ukp2l6s''}" data-event="showImgBt" style="margin: 0px; padding: 0px; transition: all 0.4s cubic-bezier(1, 0.03, 0.26, 1.43); display: block; position: absolute; bottom: 10px; right: 10px; border-width: 0px; border-style: initial; border-color: initial; font-size: 0px; line-height: 0; width: 86px; height: 27px; opacity: 0; cursor: pointer; background-repeat: no-repeat; background-position: 0px -1117px; background-image: url(&quot;http://www1.pconline.com.cn/test/cxk/static/images/icons.png&quot;);"></button></span></p>\r\n<p style="margin: 20px 0px; padding: 0px; height: auto; overflow: visible; font-stretch: normal; font-size: 16px; line-height: 30px; font-family: &quot;Microsoft Yahei&quot;; word-break: break-all; color: rgb(51, 51, 51);">\r\n	　　Tecra X40的起步价是1329.99美元(约合9040元)，配套的雷电3坞站299.99美元、多合一USB-C适配器45美元。</p>\r\n', 1, 458, 0, 2, 2, 'blue', '2017-07-01 09:13:46'),
(7, '美国女宇航员八次行走太空 破多项纪录,成为迄今太空行走次数最多、太空行走总时长最多的女性。', 36, '推荐,头条', '', '', '', '', 'admin', '该位宇航员已于2017年3月30日第八次出舱进行太空行走，成为迄今太空行走次数最多、太空行走总时长最多的女性。', '<p>\r\n	该位宇航员已于2017年3月30日第八次出舱进行太空行走，成为迄今太空行走次数最多、太空行走总时长最多的女性。</p>\r\n<p style="text-align: center;">\r\n	<img alt="" src="/phpeg/CMS9.0/uploads/2017-07-02/20170702125817611.jpg" style="width: 810px; height: 493px;" /></p>\r\n<p>\r\n	<span style="color: rgb(68, 68, 68); font-family: ''Microsoft Yahei'', 微软雅黑, Tahoma, Arial, STHeiti, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 30px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">当地时间7月1日，美国航空航天局(NASA)公布了57岁女宇航员佩姬&middot;惠特森在太空行走的照片。</span></p>\r\n', 1, 109, 0, 0, 0, '', '2017-07-01 12:53:58');

-- --------------------------------------------------------

--
-- 表的结构 `cms_level`
--

CREATE TABLE IF NOT EXISTS `cms_level` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//编号',
  `level_name` varchar(20) NOT NULL COMMENT '//等级名称',
  `level_info` varchar(200) NOT NULL COMMENT '//等级说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `cms_level`
--

INSERT INTO `cms_level` (`id`, `level_name`, `level_info`) VALUES
(1, '普通管理员', '除了不能操作别的管理员，其他任何后台功能都可以操作。'),
(2, '超级管理员', '最大的权限，如果只有一个超级管理员的时候，不能删除自己。'),
(3, '发帖专员', '可以发表文章及修改和删除文章的权限。'),
(4, '评论专员', '可以对文章的评论进行回复及删除'),
(5, '会员专员', '只有管理员的权限，包括新增、删除、修改和查询。'),
(6, '后台游客', '只能访问后台的权限。'),
(17, '11111', '11112');

-- --------------------------------------------------------

--
-- 表的结构 `cms_link`
--

CREATE TABLE IF NOT EXISTS `cms_link` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//编号',
  `webname` varchar(20) NOT NULL COMMENT '//网站名称',
  `weburl` varchar(100) NOT NULL COMMENT '//网站地址',
  `logourl` varchar(100) NOT NULL COMMENT '//logo地址',
  `user` varchar(20) NOT NULL COMMENT '//站长名',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//类型',
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//状态',
  `date` datetime NOT NULL COMMENT '//时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `cms_link`
--

INSERT INTO `cms_link` (`id`, `webname`, `weburl`, `logourl`, `user`, `type`, `state`, `date`) VALUES
(1, '网易新闻', 'http://news.163.com', '', '丁磊', 1, 1, '2017-07-09 09:42:28'),
(2, '优酷视频', 'http://www.youku.com', 'images/youku.png', '古永锵', 2, 1, '2017-07-09 09:44:10'),
(3, '百度搜索', 'http://www.baidu.com', '', '李彦宏', 1, 1, '2017-07-10 10:34:10'),
(5, '新浪网', 'http://www.sina.com', 'images/xinlang.png', '张朝阳', 2, 0, '2017-07-10 10:40:17');

-- --------------------------------------------------------

--
-- 表的结构 `cms_manage`
--

CREATE TABLE IF NOT EXISTS `cms_manage` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//等级编号',
  `admin_user` varchar(20) NOT NULL COMMENT '//管理员账号',
  `admin_pass` char(40) NOT NULL COMMENT '//管理员密码',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '//管理员等级',
  `login_count` smallint(5) NOT NULL DEFAULT '0' COMMENT '//管理员登陆次数',
  `last_ip` varchar(20) NOT NULL DEFAULT '0000.0000.0000.0000' COMMENT '//登陆ip',
  `last_time` datetime NOT NULL COMMENT '//最后一次登录时间',
  `reg_time` datetime NOT NULL COMMENT '//注册时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `cms_manage`
--

INSERT INTO `cms_manage` (`id`, `admin_user`, `admin_pass`, `level`, `login_count`, `last_ip`, `last_time`, `reg_time`) VALUES
(2, '李炎恢', 'e10adc3949ba59abbe56e057f20f883e', 1, 0, '0000.0000.0000.0000', '0000-00-00 00:00:00', '2017-04-08 00:00:00'),
(3, '我叫MT', 'e10adc3949ba59abbe56e057f20f883e', 5, 0, '0000.0000.0000.0000', '0000-00-00 00:00:00', '2017-04-08 00:00:00'),
(5, '樱木花道', 'e10adc3949ba59abbe56e057f20f883e', 3, 0, '0000.0000.0000.0000', '0000-00-00 00:00:00', '2017-04-15 22:42:17'),
(6, '赤木晴子', 'e10adc3949ba59abbe56e057f20f883e', 5, 0, '0000.0000.0000.0000', '0000-00-00 00:00:00', '2017-04-15 22:43:00'),
(7, '流川枫', 'e10adc3949ba59abbe56e057f20f883e', 3, 0, '0000.0000.0000.0000', '0000-00-00 00:00:00', '2017-04-15 22:44:01'),
(8, '赤木刚宪', 'e10adc3949ba59abbe56e057f20f883e', 6, 0, '0000.0000.0000.0000', '0000-00-00 00:00:00', '2017-04-15 22:44:27'),
(9, '陈真', 'e10adc3949ba59abbe56e057f20f883e', 3, 0, '0000.0000.0000.0000', '0000-00-00 00:00:00', '2017-04-15 22:45:01'),
(10, '顾涛', 'e10adc3949ba59abbe56e057f20f883e', 5, 0, '0000.0000.0000.0000', '0000-00-00 00:00:00', '2017-04-15 22:45:46'),
(11, '万一', '7c4a8d09ca3762af61e59520943dc26494f8941b', 3, 0, '0000.0000.0000.0000', '0000-00-00 00:00:00', '2017-04-15 22:46:31'),
(13, '胡邦', 'e10adc3949ba59abbe56e057f20f883e', 5, 0, '0000.0000.0000.0000', '0000-00-00 00:00:00', '2017-04-15 22:47:44'),
(14, '海娟', 'e10adc3949ba59abbe56e057f20f883e', 1, 0, '0000.0000.0000.0000', '0000-00-00 00:00:00', '2017-04-15 22:48:01'),
(15, '黄智慧', 'e10adc3949ba59abbe56e057f20f883e', 5, 0, '0000.0000.0000.0000', '0000-00-00 00:00:00', '2017-04-15 22:48:26'),
(16, '伍涛', 'e10adc3949ba59abbe56e057f20f883e', 3, 0, '0000.0000.0000.0000', '0000-00-00 00:00:00', '2017-04-15 22:48:52'),
(17, '伍天乐', 'e10adc3949ba59abbe56e057f20f883e', 5, 0, '0000.0000.0000.0000', '0000-00-00 00:00:00', '2017-04-15 22:49:19'),
(18, '阿南', 'e10adc3949ba59abbe56e057f20f883e', 3, 0, '0000.0000.0000.0000', '0000-00-00 00:00:00', '2017-04-15 23:49:25'),
(19, '叶一夫', 'e10adc3949ba59abbe56e057f20f883e', 1, 16, '127.0.0.1', '2017-11-13 22:58:33', '2017-04-16 09:30:30'),
(21, 'adminn', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 0, '0000.0000.0000.0000', '0000-00-00 00:00:00', '2017-11-12 20:41:33');

-- --------------------------------------------------------

--
-- 表的结构 `cms_nav`
--

CREATE TABLE IF NOT EXISTS `cms_nav` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//编号',
  `nav_name` varchar(20) NOT NULL COMMENT '//导航名',
  `nav_info` varchar(200) NOT NULL COMMENT '//导航说明',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '//子分类',
  `sort` mediumint(8) unsigned NOT NULL COMMENT '//排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- 转存表中的数据 `cms_nav`
--

INSERT INTO `cms_nav` (`id`, `nav_name`, `nav_info`, `pid`, `sort`) VALUES
(2, '八卦娱乐', '娱乐界的狗仔新闻', 0, 3),
(3, '时尚女人', '关于时尚和女人方面的信息。', 0, 2),
(4, '科技频道', '关于科技方面的资讯', 0, 9),
(5, '智能手机', '关于智能手机方面的推荐', 0, 4),
(6, '美容护肤', '关于美容护肤的频道', 0, 5),
(7, '房产家居', '关于房产家居的信息。', 0, 6),
(8, '热门汽车', '关于热门汽车的频道。', 0, 7),
(9, '读书教育', '关于读书方面的信息', 0, 8),
(29, '军事新闻', '关于军事动态的信息。', 0, 1),
(30, '中国军事', '关于中国军事动态的信息。', 29, 1),
(31, '韩国军事', '关于韩国军事的信息。', 29, 2),
(34, '日本军事', '关于日本军事的信息。', 29, 3),
(35, '越南军事', '关于越南军事的信息。', 29, 4),
(36, '美国军事', '关于美国军事的动态新闻', 29, 36),
(37, '朝鲜军事', '关于朝鲜的动态军事信息。', 29, 37),
(38, '小米', '', 5, 38);

-- --------------------------------------------------------

--
-- 表的结构 `cms_rotatain`
--

CREATE TABLE IF NOT EXISTS `cms_rotatain` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//id',
  `thumbnail` varchar(100) NOT NULL COMMENT '//图片',
  `title` varchar(20) NOT NULL COMMENT '//标题',
  `info` varchar(200) NOT NULL COMMENT '//简介',
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//状态是否在前台轮播',
  `link` varchar(100) NOT NULL COMMENT '//地址',
  `date` datetime NOT NULL COMMENT '//发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `cms_rotatain`
--

INSERT INTO `cms_rotatain` (`id`, `thumbnail`, `title`, `info`, `state`, `link`, `date`) VALUES
(1, '/CMS10.9/uploads/2017-11-12/20171112202224191.jpg', '荣耀9评测：秀外慧中，既能拼实力又能拼颜', '从去年开始，荣耀手机已经拓宽自家旗舰机型的产品线，带来了荣耀V8、荣耀8和荣耀NOTE 8三款覆盖不同用户群体的机型。现在，荣耀又带来了今年的第二款重磅产品，也就是荣耀9。', 1, 'http://127.0.0.1/CMS10.9/details.php?id=3', '2017-07-04 10:38:49'),
(2, '/CMS10.9/uploads/2017-11-12/20171112204541431.jpg', '10点开始预约：一加5手机（骁龙835+', '【PConline 聚超值】 一加5可谓小米6之后最受瞩目的国产手机了，从此前的爆料的硬件规格来看，一加5将会是目前地球最强的安卓手机，一加5手机采用了高通旗舰骁龙835芯片，并且搭载有6/8GB的内存，以及64/128GB ROM，1600w像素的双摄，前置指纹识别，屏幕则是更成熟省电的5.5英寸1080P Amoled。', 1, 'http://127.0.0.1/CMS10.9/details.php?id=5', '2017-07-04 10:44:26'),
(3, '/CMS10.9/uploads/2017-11-12/20171112211528135.jpg', '还记得东芝吗？新发布的笔记本有个小蓝点。', '东芝今天发布了一款全新的超极本—Tecra X40。Tecra X40厚度问16.9mm，14英寸的它重量大约1.25Kg，可谓是非常轻薄了。并且继承了人脸识别、指纹识别、BitLocker、可信计算、vPro、指点杆(小蓝点)等，所以Tecra X40得对于商务人士来说非常的契合。', 1, 'http://127.0.0.1/CMS10.9/details.php?id=6', '2017-07-04 10:46:47'),
(4, '/CMS10.9/uploads/2017-11-12/20171112202111947.jpg', '索尼PS VR游戏销量公布 歪果仁最爱的', '虽然索尼PS VR一直处于缺货状态，到本周为止，PS VR刚好发售了差不多一个月的时间，到底哪款PS VR游戏更受玩家青睐？我们来看看美国和欧洲两个地区的PlayStation Store的VR游戏销量排行吧！', 1, 'http://127.0.0.1/CMS10.9/details.php?id=2', '2017-07-04 10:49:29');

-- --------------------------------------------------------

--
-- 表的结构 `cms_tag`
--

CREATE TABLE IF NOT EXISTS `cms_tag` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//编号',
  `tagname` varchar(20) NOT NULL COMMENT '//标签名',
  `count` smallint(6) unsigned NOT NULL DEFAULT '1' COMMENT '//访问次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `cms_tag`
--

INSERT INTO `cms_tag` (`id`, `tagname`, `count`) VALUES
(1, '荣耀9', 9),
(2, '手机', 15),
(3, '电脑', 9),
(4, '东芝', 4),
(5, '索尼PS', 4),
(6, 'VR', 1);

-- --------------------------------------------------------

--
-- 表的结构 `cms_user`
--

CREATE TABLE IF NOT EXISTS `cms_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//编号',
  `user` varchar(20) NOT NULL COMMENT '//用户名',
  `pass` char(40) NOT NULL COMMENT '//密码',
  `email` varchar(30) NOT NULL COMMENT '//电子邮件',
  `face` varchar(10) NOT NULL COMMENT '//头像',
  `question` varchar(20) NOT NULL COMMENT '//提问',
  `answer` varchar(20) NOT NULL COMMENT '//答案',
  `state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//会员状态',
  `time` datetime NOT NULL COMMENT '//最近登录时间',
  `date` datetime NOT NULL COMMENT '//注册时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- 转存表中的数据 `cms_user`
--

INSERT INTO `cms_user` (`id`, `user`, `pass`, `email`, `face`, `question`, `answer`, `state`, `time`, `date`) VALUES
(6, '蜡笔小新', 'e10adc3949ba59abbe56e057f20f883e', '666666@qq.com', '02.gif', '您母亲的职业？', '家庭主妇', 1, '0000-00-00 00:00:00', '2017-06-21 09:36:07'),
(7, '樱桃小丸子', 'e10adc3949ba59abbe56e057f20f883e', '654321@qq.com', '03.gif', '您父亲的姓名？', '樱桃', 1, '0000-00-00 00:00:00', '2017-06-21 11:09:44'),
(8, '黑崎一护', 'e10adc3949ba59abbe56e057f20f883e', '123456@qq.com', '04.gif', '您父亲的姓名？', '黑', 1, '0000-00-00 00:00:00', '2017-06-21 13:32:39'),
(12, '路飞', 'e10adc3949ba59abbe56e057f20f883e', '123456@qq.com', '01.gif', '您母亲的职业？', '老师', 1, '0000-00-00 00:00:00', '2017-06-22 16:34:50'),
(15, '圣斗士', 'e10adc3949ba59abbe56e057f20f883e', '23435@qq.com', '06.gif', '您父亲的姓名？', '高', 2, '0000-00-00 00:00:00', '2017-06-28 14:20:20'),
(16, '子龙', 'c33367701511b4f6020ec61ded352059', '666@qq.com', '15.gif', '您父亲的姓名？', '赵', 4, '0000-00-00 00:00:00', '2017-06-28 18:45:27'),
(20, 'qee', '', 'yc60.com', '', '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `cms_vote`
--

CREATE TABLE IF NOT EXISTS `cms_vote` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//编号',
  `title` varchar(20) NOT NULL COMMENT '//标题',
  `info` varchar(200) NOT NULL COMMENT '//简介',
  `vid` mediumint(8) NOT NULL DEFAULT '0' COMMENT '//是否主题',
  `count` smallint(6) NOT NULL DEFAULT '0' COMMENT '//投票数',
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否前台首选',
  `date` datetime NOT NULL COMMENT '//时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `cms_vote`
--

INSERT INTO `cms_vote` (`id`, `title`, `info`, `vid`, `count`, `state`, `date`) VALUES
(2, '你最喜欢的旅游地区是哪？', '你最喜欢的旅游地区是哪？', 0, 120, 0, '2017-07-05 20:15:47'),
(3, '江苏扬州', '江苏扬州', 0, -120, 0, '2017-07-05 20:18:14'),
(4, '江苏苏州', '江苏苏州', 2, 0, 0, '2017-07-05 20:38:41'),
(5, '浙江温州', '浙江温州', 2, 0, 0, '2017-07-05 20:41:33'),
(6, '你最喜欢的男歌手是谁？', '你最喜欢的男歌手是谁？', 0, 0, 0, '2017-07-07 10:57:46'),
(7, '张国荣', '张国荣', 6, 2, 0, '2017-07-07 10:58:28'),
(8, '黄家驹', '黄家驹', 6, 1, 0, '2017-07-07 10:58:53'),
(9, '你最喜欢的旅游地区是哪里？', '你最喜欢的旅游地区是哪里？', 0, 0, 1, '2017-07-07 10:59:45'),
(10, '林志炫', '林志炫', 6, 1, 0, '2017-07-08 09:27:57'),
(11, '长沙', '', 9, 0, 0, '2017-11-13 22:59:35'),
(12, '邵阳', '', 9, 1, 0, '2017-11-13 22:59:46');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
