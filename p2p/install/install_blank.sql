﻿-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2016 年 02 月 15 日 01:58
-- 服务器版本: 5.5.40
-- PHP 版本: 5.3.29

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


--
-- 数据库: `fanwe3.6`
--

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%admin`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adm_name` varchar(255) NOT NULL COMMENT '管理员用户名',
  `adm_password` varchar(255) NOT NULL COMMENT '管理员密码',
  `is_effect` tinyint(1) NOT NULL COMMENT '有效性控制',
  `is_delete` tinyint(1) NOT NULL COMMENT '删除标识',
  `role_id` int(11) NOT NULL COMMENT '角色ID(权限控制用)',
  `login_time` int(11) NOT NULL COMMENT '最后登录时间',
  `login_ip` varchar(255) NOT NULL COMMENT '最后登录IP',
  `work_id` varchar(255) NOT NULL COMMENT '员工编号',
  `is_department` tinyint(1) NOT NULL COMMENT '用户类型   0：管理员，1：部门',
  `pid` int(11) NOT NULL COMMENT '所属部门编号',
  `referrals_rate` varchar(50) NOT NULL COMMENT '提成系数',
  `referrals_count` int(11) NOT NULL COMMENT '部门成员人数',
  `referrals_money` decimal(11,0) NOT NULL,
  `role_ids` text NOT NULL,
  `real_name` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_adm_name` (`adm_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `%DB_PREFIX%admin`
--

INSERT INTO `%DB_PREFIX%admin` (`id`, `adm_name`, `adm_password`, `is_effect`, `is_delete`, `role_id`, `login_time`, `login_ip`, `work_id`, `is_department`, `pid`, `referrals_rate`, `referrals_count`, `referrals_money`, `role_ids`, `real_name`, `mobile`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 0, 5, 1455425905, '127.0.0.1', '', 0, 0, '', 0, '0', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%admin_carry`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%admin_carry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL COMMENT '管理ID',
  `admin_name` varchar(50) NOT NULL COMMENT '管理员名称',
  `money` decimal(20,2) NOT NULL COMMENT '提现金额',
  `memo` text NOT NULL COMMENT '操作备注',
  `create_time` int(11) NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%admin_carry_copy`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%admin_carry_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL COMMENT '管理ID',
  `admin_name` varchar(50) NOT NULL COMMENT '管理员名称',
  `money` decimal(20,2) NOT NULL COMMENT '提现金额',
  `memo` text NOT NULL COMMENT '操作备注',
  `create_time` int(11) NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%admin_copy`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%admin_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adm_name` varchar(255) NOT NULL,
  `adm_password` varchar(255) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `role_id` int(11) NOT NULL,
  `login_time` int(11) NOT NULL,
  `login_ip` varchar(255) NOT NULL,
  `is_department` tinyint(1) NOT NULL COMMENT '�û�����   0������Ա��1������',
  `pid` int(11) NOT NULL COMMENT '������ű��',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_adm_name` (`adm_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%admin_referrals`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%admin_referrals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memo` text NOT NULL COMMENT '操作备注',
  `deal_id` int(11) NOT NULL COMMENT '关联贷款',
  `user_id` int(11) NOT NULL COMMENT '投资账户',
  `rel_admin_id` int(11) NOT NULL COMMENT '关联管理员ID',
  `admin_id` int(11) NOT NULL COMMENT '管理员ID',
  `loan_money` decimal(11,2) NOT NULL,
  `money` decimal(11,4) NOT NULL COMMENT '提成金额',
  `create_time` int(11) NOT NULL COMMENT '发生时间',
  `create_date` date NOT NULL COMMENT '发生时间 YMD',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=21 ;

--
-- 转存表中的数据 `%DB_PREFIX%admin_referrals`
--

INSERT INTO `%DB_PREFIX%admin_referrals` (`id`, `memo`, `deal_id`, `user_id`, `rel_admin_id`, `admin_id`, `loan_money`, `money`, `create_time`, `create_date`) VALUES
(1, '[<a href=''/index.php?ctl=deal&id=354395'' target=''_blank''>bmtest</a>],满标放款', 354395, 440225, 5, 24, '1500.00', '2.0548', 1451845800, '2016-01-04'),
(2, '[<a href=''/index.php?ctl=deal&id=354395'' target=''_blank''>bmtest</a>],满标放款', 354395, 440225, 24, 5, '1500.00', '0.0000', 1451845800, '2016-01-04'),
(3, '[<a href=''/index.php?ctl=deal&id=354396'' target=''_blank''>bmtest1</a>],满标放款', 354396, 440225, 5, 24, '1500.00', '4.1096', 1451846497, '2016-01-04'),
(4, '[<a href=''/index.php?ctl=deal&id=354396'' target=''_blank''>bmtest1</a>],满标放款', 354396, 440225, 24, 5, '1500.00', '0.2466', 1451846497, '2016-01-04'),
(5, '[<a href=''/index.php?ctl=deal&id=354399'' target=''_blank''>test3--sxed</a>],满标放款', 354399, 440225, 5, 24, '5000.00', '13.6986', 1451867709, '2016-01-04'),
(6, '[<a href=''/index.php?ctl=deal&id=354399'' target=''_blank''>test3--sxed</a>],满标放款', 354399, 440225, 24, 5, '5000.00', '0.8219', 1451867709, '2016-01-04'),
(7, '[<a href=''/index.php?ctl=deal&id=354400'' target=''_blank''>test5-sxed</a>],满标放款', 354400, 440225, 5, 24, '3000.00', '8.2192', 1451868307, '2016-01-04'),
(8, '[<a href=''/index.php?ctl=deal&id=354400'' target=''_blank''>test5-sxed</a>],满标放款', 354400, 440225, 24, 5, '3000.00', '0.4932', 1451868307, '2016-01-04'),
(9, '[<a href=''/index.php?ctl=deal&id=354401'' target=''_blank''>test5-sxed</a>],满标放款', 354401, 440225, 5, 24, '3000.00', '8.2192', 1451868476, '2016-01-04'),
(10, '[<a href=''/index.php?ctl=deal&id=354401'' target=''_blank''>test5-sxed</a>],满标放款', 354401, 440225, 24, 5, '3000.00', '0.4932', 1451868476, '2016-01-04'),
(11, '[<a href=''/index.php?ctl=deal&id=354402'' target=''_blank''>sxed</a>],满标放款', 354402, 440225, 5, 24, '5000.00', '13.6986', 1451868996, '2016-01-04'),
(12, '[<a href=''/index.php?ctl=deal&id=354402'' target=''_blank''>sxed</a>],满标放款', 354402, 440225, 24, 5, '5000.00', '0.8219', 1451868996, '2016-01-04'),
(13, '[<a href=''/index.php?ctl=deal&id=354403'' target=''_blank''>sxed</a>],满标放款', 354403, 440225, 5, 24, '5000.00', '13.6986', 1451929632, '2016-01-05'),
(14, '[<a href=''/index.php?ctl=deal&id=354403'' target=''_blank''>sxed</a>],满标放款', 354403, 440225, 24, 5, '5000.00', '0.8219', 1451929632, '2016-01-05'),
(15, '[<a href=''/index.php?ctl=deal&id=354408'' target=''_blank''>djtest</a>],满标放款', 354408, 440225, 5, 24, '3000.00', '8.2192', 1451958626, '2016-01-05'),
(16, '[<a href=''/index.php?ctl=deal&id=354408'' target=''_blank''>djtest</a>],满标放款', 354408, 440225, 24, 5, '3000.00', '0.4932', 1451958626, '2016-01-05'),
(17, '[<a href=''/index.php?ctl=deal&id=354417'' target=''_blank''>test2</a>],满标放款', 354417, 440226, 26, 27, '3000.00', '15.0000', 1452126177, '2016-01-07'),
(18, '[<a href=''/index.php?ctl=deal&id=354417'' target=''_blank''>test2</a>],满标放款', 354417, 440226, 27, 26, '3000.00', '1.2000', 1452126177, '2016-01-07'),
(19, '[<a href=''/index.php?ctl=deal&id=354407'' target=''_blank''>zjtest</a>],满标放款', 354407, 440225, 5, 24, '3000.00', '37.5000', 1452126984, '2016-01-07'),
(20, '[<a href=''/index.php?ctl=deal&id=354407'' target=''_blank''>zjtest</a>],满标放款', 354407, 440225, 24, 5, '3000.00', '2.2500', 1452126984, '2016-01-07');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%adv`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%adv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tmpl` varchar(255) NOT NULL,
  `adv_id` varchar(255) NOT NULL,
  `code` text NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city_ids` varchar(255) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_table` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tmpl` (`tmpl`),
  KEY `adv_id` (`adv_id`),
  KEY `city_ids` (`city_ids`),
  KEY `rel_id` (`rel_id`),
  KEY `rel_table` (`rel_table`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- 转存表中的数据 `%DB_PREFIX%adv`
--

INSERT INTO `%DB_PREFIX%adv` (`id`, `tmpl`, `adv_id`, `code`, `is_effect`, `name`, `city_ids`, `rel_id`, `rel_table`) VALUES
(25, 'blue', '首页广告位1', '<img src="./public/attachment/201503/24/10/5510cc496801a.jpg" alt="" /><br />', 1, '广告一', '', 0, ''),
(23, 'blue', '首页广告位2', '<img src="./public/attachment/201503/24/10/5510cc39e6eae.jpg" alt="" />', 1, '广告二', '', 0, ''),
(33, 'blue', '理财广告位2', '<img src="./public/attachment/197001/01/16/55924a0d70e00.jpg" alt="" />', 1, '理财广告2', '', 0, ''),
(28, 'blue', '首页右侧顶部广告', '<a href="http://p2p.fanwe.net/" target="_blank"><img src="./public/attachment/201503/24/10/5510cc24d2ebd.png" alt="" /></a> \r\n<div class="blank15">\r\n</div>\r\n<div class="blank15">\r\n</div>\r\n<a href="http://p2p.fanwe.net/" target="_blank"><img src="./public/attachment/201503/24/11/5510d44573b52.png" alt="" /></a> \r\n<div class="blank15">\r\n</div>', 1, '首页右侧顶部', '', 0, ''),
(18, 'blue', '安全保障左侧', '<img border="0" alt="" src="./public/attachment/201407/30/18/53d8c33183ebc.jpg" width="545" />', 1, '安全保障', '', 0, ''),
(32, 'blue', '理财广告位1', '<img src="./public/attachment/197001/01/16/559249f4b3714.jpg" alt="" />', 1, '理财广告1', '', 0, ''),
(31, 'blue', '广告位2', '<a href="http://p2p.fanwe.net/" target="_blank"><img src="./public/attachment/197001/01/16/5538c3ec68f94.jpg" alt="" /></a>', 1, '配资首页2', '', 0, ''),
(44, 'new', '理财广告位1', '<img src="http://p2p.fanwe.net/public/attachment/197001/01/16/55924a0d70e00.jpg" alt="" width="1920" height="320" title="" align="" />', 1, '理财广告位', '', 0, ''),
(42, 'new', '首页广告位1', '<img src="ban1.jpg" alt="" />', 1, '首页广告', '', 0, ''),
(43, 'new', '首页广告位2', '<img src="ban2.jpg" alt="" />', 1, '首页广告', '', 0, ''),
(45, 'new', '首页右侧顶部广告位', '<img src="ad1.jpg" alt="" />', 1, '首页小广告图', '', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%adv_copy`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%adv_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tmpl` varchar(255) NOT NULL,
  `adv_id` varchar(255) NOT NULL,
  `code` text NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city_ids` varchar(255) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_table` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tmpl` (`tmpl`),
  KEY `adv_id` (`adv_id`),
  KEY `city_ids` (`city_ids`),
  KEY `rel_id` (`rel_id`),
  KEY `rel_table` (`rel_table`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- 转存表中的数据 `%DB_PREFIX%adv_copy`
--

INSERT INTO `%DB_PREFIX%adv_copy` (`id`, `tmpl`, `adv_id`, `code`, `is_effect`, `name`, `city_ids`, `rel_id`, `rel_table`) VALUES
(25, 'blue', '首页广告位1', '<img src="./public/attachment/201503/24/10/5510cc496801a.jpg" alt="" /><br />', 1, '广告一', '', 0, ''),
(23, 'blue', '首页广告位2', '<img src="./public/attachment/201503/24/10/5510cc39e6eae.jpg" alt="" />', 1, '广告二', '', 0, ''),
(28, 'blue', '首页右侧顶部广告', '<a href="http://p2p.fanwe.net/" target="_blank"><img src="./public/attachment/201503/24/10/5510cc24d2ebd.png" alt="" /></a> \r\n<div class="blank15">\r\n</div>\r\n<div class="blank15">\r\n</div>\r\n<a href="http://p2p.fanwe.net/" target="_blank"><img src="./public/attachment/201503/24/11/5510d44573b52.png" alt="" /></a> \r\n<div class="blank15">\r\n</div>', 1, '首页右侧顶部', '', 0, ''),
(18, 'blue', '安全保障左侧', '<img border="0" alt="" src="./public/attachment/201407/30/18/53d8c33183ebc.jpg" width="545" />', 1, '安全保障', '', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%api_log`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%api_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `act` varchar(30) NOT NULL,
  `api` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `%DB_PREFIX%api_log`
--

INSERT INTO `%DB_PREFIX%api_log` (`id`, `act`, `api`) VALUES
(1, 'init', 'http://www.06.com/mapi/index.php?requestData=Tl+A3+giHVDE1cnJ/4O+XMA5T/6hFlj34oEX7PET1XsBD8Hd7aQQVLcPlLTlyufVD2H7sFWu0vGqbnjWnBqG1Sa+TJTSZ2CD4Xj8MpjQUoqEStCbksA6g1nnWEtSQhBB&r_type=2'),
(2, 'init', 'http://www.06.com/mapi/index.php?requestData=Tl+A3+giHVDE1cnJ/4O+XMA5T/6hFlj34oEX7PET1XsBD8Hd7aQQVLcPlLTlyufVD2H7sFWu0vGqbnjWnBqG1Sa+TJTSZ2CD4Xj8MpjQUoqEStCbksA6g1nnWEtSQhBB&r_type=2'),
(3, 'init', 'http://www.06.com/mapi/index.php?requestData=Tl+A3+giHVDE1cnJ/4O+XMA5T/6hFlj34oEX7PET1XsBD8Hd7aQQVLcPlLTlyufVD2H7sFWu0vGqbnjWnBqG1Sa+TJTSZ2CD4Xj8MpjQUoqEStCbksA6g1nnWEtSQhBB&r_type=2'),
(4, 'deals', 'http://www.06.com/mapi/index.php?requestData=4sr31OuvpNnUzkfrgVzEVCG1DIZS2xyShUZL8Ex1vGsV8sFfsdOY3CLSD2cuWcPLpaNJrSL4gFIevGfd2Q8Q02ftFzqUV/k4bHgs0Mm5u0n1eHJ9yn/wYD+7a9tE6p6FSktVKZEZ9gzLYgPcdcVfgmui5c+MwZHayBtJHXeKUuQ=&r_type=2'),
(5, 'article_list', 'http://www.06.com/mapi/index.php?requestData=FNyhYdg8k0l1bFSG3IgSv7yBMC69FFxW9AUCq/Zq3hqtTE6UY5BYX+BxgnI/ixb5HpVgY1pdzibTiaUS8yOUQcqhqj4eyR7RaMN3O6KzCpKuyaqYFvaUMbOIYi9HbIqbn2Up9bBnXBham90fc2gabEnrKyMyXZ7oxF74z1XBXPaUep4F+JByRZqo+MgDR5n1Wki7o1d4RbggXwWFD9waag==&r_type=2'),
(6, 'init', 'http://www.06.com/mapi/index.php?requestData=Tl+A3+giHVDE1cnJ/4O+XMA5T/6hFlj34oEX7PET1XsBD8Hd7aQQVLcPlLTlyufVD2H7sFWu0vGqbnjWnBqG1Sa+TJTSZ2CD4Xj8MpjQUoqEStCbksA6g1nnWEtSQhBB&r_type=2'),
(7, 'transfer', 'http://www.06.com/mapi/index.php?requestData=bm1SPgB36r2VBaqI/xDa5M6RNsRMmSMwTCFyrlVYKb2hXzWufH+tCkKxTSQk8NPz6zRQYrmiasiXw4iCQTlgsiPtkTCy/d2fKxV18k03TIxSc1YkI52H7C5LGHwzWbA05Ok6kRCMmelTujvhmcvDLPiMKsYRCt7CQJShqjPPMDJ9uaw/vnxenH3OkdBuzN7Gakp7WyDXNfZtCitRb9T4zw==&r_type=2');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%api_login`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%api_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `config` text NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `bicon` varchar(255) NOT NULL,
  `is_weibo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%api_login_copy`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%api_login_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `config` text NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `bicon` varchar(255) NOT NULL,
  `is_weibo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- 转存表中的数据 `%DB_PREFIX%api_login_copy`
--

INSERT INTO `%DB_PREFIX%api_login_copy` (`id`, `name`, `config`, `class_name`, `icon`, `bicon`, `is_weibo`) VALUES
(25, 'QQv2登录插件', 'a:2:{s:7:"app_key";s:0:"";s:10:"app_secret";s:0:"";}', 'Qqv2', '', '', 0),
(26, '支付宝通用登录', 'a:2:{s:7:"app_key";s:0:"";s:10:"app_secret";s:0:"";}', 'Alipay', '', '', 0),
(27, '新浪微博api登录接口', 'a:3:{s:7:"app_key";s:10:"2300415704";s:10:"app_secret";s:32:"10423035b5fe01c401fcb508c3854de0";s:7:"app_url";s:0:"";}', 'Sina', './public/attachment/201409/29/17/5429277e5beaa.gif', './public/attachment/201409/29/17/5429278516681.png', 1),
(29, '支付宝快捷登录', 'a:2:{s:7:"app_key";s:0:"";s:10:"app_secret";s:0:"";}', 'Taobao', '', '', 0),
(30, '腾讯微博登录插件', 'a:2:{s:7:"app_key";s:0:"";s:10:"app_secret";s:0:"";}', 'Tencent', '', '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%article`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL COMMENT '图标',
  `content` text NOT NULL,
  `cate_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `add_admin_id` int(11) NOT NULL COMMENT '发布人',
  `is_effect` tinyint(4) NOT NULL,
  `rel_url` varchar(255) NOT NULL COMMENT '自动跳转的外链',
  `update_admin_id` int(11) NOT NULL COMMENT '更新人',
  `is_delete` tinyint(4) NOT NULL,
  `click_count` int(11) NOT NULL COMMENT '点击数',
  `sort` int(11) NOT NULL,
  `seo_title` text NOT NULL,
  `seo_keyword` text NOT NULL,
  `seo_description` text NOT NULL,
  `uname` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `brief` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cate_id` (`cate_id`),
  KEY `create_time` (`create_time`),
  KEY `update_time` (`update_time`),
  KEY `click_count` (`click_count`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=90 ;

--
-- 转存表中的数据 `%DB_PREFIX%article`
--

INSERT INTO `%DB_PREFIX%article` (`id`, `title`, `icon`, `content`, `cate_id`, `create_time`, `update_time`, `add_admin_id`, `is_effect`, `rel_url`, `update_admin_id`, `is_delete`, `click_count`, `sort`, `seo_title`, `seo_keyword`, `seo_description`, `uname`, `sub_title`, `brief`) VALUES
(1, '公司简介', '', '<p><span style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;display:inline !important;font:12px/19px arial, tahoma, helvetica, 宋体;white-space:normal;orphans:2;float:none;letter-spacing:normal;color:#444444;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;">p2p信贷(fanwe.com)为有资金需求和理财需求的个人搭建了一个公平、透明、稳定、高效的网络互动平台。用户可以在p2p信贷上获得信用评级、发布借款请求满足个人的资金需要；也可以把自己的闲余资金通过人人贷出借给信用良好有资金需求的个人，在获得良好的资金回报率的同时帮助了他人。</span></p>\r\n<div style="padding-bottom:10px;widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;padding-left:0px;padding-right:0px;font:12px/19px arial, tahoma, helvetica, 宋体;word-wrap:break-word;white-space:normal;orphans:2;letter-spacing:normal;color:#444444;overflow:hidden;word-break:break-all;word-spacing:0px;padding-top:10px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="h20"></div>\r\n<div style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;font:600 12px/19px arial, tahoma, helvetica, 宋体;word-wrap:break-word;white-space:normal;orphans:2;letter-spacing:normal;color:#8e8e8e;word-break:break-all;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="f_dgray b f_12">p2p信贷缘起</div>\r\n<div style="padding-bottom:10px;widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;padding-left:0px;padding-right:0px;font:12px/19px arial, tahoma, helvetica, 宋体;word-wrap:break-word;white-space:normal;orphans:2;letter-spacing:normal;color:#444444;overflow:hidden;word-break:break-all;word-spacing:0px;padding-top:10px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="h20"></div>\r\n<p><span style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;display:inline !important;font:12px/19px arial, tahoma, helvetica, 宋体;white-space:normal;orphans:2;float:none;letter-spacing:normal;color:#444444;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;">随着互联网用户的普及、技术的进步与货币数字化的迅速发展，2005年在英国首次出现个人对个人（P2P）的网络信贷服务平台。这种模式由于使借贷双方互惠双赢，加上其高效便捷的操作方式、个性化的利率定价机制，推出后得到广泛的认可和关注，迅速在其他国家复制。我们团队看到了这种模式将对中国民间信贷及小额贷款行业带来深远积极的影响。我们决定结合中国的社会信用状况，利用可靠的信用审核模型和先进的技术，创建了适合中国的P2P小额信贷网络平台——p2p信贷(fanwe.com)。</span></p>\r\n<div style="padding-bottom:10px;widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;padding-left:0px;padding-right:0px;font:12px/19px arial, tahoma, helvetica, 宋体;word-wrap:break-word;white-space:normal;orphans:2;letter-spacing:normal;color:#444444;overflow:hidden;word-break:break-all;word-spacing:0px;padding-top:10px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="h20"></div>\r\n<div style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;font:600 12px/19px arial, tahoma, helvetica, 宋体;word-wrap:break-word;white-space:normal;orphans:2;letter-spacing:normal;color:#8e8e8e;word-break:break-all;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="f_dgray b f_12">社会意义</div>\r\n<div style="padding-bottom:10px;widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;padding-left:0px;padding-right:0px;font:12px/19px arial, tahoma, helvetica, 宋体;word-wrap:break-word;white-space:normal;orphans:2;letter-spacing:normal;color:#444444;overflow:hidden;word-break:break-all;word-spacing:0px;padding-top:10px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="h20"></div>\r\n<p><span style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;display:inline !important;font:12px/19px arial, tahoma, helvetica, 宋体;white-space:normal;orphans:2;float:none;letter-spacing:normal;color:#444444;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;">P2P小额贷款是一种将非常小额度的贷款聚集起来借贷给有资金需求人群的一种商业模型。它的社会价值主要体现在满足个人资金需求、发展个人信用体系和提高社会闲散资金利用率三个方面：</span><br style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;font:12px/19px arial, tahoma, helvetica, 宋体;white-space:normal;orphans:2;letter-spacing:normal;color:#444444;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" />\r\n<span style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;display:inline !important;font:12px/19px arial, tahoma, helvetica, 宋体;white-space:normal;orphans:2;float:none;letter-spacing:normal;color:#444444;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;">1）在中国，银行对个人信用贷款的条件要求很高，个人从银行系统融资面临很多困难,P2P小额贷款为需要资金的人提供了新的融资渠道。</span><br style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;font:12px/19px arial, tahoma, helvetica, 宋体;white-space:normal;orphans:2;letter-spacing:normal;color:#444444;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" />\r\n<span style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;display:inline !important;font:12px/19px arial, tahoma, helvetica, 宋体;white-space:normal;orphans:2;float:none;letter-spacing:normal;color:#444444;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;">2）P2P小额贷款主要是以个人信用评价为基础的贷款，它的发展有助于个人体现自身的信用价值，提高社会个人信用体系的建设。</span><br style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;font:12px/19px arial, tahoma, helvetica, 宋体;white-space:normal;orphans:2;letter-spacing:normal;color:#444444;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" />\r\n<span style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;display:inline !important;font:12px/19px arial, tahoma, helvetica, 宋体;white-space:normal;orphans:2;float:none;letter-spacing:normal;color:#444444;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;">3）P2P小额贷款扩宽了个人投资的渠道，加大了资金的流动，提高了社会闲散资金的使用率，促进了经济的发展。</span><br style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;font:12px/19px arial, tahoma, helvetica, 宋体;white-space:normal;orphans:2;letter-spacing:normal;color:#444444;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" />\r\n<span style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;display:inline !important;font:12px/19px arial, tahoma, helvetica, 宋体;white-space:normal;orphans:2;float:none;letter-spacing:normal;color:#444444;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;">P2P网络借贷平台的出现，不仅仅是一个创新的商业模式, 它更为缩小社会贫富差距、创造就业、实现经济长期发展、社会和谐作出了重大贡献。</span></p>\r\n<div style="padding-bottom:10px;widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;padding-left:0px;padding-right:0px;font:12px/19px arial, tahoma, helvetica, 宋体;word-wrap:break-word;white-space:normal;orphans:2;letter-spacing:normal;color:#444444;overflow:hidden;word-break:break-all;word-spacing:0px;padding-top:10px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="h20"></div>\r\n<div style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;font:600 12px/19px arial, tahoma, helvetica, 宋体;word-wrap:break-word;white-space:normal;orphans:2;letter-spacing:normal;color:#8e8e8e;word-break:break-all;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="f_dgray b f_12">p2p信贷的愿景</div>\r\n<div style="padding-bottom:10px;widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;padding-left:0px;padding-right:0px;font:12px/19px arial, tahoma, helvetica, 宋体;word-wrap:break-word;white-space:normal;orphans:2;letter-spacing:normal;color:#444444;overflow:hidden;word-break:break-all;word-spacing:0px;padding-top:10px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="h20"></div>\r\n<p><span style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;display:inline !important;font:12px/19px arial, tahoma, helvetica, 宋体;white-space:normal;orphans:2;float:none;letter-spacing:normal;color:#444444;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;">我们坚信，随着时代的进步，中国社会的信用体系必将逐步完善，而技术的革新，也必将使民间借贷的模式发生革命性的变化。我们期待在这次进步的浪潮中，走在时代的前端，打造出中国最诚信可靠的P2P网络借贷平台，成为一家卓越的、实现巨大社会价值的企业。</span></p>', 2, 0, 1362180117, 0, 1, '', 0, 0, 3432, 30, '', '', '', '', '', ''),
(2, '注册与登录', '', '<p class="ral-title" style="margin-top:20px;margin-bottom:30px;padding:0px;font-size:16px;font-weight:bold;">1.注册</p>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="如何成为爱投资的注册用户？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">如何成为爱投资的注册用户？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<p class="ral-title" style="margin-top:20px;margin-bottom:30px;padding:0px;font-size:16px;font-weight:bold;">2.登录</p>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="登录爱投资账户有几种方式？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">登录爱投资账户有几种方式？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="忘记登录用户名、登录密码怎么办？如何找回？" style="color:#666666;outline:none;font-family:''microsoft yahei'', tahoma, helvetica, arial, 宋体, sans-serif;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;font-family:''microsoft yahei'', tahoma, helvetica, arial, 宋体, sans-serif;background-repeat:no-repeat no-repeat;">忘记登录用户名、登录密码怎么办？如何找回？</p>\r\n<br class="Apple-interchange-newline" />\r\n</div>', 20, 1305160898, 1406768807, 0, 1, '', 0, 0, 1135, 18, '', '', '', '', '', ''),
(3, '隐私保护', '', '<div class="lh26"><b><span style="font-size:14px;">隐私保护我们有哪些措施保障您的隐私安全</span></b><div><ul><li>　· p2p贷款严格遵守国家相关法律法规，对用户的隐私信息进行严格的保护。</li>\r\n<li>　· 我们采用业界最先进的加密技术，用户的注册信息、账户收支信息都已进行高强度的加密处理，不会被不法分子窃取到。</li>\r\n<li>　· p2p贷款设有严格的安全系统，未经允许的员工不可获取您的相关信息。</li>\r\n<li>　· p2p贷款绝不会将您的账户信息、银行信息以任何形式透露给第三方。</li>\r\n</ul>\r\n</div>\r\n<div><b><span style="font-size:14px;">个人信息安全：</span></b></div>\r\n<div>p2p贷款是一个实名认证平台，p2p贷款会保证用户信息隐私的安全，用户在平台上交流的过程中，也要时刻注意保护个人隐私，截图注意覆盖个人信息，不要透露真实姓名与住址等，以防个人信息被盗取造成损失。</div>\r\n</div>', 3, 1305160911, 1359227228, 0, 1, '', 0, 0, 692, 19, '', '', '', '', '', ''),
(4, '咨询热点', '', '咨询热点', 4, 1305160923, 1305160923, 0, 1, '', 0, 0, 157, 20, '', '', '', '', '', ''),
(5, '加入我们', '', '<div style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#8e8e8e;word-break:break-all;font-weight:600;" class="f_dgray b f_12">福建p2p信贷金融信息服务有限公司<div style="padding-bottom:10px;padding-left:0px;padding-right:0px;word-wrap:break-word;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n客户服务</div>\r\n<div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">如果您在使用p2p信贷（fanwe.com）的过程中有任何疑问请您与人人贷客服人员联系。</span><br style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;" />\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">在线帮助：</span><font color="#0000ee" face="Arial, Tahoma, Helvetica, 宋体"><span style="line-height:19px;"><u><a href="./index.php?ctl=helpcenter" target="_blank">http://www.fanwe.com/index.php?ctl=helpcenter</a></u></span></font><br style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;" />\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">客服电话：0591-88138230</span><div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<div style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#8e8e8e;word-break:break-all;font-weight:600;" class="f_dgray b f_12">媒体采访</div>\r\n<div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">p2p信贷作为一个年轻、阳光的创新型公司，乐于展示我们的理念和价值观。如果您有媒体采访需求请将媒体名称、采访提纲、联系方式发送到info@fanwe.com，我们的工作人员会尽快与您联系。</span><div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<div style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#8e8e8e;word-break:break-all;font-weight:600;" class="f_dgray b f_12">商务合作<br />\r\n</div>\r\n<div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">如果贵公司与p2p信贷优势互补，并有合作意向，请简要描述合作意向并发送到<a href="mailto:info@fanwe.com">info@fanwe.com</a>，工作人员会尽快与您联系。</span><div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<div style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#8e8e8e;word-break:break-all;font-weight:600;" class="f_dgray b f_12">最新进展</div>\r\n<div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">微博：</span><font color="#425f9d" face="Arial, Tahoma, Helvetica, 宋体"><span style="line-height:19px;cursor:pointer;"><a href="http://t.sina.com.cn/fanwe" target="_self">http://t.sina.com.cn/fanwe</a></span></font><br style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;" />\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">博客：</span><font color="#425f9d" face="Arial, Tahoma, Helvetica, 宋体"><span style="line-height:19px;cursor:pointer;"><a href="http://blog.sina.com.cn/fanwe" target="_self">http://blog.sina.com.cn/fanwe</a></span></font><div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<div style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#8e8e8e;word-break:break-all;font-weight:600;" class="f_dgray b f_12">公司地址</div>\r\n<div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">福建福州鼓楼区杨桥路19号尚林苑北802 &nbsp; &nbsp;邮编：350001</span><br style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;" />\r\n<br class="Apple-interchange-newline" />', 2, 1305160934, 1406768489, 0, 1, '', 0, 0, 1683, 21, '', '', '', '', '', ''),
(6, '公司简介', '', '公司简介', 6, 1305160946, 1305160946, 0, 1, '', 0, 0, 92, 22, '', '', '', '', '', ''),
(7, '2014-5-9     p2p信贷即将上线', '', '<div><span style="font-size:14px;line-height:21px;">尊敬的p2p信贷用户：</span></div>\r\n<div><span style="font-size:14px;line-height:21px;"><br />\r\n</span></div>\r\n<div><span style="font-size:14px;line-height:21px;">&nbsp; &nbsp; &nbsp; &nbsp; 您好！</span></div>\r\n<div><span style="font-size:14px;line-height:21px;"><br />\r\n</span></div>\r\n<div style="text-align:left;"><span style="font-size:14px;line-height:21px;">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="font-size:14px;line-height:21px;">p2p信贷正在测试中，</span><span style="font-size:14px;line-height:21px;">预计2013年3月正式上线。具体上线日期确定后我们会及时予以公布。</span></div>\r\n<div><span style="font-size:14px;line-height:21px;"><br />\r\n</span></div>\r\n<div><span style="font-size:14px;line-height:21px;">&nbsp; &nbsp; &nbsp; &nbsp; 非常感谢各位用户的支持和信任！我们会不断完善、为您提供更加优质的服务！</span></div>\r\n<div><span style="font-size:14px;line-height:21px;"><br />\r\n</span></div>\r\n<div style="text-align:right;"><span style="font-size:14px;line-height:21px;">p2p信贷团队</span></div>\r\n<div style="text-align:right;"><span style="font-size:14px;line-height:21px;"><br />\r\n</span></div>\r\n<div style="text-align:right;"><span style="font-size:14px;line-height:21px;">2013年2月4日</span></div>', 5, 1356389066, 1399569847, 0, 1, '', 0, 0, 799, 23, '', '', '', '', '', ''),
(66, '联系我们', '', '客户服务<div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">如果您在使用p2p信贷（fanwe.com）的过程中有任何疑问请您与人人贷客服人员联系。</span><br style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;" />\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">在线帮助：</span><font color="#910100" face="Arial, Tahoma, Helvetica, 宋体"><span style="line-height:19px;"><u><a href="./index.php?ctl=helpcenter" target="_blank">http://www.fanwe.com/index.php?ctl=helpcenter</a></u></span></font><br style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;" />\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">客服电话：0591-88138230</span> <div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<div style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#8e8e8e;word-break:break-all;font-weight:600;" class="f_dgray b f_12">媒体采访</div>\r\n<div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">p2p信贷作为一个年轻、阳光的创新型公司，乐于展示我们的理念和价值观。如果您有媒体采访需求请将媒体名称、采访提纲、联系方式发送到info@fanwe.com，我们的工作人员会尽快与您联系。</span> <div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<div style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#8e8e8e;word-break:break-all;font-weight:600;" class="f_dgray b f_12">商务合作<br />\r\n</div>\r\n<div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">如果贵公司与p2p信贷优势互补，并有合作意向，请简要描述合作意向并发送到<a href="mailto:info@fanwe.com">info@fanwe.com</a>，工作人员会尽快与您联系。</span> <div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<div style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#8e8e8e;word-break:break-all;font-weight:600;" class="f_dgray b f_12">最新进展</div>\r\n<div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">微博：</span><font color="#910100" face="Arial, Tahoma, Helvetica, 宋体"><span style="line-height:19px;cursor:pointer;"><a href="http://t.sina.com.cn/fanwe" target="_self">http://t.sina.com.cn/fanwe</a></span></font><br style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;" />\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">博客：</span><font color="#910100" face="Arial, Tahoma, Helvetica, 宋体"><span style="line-height:19px;cursor:pointer;"><a href="http://blog.sina.com.cn/fanwe" target="_self">http://blog.sina.com.cn/fanwe</a></span></font> <div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<div style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#8e8e8e;word-break:break-all;font-weight:600;" class="f_dgray b f_12">公司地址</div>\r\n<div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">福建福州鼓楼区杨桥路19号尚林苑北802 &nbsp; &nbsp;邮编：350001</span><br style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;" />', 2, 1362170024, 1362170069, 0, 1, '', 0, 0, 1575, 55, '', '', '', '', '', ''),
(8, '常见问题', '', '常见问题', 1, 1358897125, 1358897125, 0, 1, '', 0, 0, 82, 27, '', '', '', '', '', ''),
(9, '平台原理', '', '<div class="blank20"></div>\r\n<div class="tc"><img src="./public/attachment/201301/14/17/aboutP2P.jpg" alt="" border="0" /><br />\r\n</div>\r\n<div class="blank20"></div>\r\n<div class="b f14" style="color:#2e5f9b;">		p2p信贷统平台机制	</div>\r\n<div class="blank10"></div>\r\n<div style="color:#585858;">p2p信贷(fanwe.com)为有资金需求和理财需求的个人搭建了一个公平、透明、稳定、高效的网络互动平台。用户可以在p2p信贷上获得信用评级、发布借款请求满足个人的资金需要；也可以把自己的闲余资金通过p2p信贷出借给信用良好有资金需求的个人，在获得良好的资金回报率的同时帮助了他人。</div>\r\n<div class="blank20"></div>\r\n<div class="b f14" style="color:#2e5f9b;">p2p信贷借贷流程	</div>\r\n<div class="blank10"></div>\r\n<div class="tc"><img src="./public/attachment/201301/14/17/liucheng.jpg" /></div>\r\n<div class="blank20"></div>', 1, 1358897191, 1360008411, 0, 1, 'u:index|aboutp2p', 0, 0, 2, 26, '', '', '', 'aboutp2p', '', ''),
(10, '如何借款', '', '<div class="border">        	<div class="tit"><h3>贷款方式</h3>\r\n<a href="./index.php?ctl=borrow">申请贷款</a></div>\r\n            <table cellspacing="0" border="0">            	<tbody><tr class="even"><td style="border-right:1px solid #dce7fa;">借款额度</td>\r\n<td> 3,000 至 1,000,000人民币</td>\r\n</tr>\r\n                <tr class="odd"><td style="border-right:1px solid #dce7fa;">借款利率</td>\r\n<td> 6% — 24%（取决于借贷双方以及借款人信用等级）</td>\r\n</tr>\r\n                <tr class="even"><td style="border-right:1px solid #dce7fa;">借款期限</td>\r\n<td> 3 / 6 / 9 / 12 / 18 / 24个月</td>\r\n</tr>\r\n                <tr class="odd"><td style="border-right:1px solid #dce7fa;">还款方式</td>\r\n<td> 每月还款（等额本息还款法）</td>\r\n</tr>\r\n                <tr class="even"><td style="border-right:1px solid #dce7fa;">服务费用</td>\r\n<td> 根据您的当前等级而定，等级越高，费用越低</td>\r\n</tr>\r\n                <tr class="odd"><td style="border-right:1px solid #dce7fa;">管理费用</td>\r\n<td> 将根据借款期限，每月向借入者收取借款本金的0.3%作为借款管理费</td>\r\n</tr>\r\n            </tbody>\r\n</table>\r\n        </div>\r\n				<div class="border">        	<div class="tit"><h3>贷款资格</h3>\r\n</div>\r\n           	<div class="titcen">     	                 <p style="background:#ecf7ff;"><span style="color:#ff8500;">年龄：</span>22—65周岁</p>\r\n                       <p><span style="color:#ff8500;">工作与收入：</span>请先确认您的身份</p>\r\n	                 <ul>                     <li style="background:#ecf7ff;list-style:square;padding-left:20px;line-height:34px;list-style-position:inside;"><span style="color:#ff8500;">私营业主(包含网店商家)：</span>有一年以上的营业执照;近半年可体现月均流水(对公或对私)不低于2万元。</li>\r\n                     <li style="background:#ecf7ff;list-style:square;padding-left:20px;line-height:34px;list-style-position:inside;"><span style="color:#ff8500;">企业员工：</span>在央企,国企及注册资本高于100万元人民币的一般民营企业,有半年以上的工作合同或相关证明,<br />\r\n可体现月收入不低于2000元,。</li>\r\n					 <li style="background:#ecf7ff;list-style:square;padding-left:20px;line-height:34px;list-style-position:inside;"><span style="color:#ff8500;">政府机关及事业单位工作人员：</span>正式工作人员,可体现月收入不低于1200元。</li>\r\n                 </ul>\r\n           	</div>\r\n        </div>\r\n<div class="border">			<div class="tit">            	  <h3>快速问答</h3>\r\n                  <a href="./index.php?ctl=help">了解更多</a>            </div>\r\n			<div class="titcen">				<h4>Q：如何判断我是否有申请资格？</h4>\r\n				<p>A：只要有您有相对稳定的收入，并能出示相关的证明文件就拥有申请贷款的资格。</p>\r\n			 				<h4>Q：什么是信用等级？较高的信用等级有什么优势？</h4>\r\n				<p>A：信用等级是p2p信贷用来评估借款人信用所使用的一套体系,目前p2p信贷信用等级共分7级，从最高的AA				级到最低的HR级。您的信用等级越高，能得到的借款额度越高，提高信用等级，可以增加借出者对您的信任度、并能以更低的成本成功借款、</p>\r\n							<h4>Q：我上传的隐私会不会被泄露？</h4>\r\n				<p>A：不会，保护用户的隐私和数据安全是p2p信贷&nbsp;最重要的责任之一。在传输层中,采用加密数据进行传输以				防止网络分包被截获造成数据泄露。同时p2p信贷还启用了侵扰监测系统来监测那些内部和外部易受侵扰的路径，并运用其他一些人工措施来加强保护用户数据的安全。 </p>\r\n								<h4>Q：能否提前还贷？</h4>\r\n				<p>A：您可以随时还清整笔贷款，您仅需向借出者支付一期本息以及剩余本金的1%的违约金。</p>\r\n			</div>\r\n        </div>', 1, 1358897226, 1360017868, 0, 1, 'u:index|borrow#aboutborrow', 0, 0, 0, 25, '', '', '', 'aboutborrow', '', ''),
(11, '如何理财', '', '<div style="margin-top:10px;padding-left:50px;">		            <div id="step">		                <img style="vertical-align:middle;" alt="" src="./public/images/aboutfinacing/reg_fwd.png" />&nbsp;只需30秒,您即可注册成为p2p信贷用户<br />\r\n		                <img style="margin:2px 0px 0px 46px;" alt="" class="logo_hack" src="./public/images/aboutfinacing/blue_sign.png" />		            </div>\r\n		            <div id="step">		                <img style="vertical-align:middle;" alt="" src="./public/images/aboutfinacing/lender.png" />&nbsp;为了保证您的资金安全，您需先用手机验证、身份证验证2项实名验证，方可开始投资<br />\r\n		                <img style="margin-left:46px;" alt="" class="logo_hack" src="./public/images/aboutfinacing/blue_sign.png" />		            </div>\r\n		            <div id="step">		                <img style="vertical-align:middle;" alt="" src="./public/images/aboutfinacing/choose.png" />&nbsp;您可以根据自己的风险偏好，以及回报率要求，来选择最适合您的借款机会<br />\r\n		                <img style="margin-left:46px;" alt="" class="logo_hack" src="./public/images/aboutfinacing/blue_sign.png" />		            </div>\r\n		            <div id="step">		                <img style="vertical-align:middle;" alt="" src="./public/images/aboutfinacing/lender_money.png" />&nbsp;在您充值之后，您便可以点对点的将您的资金进行出借给您意向的借款人<br />\r\n		                <img style="margin-left:46px;" alt="" class="logo_hack" src="./public/images/aboutfinacing/blue_sign.png" />		            </div>\r\n		            <div id="step">		                <img style="vertical-align:middle;" alt="" src="./public/images/aboutfinacing/interest.png" />&nbsp;经p2p信贷审核的借款成功后，借入者将每月按时向您及其他借出者归还本息<br />\r\n		            </div>\r\n		        </div>\r\n		        <div style="margin-top:20px;padding:10px 50px 10px 50px;">		            <div class="about_title2">p2p信贷投资原理</div>\r\n		            <div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n		            <div style="font-size:13px;line-height:20px;">		                <p>		                    p2p信贷(fanwe.com)为有资金需求和理财需求的个人搭建了一个公平、透明、稳定、高效的网络互动平台。		                    用户可以在p2p信贷上获得信用评级、发布借款请求满足个人的资金需要；也可以把自己的闲余资金通过p2p信贷出借给信用良好有资金需求的个人，		                    在获得良好的资金回报率的同时帮助了他人。		                </p>\r\n		            </div>\r\n		        </div>\r\n		        <div>		            <img alt="p2p借贷系统平台原理" class="logo_hack" src="./public/images/aboutfinacing/principle.jpg" />		        </div>', 7, 1358897303, 1359962884, 0, 1, 'u:index|deals&act=about&u=financing', 0, 0, 1, 24, '', '', '', 'financing', '', ''),
(33, '本金保障计划', '', '<h3 style="border-bottom:medium none;border-left:medium none;border-top:medium none;border-right:medium none;">什么是本金保障计划？</h3>\r\n<p>本金保障指当理财人（借出者）投资的借款出现严重逾期时（即逾期超过30天），p2p信贷系统将向理财人垫付此笔借款未归还的剩余出借本金或本息（具体情况视投资标的类型的具体垫付规则为准），从而为理财人营造一个安全的投资环境，保证投资人的本金安全。</p>\r\n<h3 style="border-bottom:medium none;border-left:medium none;border-top:medium none;border-right:medium none;">理财人（出借者）需要向p2p信贷系统支付本金保障计划服务的费用吗？</h3>\r\n<p>当前理财人无需支付任何费用，通过身份认证成为借出者即可享受此服务。</p>\r\n<h3 style="border-bottom:medium none;border-left:medium none;border-top:medium none;border-right:medium none;">如果我投资的借款发生逾期了，p2p信贷系统如何赔付？</h3>\r\n<p>当您投资的借款发生逾期30天后，p2p信贷风险备用金账户会在一个工作日内将此笔借款的应赔付金额自动充入您的p2p信贷账户中（具体情况视投资标的类型的具体垫付规则为准）。</p>\r\n<h3 style="border-bottom:medium none;border-left:medium none;border-top:medium none;border-right:medium none;">我在p2p信贷上的所有理财投资是否都适用p2p信贷本金保障计划？</h3>\r\n<p>是的，每项投资的具体垫付规则视投资标的具体类型而定。</p>\r\n<div class="bztitle">风险备用金账户规则</div>\r\n<p>“风险备用金账户”是指为p2p信贷系统所服务的所有理财人的共同利益考虑、以p2p信贷名义单独开设并由其管理的一个专款专用账户。</p>\r\n<h3 style="border-bottom:medium none;border-left:medium none;border-top:medium none;border-right:medium none;">“风险备用金账户”资金来源：</h3>\r\n<p>“风险备用金账户”资金当前全部来源于p2p信贷系统根据其与借款人签署的协议向其所服务的借款人所收取的服务费（以下简称“服务费”），p2p信贷系统在依协议向借款人收取服务费的同时，将在收取的服务费中按照贷款产品类型及借款人的信用等级等信息计提风险备用金（详见《p2p信贷系统风险备用金账户—产品垫付规则明细表》）。计提的风险备用金将存放入“风险备用金账户”进行专户管理。各产品类型及信用等级等所对应的风险备用金的计提标准和方式由p2p信贷制定并解释，p2p信贷有权根据实际业务需要对相关内容进行调整，如作修改，p2p信贷将及时进行披露。 </p>\r\n<h3 style="border-bottom:medium none;border-left:medium none;border-top:medium none;border-right:medium none;">“风险备用金账户”资金用途：</h3>\r\n<p>“风险备用金账户”资金将专门用于在一定限额内弥补p2p信贷所服务的理财人（债权人）由于借款人（债务人）的违约所遭受的本金或本息的损失（具体赔付金额以所投资的产品类型的垫付规则为准），即当借款人（债务人）逾期还款超过30日时，p2p信贷将按照“风险备用金账户”资金使用规则从该账户中提取相应资金用于偿付理财人（债权人）应收取的本金或本息金额（不同产品的垫付范围请参考《p2p信贷系统风险备用金账户—产品垫付规则明细表》）（以下统一简称“逾期应收赔付金额”）。</p>\r\n<h3 style="border-bottom:medium none;border-left:medium none;border-top:medium none;border-right:medium none;">“风险备用金账户”资金使用规则：</h3>\r\n<p>“风险备用金账户”资金使用遵循以下规则：<br />\r\n1、违约偿付规则，即当借款人（债务人）逾期还款超过30 日时，方才从“风险备用金账户”资金中抽取相应资金偿付理财人（债权人）逾期应收赔付金额。<br />\r\n2、时间顺序规则，即“风险备用金账户”资金对理财人（债权人）逾期应收赔付金额的偿付按照该债权发生的时间顺序进行偿付分配，先偿付时间发生在前的债权，后偿付时间发生在后的债权。<br />\r\n3、债权比例规则， “风险备用金账户”资金对同一借款协议下的不同理财人（债权人）逾期应收赔付金额的偿付按照各债权金额占同协议内发生的债权总额的比例进行偿付分配；或，当“风险备用金账户”资金当期余额不足以支付当期（每月为一期）所有应享受该账户的理财人所对应的逾期赔付金额时，则当期应享受该账户的理财人按照各自对应的逾期应收赔付金额占当期所有理财人对应的逾期应收赔付总额的比例进行偿付分配。<br />\r\n4、有限偿付规则，即“风险备用金账户”资金对理财人（债权人）逾期应收赔付的偿付以该账户的资金总额为限，当该账户余额为零时，自动停止对理财人逾期应收赔付金额的偿付，直到该账户获得新的风险备用金。<br />\r\n5、收益转移规则，即当理财人享有了“风险备用金帐户”对某笔逾期债权赔付金额的足额偿付后，该债权对应的借款人其后为该笔债权所偿还的本金、利息及罚息归属“风险备用金账户”；如债权有抵押、质押及其他担保的，则平台代借款人处置抵押质押物的所得等也归属“风险备用金账户”。<br />\r\n6、金额上限规则，即当“风险备用金帐户”内金额超过当时平台上所有债权本金金额的10%时，p2p借贷系统有权将超出部分转出该账户，转出部分归p2p借贷系统所有。<br />\r\n</p>\r\n<h3 style="border-bottom:medium none;border-left:medium none;border-top:medium none;border-right:medium none;">“风险备用金账户”资金管理原则：</h3>\r\n<p>p2p信贷将审慎管理“风险备用金账户”资金，并就账户及资金使用情况对理财人进行定期（按季度/月）披露。具体披露方式及解释权归p2p信贷所有。</p>\r\n<h3 style="border-bottom:medium none;border-left:medium none;border-top:medium none;border-right:medium none;">附表：《p2p信贷风险备用金账户—产品垫付规则明细表》</h3>\r\n<p style="position:relative;text-align:center;"><img border="0" alt="" src="./public/images/aq/benjinhelp.jpg" /></p>\r\n<p class="b">注：信用认证标中与部分渠道合作的产品风险金计提标准不适用上表规则，将根据合作渠道的具体情形单独设定。</p>', 8, 1359307452, 1362187090, 0, 1, '', 0, 0, 530, 48, '', '', '', '', '', ''),
(12, 'p2p信贷费率', '', '<div class="blank20"></div>\r\n<div class="b f12">一、理财费用</div>\r\n<p class="f_red">p2p信贷系统不收取理财人任何费用，充值提现费用为第三方支付公司收取</p>\r\n<div class="blank20"></div>\r\n<div class="b f12">二、贷款费用</div>\r\n1、服务费<br />\r\np2p信贷系统收取的服务费将全部存于风险准备金账户用于p2p信贷系统的本金保障计划。服务费将按照借款人的信用等级来收取： <div class="blank20"></div>\r\n<table style="text-align:center;background-color:#ccc;width:100%;" border="0" cellspacing="1" align="center"><tbody><tr style="background:#eff5fe;height:30px;"><td class="tc">信用等级 </td>\r\n<td class="tc" width="10%">AA </td>\r\n<td width="10%" tc?="">A </td>\r\n<td class="tc" width="10%">B </td>\r\n<td class="tc" width="10%">C </td>\r\n<td class="tc" width="10%">D </td>\r\n<td class="tc" width="10%">E </td>\r\n<td class="tc" width="10%">HR </td>\r\n</tr>\r\n<tr style="background:#fff;height:30px;"><td class="tc">费率</td>\r\n<td class="tc">0%</td>\r\n<td class="tc">1%</td>\r\n<td class="tc">1.5%</td>\r\n<td class="tc">2%</td>\r\n<td class="tc">2.5%</td>\r\n<td class="tc">3%</td>\r\n<td class="tc">5%</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n2、账户管理费<br />\r\np2p信贷系统将按照借款人的借款期限，每月向借款人收取其借款本金的0.3%作为借款管理费。<div class="blank20"></div>\r\n<div class="b f12">三、充值提现费用</div>\r\n1、充值费用（由第三方平台收取）<br />\r\n第三方支付平台将在您充入资金时扣除0.5%作为转账费用。充值费用上限为100元。超过100元的部分由p2p信贷承担。<br />\r\n<p style="color:#8e8e8e;">注：充值时可以使用一张充值免费券，抵去该笔充值费用。（每位新注册理财用户（完成绑定身份证和手机号）将自动获得一张充值免费券，并可通过参与活动的方式获得更多充值免费券。）</p>\r\n<div class="blank20"></div>\r\n2、提现费用（由第三方平台收取）<br />\r\n当借款人要求将借款资金转至指定银行账户时，会发生转账费用，第三方支付平台将按以下标准收取相关费用。<table style="text-align:center;background-color:#ccc;width:100%;" border="0" cellspacing="1" align="center"><tbody><tr style="background:#eff5fe;height:30px;"><td width="25%"><div align="center">金额 </div>\r\n</td>\r\n<td width="25%"><div align="center">2万元以下 </div>\r\n</td>\r\n<td width="25%"><div align="center">2万元（含）－5万元 </div>\r\n</td>\r\n<td width="25%"><div align="center">5万元（含）－100万元 </div>\r\n</td>\r\n</tr>\r\n<tr style="background:#fff;height:30px;"><td><div align="center">收费 </div>\r\n</td>\r\n<td><div align="center">1元/笔 </div>\r\n</td>\r\n<td><div align="center">3元/笔 </div>\r\n</td>\r\n<td><div align="center">5元/笔 </div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div class="blank20"></div>', 1, 1359057258, 1362424817, 0, 1, 'u:index|aboutfee', 0, 0, 0, 23, '', '', '', 'aboutfee', '', ''),
(67, '2014-5-9   3月份运营数据：成交金额1530万', '', '<p></p>\r\n<div><b><span style="color:#f10b00;">&nbsp;3月份运营数据：成交金额1530万，投资人收益980万</span></b><br />\r\n</div>\r\n<p></p>', 5, 1362448657, 1399569890, 0, 1, '', 0, 0, 984, 55, 'p2p信贷', '网络贷款', '网贷', '', '3月份运营数据', '尊敬的p2p信贷用户：\r\n     经过团队为期两个月的筹备、测试，p2p信贷终于和各位朋友见面了！\r\n \r\n     您在p2p信贷上能够接触到全新的借款和理财模式，体验到技术进步带来的便捷与实惠。也欢迎各位邀请自己的亲戚、朋友、同事来使用p2p信贷，让更多的人能够感受到网络互助平台带来的前所未有的借贷体验。\r\n \r\n     为庆祝网站上线，网站目前免收成交费用。请大家把握机会，多多尝试借款~~\r\n \r\n \r\n \r\np2p信贷团队\r\n2013年3月4日');
INSERT INTO `%DB_PREFIX%article` (`id`, `title`, `icon`, `content`, `cate_id`, `create_time`, `update_time`, `add_admin_id`, `is_effect`, `rel_url`, `update_admin_id`, `is_delete`, `click_count`, `sort`, `seo_title`, `seo_keyword`, `seo_description`, `uname`, `sub_title`, `brief`) VALUES
(71, '123', '', '<div class="article_info" sizcache="43" sizset="7"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-weight:bold;font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">借款协议</span><span style="font-weight:bold;font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><!--?xml:namespace prefix = o ns = "urn:schemas-microsoft-com:office:office" /--><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">甲方（出借人）：</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p><table style="padding-right:0.75pt;padding-left:0.75pt;padding-bottom:0pt;margin-left:-0.5pt;width:239.5pt;padding-top:0pt;border-collapse:collapse;mso-table-layout-alt:fixed;" align="center"><tbody><tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:#000000 0.5pt solid;padding-left:0.75pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:73pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="97"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">无忧E贷用户名</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:#000000 0.5pt solid;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:52.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="70"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">借出金额</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:#000000 0.5pt solid;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:46pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="61"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">借款期限</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:#000000 0.5pt solid;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:67.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="90"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">每月应收本息</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n<tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:73pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="97"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">小王</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:7.5pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:52.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="70"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:right;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥2,000</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:46pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="61"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">12个月</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:7.5pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:67.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="90"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:right;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥177.69</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n<tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:73pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="97"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">小明</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:7.5pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:52.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="70"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:right;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥2,000</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:46pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="61"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">12个月</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:7.5pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:67.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="90"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:right;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥177.69</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n<tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:73pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="97"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">小李</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:7.5pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:52.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="70"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:right;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥2,000</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:46pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="61"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">12个月</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:7.5pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:67.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="90"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:right;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥177.69</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n<tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:73pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="97"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">小赵</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:7.5pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:52.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="70"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:right;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥2,000</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:46pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="61"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">12个月</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:7.5pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:67.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="90"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:right;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥177.69</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n<tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:73pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="97"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">小红</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:7.5pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:52.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="70"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:right;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥2,000</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:46pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="61"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">12个月</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:7.5pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:67.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="90"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:right;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥177.69</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n<tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:73pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="97"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">总计</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:7.5pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:52.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="70"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:right;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥10,000</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:46pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="61"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">12个月</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:7.5pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:67.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="90"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:right;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥888.48</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">注：因计算中存在四舍五入，最后一期应收本息与之前略有不同</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">乙方（借款人）：</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">无忧E贷用户名：小洲</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">丙方（见证人）：</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">无忧</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">E贷【</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">龙岩市中领投资管理有限公司</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">】</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">联系方式：龙岩市新罗区</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-weight:bold;font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">鉴于：</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">1、丙方是一家在龙岩市新罗区合法成立并有效存续的有限责任公司，拥有115.28.137.109&nbsp;网站（以下简称“该网站”）的经营权，提供信用咨询，为交易提供信息服务；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">2、乙方已在该网站注册，并承诺其提供给丙方的信息是完全真实的；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">3、甲方承诺对本协议涉及的借款具有完全的支配能力，是其自有闲散资金，为其合法所得；并承诺其提供给丙方的信息是完全真实的；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">4、乙方有借款需求，甲方亦同意借款，双方有意成立借贷关系；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">各方经协商一致，于&nbsp;201</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">4</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;年&nbsp;</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">6</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;月&nbsp;20&nbsp;日签订如下协议，共同遵照履行：</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">第一条&nbsp;借款基本信息</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p><table style="padding-right:0.75pt;padding-left:0.75pt;padding-bottom:0pt;margin-left:-0.5pt;width:431.9pt;padding-top:0pt;border-collapse:collapse;mso-table-layout-alt:fixed;" align="center"><tbody><tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:#000000 0.5pt solid;padding-left:7.5pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:76pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="101"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">借款详细用途</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:#000000 0.5pt solid;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:355.9pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="474"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">短期周转</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n<tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:76pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="101"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">借款本金数额</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:355.9pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="474"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥10,000</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n<tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:76pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="101"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">月偿还本息数额</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:355.9pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="474"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥888.48&nbsp;(因计算中存在四舍五入，最后一期还款金额与之前略有不同，为￥888.45)</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n<tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:76pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="101"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">还款分期月数</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:355.9pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="474"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">12&nbsp;个月</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n<tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:76pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="101"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">还款日</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:355.9pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="474"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">每月&nbsp;9&nbsp;日（24:00前，节假日不顺延）</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n<tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:76pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="101"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">还款起止日期</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:355.9pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="474"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">201</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';">4</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;年&nbsp;</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';">6</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;月&nbsp;20&nbsp;日起，至&nbsp;201</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';">5</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;年&nbsp;</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';">6</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;月&nbsp;20&nbsp;日止</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">第二条&nbsp;各方权利和义务</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';text-decoration:underline;mso-spacerun:''yes'';">甲方的权利和义务</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">1、&nbsp;甲方应按合同约定的借款日将足额的借款本金支付给乙方。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">2、&nbsp;甲方享有其所出借款项所带来的利息收益。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">3、&nbsp;如乙方违约，甲方有权要求丙方提供其已获得的乙方信息。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">4、&nbsp;无须通知乙方，甲方可以根据自己的意愿进行本协议下其对乙方债权的转让。在甲方的债权转让后，乙方需对债权受让人继续履行本协议下其对甲方的还款义务，不得以未接到债权转让通知为由拒绝履行还款义务。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">5、&nbsp;甲方应主动缴纳由利息所得带来的可能的税费。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">6、&nbsp;如乙方还款不足约定本金、利息及违约金的，甲方同意各自按照其借出款项比例收取还款。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#333333;font-family:宋体;">7</span><span style="font-size:10pt;color:#333333;font-family:宋体;">、</span><span style="font-size:10pt;color:#333333;font-family:宋体;">募集期内（出借人资金被冻结的次日至丙方指令向借款人放款的前一日）出借人不享有任何利息。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';text-decoration:underline;mso-spacerun:''yes'';">乙方权利和义务</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">1、&nbsp;乙方必须按期足额向甲方偿还本金和利息。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">2、&nbsp;乙方必须按期足额向丙方支付借款管理费用。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">3、&nbsp;乙方承诺所借款项不用于任何违法用途。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">4、&nbsp;乙方应确保其提供的信息和资料的真实性，不得提供虚假信息或隐瞒重要事实。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">5、&nbsp;乙方有权了解其在丙方的信用评审进度及结果。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">6、&nbsp;乙方不得将本协议项下的任何权利义务转让给任何其他方。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';text-decoration:underline;mso-spacerun:''yes'';">丙方的权利和义务</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">1、甲乙双方同意丙方有权代甲方每期收取甲方出借款项所对应的乙方每期偿还的本息，代收后按照甲方的要求进行处置。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">2、甲方同意向乙方出借相应款项时，已委托丙方在本协议生效时将该笔借款直接划付至乙方账户。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#333333;font-family:宋体;">3、</span><span style="font-size:10pt;color:#333333;font-family:宋体;">若由于银行或第三方支付休假原因或系统问题延迟交易，导致款项交付延期7日以内，则丙方不承担任何责任。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">4</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">、甲乙双方同意丙方有权代甲方在有必要时对乙方进行贷款的违约提醒及催收工作，包括但不限于电话通知、发律师函、对乙方提起诉讼等。甲方在此确认明确委托丙方为其进行&nbsp;以上工作，并授权丙方可以将此工作委托给其他方进行。乙方对前述委托的提醒、催收事项已明确知晓并应积极配合。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">5</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">、丙方有权按月向乙方收取双方约定的借款管理费，并在有必要时对乙方进行违约提醒及催收工作，包括但不限于电话通知、发律师函、对乙方提起诉讼等。&nbsp;丙方有权将此违约提醒及催收工作委托给其他方进行。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">6</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">、丙方接受甲乙双方的委托行为所产生的法律后果由相应委托方承担。如因乙方或甲方或其他方（包括但不限于技术问题）造成的延误或错误，丙方不承担任何责任。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">7</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">、丙方应对甲方和乙方的信息及本协议内容保密；如任何一方违约，或因相关权力部门要求（包括但不限于法院、仲裁机构、金融监管机构等），丙方有权披露。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">第三条&nbsp;借款管理费及居间服务费</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">1、&nbsp;在本协议中，“借款管理费”和“居间服务费”是指因丙方为乙方提供信用咨询、评估、还款提醒、账户管理、还款特殊情况沟通等系列信用相关服务而由乙方支付给丙方的报酬。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">2、&nbsp;对于丙方向乙方提供的一系列信用服务，乙方同意在借款成功时向丙方支付本次借款本金的2%(人民币200)作为居间服务费，此笔费用乙方委托丙方在借款成功时从借款本金中扣除缴纳。在还款期间，乙方每月向丙方支付借款本金的0.3%，作为借款管理费用，共需支付12期，借款管理费的缴纳时间与乙方向甲方支付本息的还款日一致。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">3、&nbsp;如乙方和丙方协商一致调整借款管理费时，无需经过甲方同意。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">第四条&nbsp;违约责任</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">1、合同各方均应严格履行合同义务，非经各方协商一致或依照本协议约定，任何一方不得解除本协议。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">2、任何一方违约，违约方应承担因违约使得其他各方产生的费用和损失，包括但不限于调查、诉讼费、律师费等，应由违约方承担。如违约方为乙方的，甲方有权立即解除本协议，并要求乙方立即偿还未偿还的本金、利息、罚息、违约金。此时，乙方还应向丙方支付所有应付的借款管理费。如本协议提前解除时，乙方在网站的账户里有任何余款，丙方有权按照本协议第四条第3项的清偿顺序将乙方的余款用于清偿，并要求乙方支付因此产生的相关费用。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">3、乙方的每期还款均应按照如下顺序清偿：</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">（1）根据本协议产生的其他全部费用；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">（2）罚息；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">（3）逾期管理费；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">（4）拖欠的利息；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">（5）拖欠的本金；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">（6）拖欠丙方的借款管理费；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">（7）正常的利息；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">（8）正常的本金；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">（9）丙方的借款管理费；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">4、乙方应严格履行还款义务，如乙方逾期还款，则应按照下述条款向甲方支付逾期罚息，自逾期开始之后，逾期本金的正常利息停止计算。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">罚息总额&nbsp;=&nbsp;逾期本息总额×对应罚息利率×逾期天数；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p><table style="padding-right:0.75pt;padding-left:0.75pt;padding-bottom:0pt;margin-left:-0.5pt;width:165pt;padding-top:0pt;border-collapse:collapse;mso-table-layout-alt:fixed;" align="center"><tbody><tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:#000000 0.5pt solid;padding-left:7.5pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:53.5pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="71"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">逾期天数</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:#000000 0.5pt solid;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:47.5pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="63"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">1—30天</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:#000000 0.5pt solid;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:64pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="85"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">31天及以上</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n<tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:53.5pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="71"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">罚息利率</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:47.5pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="63"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">0.05%</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:64pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="85"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">0.1%</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">5、乙方应严格履行还款义务，如乙方逾期还款，则应按照下述条款向丙方支付逾期管理费：</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">逾期管理费总额&nbsp;=&nbsp;逾期本息总额×对应逾期管理费率×逾期天数；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p><table style="padding-right:0.75pt;padding-left:0.75pt;padding-bottom:0pt;margin-left:-0.5pt;width:196.5pt;padding-top:0pt;border-collapse:collapse;mso-table-layout-alt:fixed;" align="center"><tbody><tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:#000000 0.5pt solid;padding-left:7.5pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:85pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="113"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">逾期天数</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:#000000 0.5pt solid;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:47.5pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="63"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">1—30天</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:#000000 0.5pt solid;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:64pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="85"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">31天及以上</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n<tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:85pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="113"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">逾期管理费费率</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:47.5pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="63"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">0.1%</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:64pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="85"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">0.5%</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;" sizcache="43" sizset="7"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">6、如果乙方逾期支付任何一期还款超过30天，或乙方在逾期后出现逃避、拒绝沟通或拒绝承认欠款事实等恶意行为，本协议项下的全部借款本息及借款管理费提前到期，乙方应立即清偿本协议下尚未偿付的全部本金、利息、罚息、借款管理费及根据本协议产生的其他全部费用。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';" sizcache="43" sizset="7"><o :p=""></o><!-- div <--></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;" sizcache="43" sizset="7"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><br />\r\n</span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;" sizcache="43" sizset="7"><font color="#444444" face="宋体" size="2">1', 8, 1402360368, 1402360446, 0, 1, '', 0, 1, 0, 56, '', '', '', '', '123', '');
INSERT INTO `%DB_PREFIX%article` (`id`, `title`, `icon`, `content`, `cate_id`, `create_time`, `update_time`, `add_admin_id`, `is_effect`, `rel_url`, `update_admin_id`, `is_delete`, `click_count`, `sort`, `seo_title`, `seo_keyword`, `seo_description`, `uname`, `sub_title`, `brief`) VALUES
(13, '审核之借出者篇', '', '在p2p信贷上成为借出者十分简便，用户免费注册后通过手机绑定，身份证验证和借出学习即可成为p2p信贷借出者，成为借出者后用户可以选择符合自己标准的借款列表借出。关于借款列表的选择，我们有专门的建议，这里主要介绍一下信用审核对于借出者选择的影响。p2p信贷的信用审核系统包括了基本信用审核（目前包括身份证明、工作证明、学历证明、社区网认证）和附加信用审核（目前包括购车证明、微博认证、信用报告认证、收入认证、结婚证明）两个方面。要通过信用审核要求借入者上传自己的相关资料，p2p信贷的审核人员对这些资料进行严格审查，尽可能确定资料的真实性。基本信用审核表明借入者的真实性和基本信用情况（经验表明工作、学历在很大程度上说明了借入者的信用状况），而附加信用审核的材料获得有一定的难度，且具有一定门槛（购车证明、完税证明、个人信用报告等审核对借出者的经济基础有较高要求），借入者能够通过附加信用审核说明他对借款更加重视，也具备更强的还款能力。通过审核的资料在借入者发布借款请求时会部分披露给借出者，从而让借出者更加了解借入者的情况，以便作出正确的判断。当借入者发布借款时，为保护借出者的利益，我们要求借入者至少要通过基本信用审核。 在p2p信贷上选择借款列表时，除了要看借入者的借款描述和用途外，更要看借入者披露的信息是否足以证明自己的还款意愿和能力（一般来说，著名高校毕业、就职于知名企业或政府部门、社区网使用活跃、已购车、已婚、收入较高等都能直接或间接说明借入者还款意愿和能力更强）。为保护借出者的利益，借入者要在p2p信贷上披露信用信息必须通过相应的认证，也就是说借入者通过越多的审核借出者对借入者进行判断的依据也就越多。所以，借出者应尽量选择基本信用状况优秀或是基本资料并不出众但是通过了较多附加信用审核的借入者。特别地，当借入者发布较高额的借款请求时，除非通过其它渠道对借入者有所了解，否则我们建议借出者要主动要求借入者通过更多的附加信用审核（可以通过借款列表内的留言板进行留言）。', 6, 1359133133, 1359962803, 0, 1, '', 0, 0, 0, 28, '', '', '', '', '', ''),
(14, '审核之借入者篇', '', '在p2p信贷上申请成为借入者，完成基本信用审核后才可以发布借款，基本信用审核是p2p信贷审核的门槛，提交基本信用审核申请的难度较低，借入者通过基本信用审核后即可发布借款请求。附加信用审核作为基本信用审核的补充，能够提高借入者的信用等级，增加借出者对借入者的信任，提高借款成功率。 p2p信贷的基本信用审核目前包括身份证认证，学历认证，工作认证和社区网认证。要通过基本信用审核需要提供身份证原件的照片或扫描件，中国高等教育学生信息网学历认证在线验证码（登录学信网注册后即可方便获得），工作证明原件照片或扫描件及常使用的社区网账号（目前仅限于开心网和人人网），这些材料获取容易，且包括了用户的基本信息（借入者在发布借款请求时，我们会在保护用户隐私的前提下有选择的披露部分借入者信息以便借出者作出判断），能够让借出者对借入者有初步了解。 附加信用审核目前包括新浪微博认证，收入证明，个人信用报告认证，购车证明，结婚证明。通过附加信用审核可以提高信用等级，等级越高，借款成功的可能性越大，借款利率也会相应降低。因而我们提倡借款前尽可能多地完成附加信用审核。某些附加信用审核材料的获得较基本信用审核困难一些，比如个人信用报告，完税证明，等都需要到专门的机构获得。虽然材料的获取有一定难度，但是只要您提供的材料真实，通过这些审核后借出者对您的了解和信任度会有显著提高，借款也更易成功。', 6, 1359133185, 1359962741, 0, 1, '', 0, 0, 0, 29, '', '', '', '', '', ''),
(15, '选择借款列表', '', '借款列表是p2p信贷借入者发出的借款请求。借款列表中包括借款数额、借款目的、借款期限和借款人对如何使用这笔借款的描述等信息。通过借款列表您还可以了解借款人已上传哪些信用审核资料及该借款人的信用等级。p2p信贷上有许多借款列表可供选择。点击“我要借出”标签，您就可以浏览所有的借款列表。“正在进行中的列表”显示的是目前可以投标的一些借款，“等待复审的列表”显示的是已经完成招标，正在审核中的借款。您也可以查看所有借款列表，并通过招标剩余时间、借款数额、借款进度、借款人信用等级等条件，进一步详细搜索。 您可以根据p2p信贷为您提供的信息选择适合您投资的借款列表。如果您是风险爱好者，您可以选择信用等级较低、借款期限较长但利息率高的借款列表。如果您是风险规避者，您可以选择信用等级高、借款期限短但利息率较低的借款列表。p2p信贷保证您完全享有真实、有效的借款人信息，以便您做出明智的选择，这样您的投资就会有稳定、丰厚的回报。 想了解更多投资策略，请参考“投资策略”与“分散投资降低风险”。', 6, 1359133220, 1359962669, 0, 1, '', 0, 0, 0, 30, '', '', '', '', '', ''),
(16, '借款失败原因', '', '<p>1．信息太少，有的借款者发布的借款列表内容很少，甚至只有一个图标或者一张没有真实头像的图片，没有明确的借款原因。这样的借款列表不能让人产生信任感，借出者会因为真实信息太少又不能保证按时还款而不会投标。</p>\r\n<p>&nbsp;2．借款的用途不可靠，有的借款者借款用途风险太大或者不合法，有的甚至带有赌博性质，比如要去股市再赌一把等，这种风险太大的借款项目一般出借人也不会选择。&nbsp;</p>\r\n<p>3．借款描述存在明显问题，比如有的借款列表描述中，每月收入除去每月应还款数额后剩余金额不足以抵消每月开支，没有足够的还款能力。</p>\r\n<p>4．低级的骗子，有的借入者直接抄袭别人的借款列表信息，但是一些基本信息存在明显的矛盾之处。&nbsp;</p>\r\n<p>5．信誉不好者，在p2p信贷有逾期行为的借款者会被记录到黑名单中，随着逾期时间的增长，我们会逐步公布逾期借款者的信息，有了逾期记录的借款者再次借款会有一定难度。&nbsp;</p>\r\n<p>6．发布借款列表后即消失，对于借出者的合理的提问要求不予回应。&nbsp;</p>\r\n<p>7．个人基本情况并不优秀，而且通过的附加信用审核很少或是没有通过附加信用审核。</p>', 6, 1359133288, 1359962598, 0, 1, '', 0, 0, 0, 31, '', '', '', '', '', ''),
(17, '其他借出技巧', '', '<p>1.不要盲目跟投 盲目跟投是初级借出者常见的错误之一。不管借款人的信用级别，不看借款列表详情，就亦步亦趋的跟着其他出借人投标，这是危险且对自有资金不负责的行为。一些明显存在较大风险的借款列表很可能由于一些借出者的盲目跟投而满标，进而产生潜在风险。&nbsp;</p>\r\n<p>2.不要在投资中夹杂过多感情因素 p2p借贷系统建立的初衷是让大家帮助大家，但归根结蒂对于出借人来说这里是一个投资的平台是一个理财的途径，如果出借人承担了与回报不相符的风险那么出借人对于借入者的帮助也是无力和不可持续的。所以，借出者不要完全基于感情因素（喜欢，同情等）去投标，在帮助人的同时一定要考虑自己的风险与回报是否匹配。&nbsp;</p>\r\n<p>3.关注借入者的网络行为 我们生活在网络互动日益频繁，网络生活占日常生活比重日益加大对时代，p2p借贷系统也正是在这样的大环境下应运而生。所以，在判断借款人信用的时候除了以参考p2p借贷系统给出的信用级别为主外，还可以关注该用户的网络行为。比如他/她的网络日志，他/她的社交网站，微博等等。通常来讲，一个用户可考证的网络行为可以从一个侧面在某种程度上反映出他/她的信用水平。&nbsp;</p>\r\n<p>4.主动向借入者提问 经验表明优秀的贷款审核员对借入者的人工判断在某些时候甚至会优于最好的信用模型。所以，p2p借贷系统鼓励借出者对借入者提出与借款相关的问题，或是要求借入者提供一些附加的信用材料。在借款列表中的留言板上对借入者提问，借入者会在第一时间得到通知。当借入者回答您的提问时，您也会收到邮件提醒。&nbsp;</p>\r\n<p>5.关注借款人信用等级以外的其他信息 毋庸置疑，借款人的信用等级在很大程度上说明了借款人的信用情况，但是有时通过借入人是哪个院校毕业的、他/她做过哪些认证、他/她之前的还款情况怎样、他/她的借款用途是什么、他/她准备如何还款等其他信息也能在一定程度上判断出借款人是否有还款能力和还款意愿。</p>', 6, 1359133338, 1359133338, 0, 1, '', 0, 0, 0, 32, '', '', '', '', '', ''),
(18, '提高借款成功率', '', '<p>提高借款成功率 借款能否成功主要看出借人对借入者的看法，如果借入者有良好的还款意愿和还款能力，且能够提供真实的证明材料，则出借人更愿意对其投资。具体来说，一笔成功的借款需要具备的条件有真实的借款用途，真诚的借款意愿，充足的还款能力，可靠的证明材料。简而言之就是，提供真实的资料，增加信用等级，以真诚打动出借人。&nbsp;</p>\r\n<p>分开来讲要注意的地方有：</p>\r\n<p>&nbsp;　　1．尽量通过更多的附加信用审核。附加信用审核的通过有一定的难度，通过附加信用审核可以证明借入者的还款意愿和还款能力，而且每通过一项审核，审核人员会根据您提供的材料进行评分，信用分数越高，信用等级相应地也会提高，不喜欢高风险的借出者也比较愿意对您的信用列表投标。&nbsp;</p>\r\n<p>　　2．借款时在不泄露个人隐私前提下提供尽可能多的披露个人信用信息，目前可披露的信息包括毕业院校，工作单位，社区网使用状况，婚姻状况，购车状况，信用报告情况，收入状况等，其中有些内容借款时必须披露，有些则可以在通过相应的认证后选择性的披露。通常著名高校毕业，知名企业或政府机关就业，社区网站活跃，已婚，购车等情况比较吸引借出者。同时，借款描述中详细的借款用途，可靠的还款来源，合理认真的收支计划等也能反映借入者的认真态度，更容易筹集到借款。&nbsp;</p>\r\n<p>　　3．可以将自己的借款分享到人人网，开心网或新浪微博，吸引有意愿和能力的好友来投标，同时好友的关注，投标及评论也可以吸引其他借出者。</p>', 6, 1359133398, 1359133398, 0, 1, '', 0, 0, 0, 33, '', '', '', '', '', ''),
(19, '如何判断借款列表', '', '在p2p借贷系统上借出闲置资金，在帮助别人的同时获取稳定的收入， 实现社会资本的再分配，是一种双赢的选择。但是平台上发布借款的人数众多且参差不齐，必然存在借款者不能按时还款的情况。为了保证自己的资金能够收回，如何选择可靠的借款列表进行投资就需要慎重考虑。对于大多数投资人来说，一个大原则就是做熟不做生，投稳不投险。 对于朋友发布的借款列表，可以通过私下亲自接触来了解，这种情况能够获取第一手资料，稳定性更高。对于朋友的朋友发布的借款列表，可以通过朋友间接了解，或经朋友介绍直接了解。 对于陌生人发布的借款列表，首先要看他/她的信用等级。等级可以从很大程度上反映借入者的信用水平，一般而言信用等级越高违约的可能性就越低。其次要看他通过的信用审核，基本信用审核（目前包括身份证明、工作证明、学历证明、社区网认证）可以表明借入者身份的真实性和基本信用情况，成为借入者发布借款至少要通过基本信用审核；附加信用审核（目前包括购车证明、微博认证、信用报告认证、收入认证、结婚证明）能反映其对借款的重视程度，也能表明其还款能力。所以借出者可以选择基本情况优秀或是通过较多附加信用审核的借出者。最后要看一下他/她的借款描述，以及借款条件。借款用途和还款计划描述详尽可靠，且借款数额和借款利率与借款描述和借款人信用等级相符的借款人较为可靠。如果经过以上判断还有疑问的可以通过借款列表的留言板给借款者留言，通过借款者的回答来更进一步了解借款者。', 6, 1359133440, 1359133440, 0, 1, '', 0, 0, 0, 34, '', '', '', '', '', ''),
(20, '借入者注意事项', '', '<p>用户到p2p信贷发布借款，基本上都是近期有资金需求想要尽快筹到所需资金的，有的借入者对于借贷流程不熟悉，没有成功借到钱。借款失败的原因可能有很多，p2p信贷给出的建议是：作为借入者当有所为有所不为。&nbsp;</p>\r\n<p>有所为：</p>\r\n<p>　　1．尽可能详尽地完善个人资料，完成信用审核，资料要真实可靠，投资者都会偏向于比较可靠的借入者，真实的照片，可查询的社区网站，通过较多的附加信用审核等等都可以获得更多人的关注。&nbsp;</p>\r\n<p>　　2．邀请好友加入，熟悉的人对彼此都很了解，会有更强的投资意愿。而且好友的评价也可以成为投资者的参考意见。&nbsp;</p>\r\n<p>　　3．尽可能详细耐心地回答借出者的提问，通过沟通加深彼此的了解，对各种可能出现的情况提前进行说明，借出者在获得自己想要的信息之余还会对您的耐心细心留下深刻的印象。&nbsp;</p>\r\n<p>有所不为：&nbsp;</p>\r\n<p>　　1．不提供任何虚假信息。p2p信贷的后台审核人员对于用户资料的甄别非常认真严格，能够避免大部分欺诈借款的通过，而且p2p信贷用户之间的交流也可以让一些骗子无所遁形，不要存在侥幸心理，一旦被识别出虚假信息，用户信用会受到非常大的影响，信用恢复也非常困难，没有人愿意将钱投给有诈骗前科的人。&nbsp;</p>\r\n<p>　　2．在不了解平台原理借贷流程的情况下发布借款，屡次流标，有了多次流标记录会让借出者对用户产生怀疑，再次发布借款的成功率也不会太高。&nbsp;</p>\r\n<p>　　3．不要将自己的一些隐私如身份证号，详细住址等公布在公共区域，警惕骗子利用您的信息行骗。 希望您能够在p2p信贷成功借到资金。</p>', 6, 1359133508, 1359962338, 0, 1, '', 0, 0, 0, 35, '', '', '', '', '', ''),
(21, '投资策略', '', '<font color="#444444" face="Arial, Tahoma, Helvetica, 宋体"><span style="line-height:19px;">一旦您决定通过p2p信贷进行投资，您就可以利用我们为您提供的工具、数据和p2p信贷独一无二的优势——透明性，开始构建专属于您的投资组合。 在您构建投资组合时先要明确的是您的风险偏好和承受损失的能力。通常来讲较高的收益会对应较高的风险，低风险也只会带来较低的收益。具体到p2p信贷来讲，信用等级高、信用信息优秀（毕业于著名高校，在有实力的公司任职等）且信用资料完善的借入者违约几率极低，所以支付给您的利息也会相对较低（还是高于一般理财产品），较低信用级别或是信用信息并不出众的借入者则会支付更多的利息，但是相对而言违约率也会有所增加。通过浏览借款人的详细资料（包括毕业院校，婚姻状况，工作情况，p2p信贷借款记录，借款描述，财务状况等）、信用等级，p2p信贷审核记录以及亲身与之交流，您可以挑选出更适合您风险偏好的贷款。如果您承受风险的能力较强，为了追求更高的收益您可以制定较为激进的投资策略并在您的投资组合中更多的加入信用级别相对较低的借入者，反之，如果您厌恶风险，追求更加稳定的回报，您可以制定更加稳健的投资策略在您的投资组合中更多的考虑高信用级别的借款人。同时，您的投资策略还应随着您的财务状况的变化做出相应的调整。</span></font>', 6, 1359133555, 1359962286, 0, 1, '', 0, 0, 0, 36, '', '', '', '', '', ''),
(22, '无抵押贷款骗局', '', '<p>目前全国很多地方出现了小额无抵押贷款信息，这些公司均是不限地区，也不需要任何抵押，只需身份证就可以放贷款。事实证明这些信息基本都是欺诈信息。 无抵押贷款，正规金融机构只有个别银行推出了公务员担保的小额无抵押贷款及农村信用社的多户联保，而且需要按照正规流程:到银行面签合同，提供工资卡的银行对帐单等。事实上这些业务在实践中也不断出现问题，甚至多数已经名存实亡，或者不断提高要求导致贷款量逐渐萎缩。至于民间机构（包括新成立的小额贷款公司），则多数不敢涉足，或者欲尝辄止，难成气候。 纵观目前出现的骗局，他们都有一定的行为模式，共同之处可能包括：&nbsp;</p>\r\n<p>　　1．公司名头比较吓人，所谓的“xx贷款集团”等，甚至有个别还提供营业执照复印件，造假痕迹十分明显。事实上，所谓的“xx贷款集团”，根本不可能在工商部门登记注册，即使提供的营业执照复印件，也是仿造的；&nbsp;</p>\r\n<p>　　2．一般只提供手机号、联系人和QQ，无固定电话，无办公地址，通过网上搜索该号码可以看到在全国不同城市的业务都是用同一号码，非常有问题；&nbsp;</p>\r\n<p>　　3．一般都说明公司在全国各大中城市均设有分支机构，各地都可以方便的办理业务；&nbsp;</p>\r\n<p>　　4．放贷条件十分宽松，手续简便，只需提供基本资料如身份证，户口本或营业执照，无需抵押；&nbsp;</p>\r\n<p>　　5．利率看似合理，月息1%—3%不等；&nbsp;</p>\r\n<p>　　6．当借款人联系后，骗子们会找出各种理由要求先收取前期费用（如预付利息，律师费，核实费，保险费，手续费，保证金等）；&nbsp;</p>\r\n<p>　　7．当借款人付费后，发现骗子再也无法联系上；&nbsp;</p>\r\n<p>p2p借贷系统在这里真诚提醒您：&nbsp;</p>\r\n<p>　　1．请到对方公司进行实地查看，并签订正式合同。&nbsp;</p>\r\n<p>　　2．请仔细辨别公司是否为正当经营的企业。&nbsp;</p>\r\n<p>　　3．请不要在贷款未到账之前支付任何前期费用。 p2p信贷提供一个借入借出者自由交流的平台，借入借出者的准入都要求通过实名身份验证，发布借款需要通过各项审核，借款完成放标前需要通过视频验证，电话验证各项验证，尽可能的保证借款的安全，但是我们的措施不能做到万无一失，我们通过审核认证等行为尽可能详细地了解用户信息，对用户的投资理财给出专业的建议，您可以基于我们的建议作出自己的决定。</p>', 6, 1359133635, 1359962237, 0, 1, '', 0, 0, 0, 37, '', '', '', '', '', ''),
(23, '新手上路', '', '如果您是一个投资新手，不知道从何开始，p2p信贷是您不二的选择，我们为您提供流水化的、简单的投资过程，帮您实现轻松理财。 信息的透明度是我们一贯坚持的理念。p2p信贷为您提供完全透明、真实的信息，使您能够做出正确的投资选择。通过借款人的信用记录、投标进程的即时更新，您可以全程了解您投资的去向。另外，很重要的一点是您可以了解您把钱借给了谁，用做什么用途。我们的借款人是真实存在的个体，而不是像一些公司那样，让您无从得知投资的用途。 作为一个投资新手，您可以阅读一些有关投资方面的书，也可以向身边的朋友寻求一些建议。p2p信贷也为您提供了一个简单易行的理财方法。但是这并不意味着在p2p信贷投资没有任何风险，您也有可能遇到不按时还款的借款人、甚至坏账。这就是我们为什么建议您分散投资，使您的投资组合多样化。详情请参考“分散投资降低风险”。', 6, 1359133662, 1359962205, 0, 1, '', 0, 0, 0, 38, '', '', '', '', '', ''),
(24, '分散投资降低风险', '', 'p2p借贷系统网络平台的一大优势在于丰富、透明、全面的信息，您可以轻松接触到所有借入者的必要资料，加之平台最低允许单笔50元的投资，您可以轻松投资多个借入者。 投资多个借入者的一大好处在于有效降低风险。虽然不管投资多么分散单笔投资的违约率是不会改变的，但是由于资金分散，单笔投资规模较小，一笔投资不能收回不会严重影响收益率。反之，如果投资过于集中，一旦出现违约会对投资收益造成严重影响甚至给您带来损失。因而我们建议您在投资时尽量将资金分成多笔投出，不要集中在一笔或者几笔上。具体应该分散到什么程度跟您的投资策略息息相关，当您更多的选择低信用级别的借入者以追求高收益时，您应适当加大分散程度。反之，当您更多的选择高信用级别的借款人以追求稳定的回报时，可以适当降低分散程度从而减少您的工作量。原则上讲，我们建议您将手中的资金分成至少20份投出。 另外，分散投资可以让您帮助更多的借入者，在投资的同时享受帮助他人的乐趣。分散投资还可以让您有效的建立投资组合，具体请参考“投资策略”。', 6, 1359133692, 1359133692, 0, 1, '', 0, 0, 0, 39, '', '', '', '', '', ''),
(25, '风险与收益', '', '在任何投资中，收益和风险都形影相随，收益以风险为代价，风险用收益来补偿。投资者投资的目的是为了得到收益，与此同时，又不可避免地面临着风险，在p2p信贷投资也是如此。 通过p2p信贷，您可以注册成为借出者并投资购买一个或多个借款列表中的部分或者全部债权。当一个借入者加入p2p信贷并提交了相应的资料后（包括工作证明、社区网证明、学历证明、身份验证、微博验证、购车证明、结婚证明、个人信用报告、收入证明等），我们会严格审查资料，尽可能确定资料的真实性，并利用我们的信用评估系统授予该借入者一个p2p信贷信用等级。通过审核的资料会在借入者发布借款时部分的披露给借出者，以便借出者做出正确的判断（一般来说，著名高校毕业、就职于知名企业或政府部门、社区网使用活跃、已购车、已婚、收入较高等都能直接或间接说明借入者还款意愿和能力更强）。而借入者的信用等级则由其通过审核的数量和其之前在网站上的借贷行为决定。通常，信用等级越高披露的信用资料越优秀出现违约的几率也就越小，反之则违约几率加大。 更小的违约几率代表更加确定的收益，但是由于借入者信用级别较高，或是他的信用资料很优秀时，她/他所接受的利息通常较低。因而投资这类借入者通常会带来风险小、稳定但是较低的收益。反之，较低的信用级别代表相对较大的风险，但当借入者信用级别较低，且信用资料并不出众时，她/他所接受的利息会相对较高。于是，投资低信用等级借入者通常会带来具有一定风险但是较高的收益。 了解了风险与回报的关系您就可以根据您的风险偏好来选择借入者进行投资了。p2p信贷网络平台的优势让您可以将您手中的资金分散投给多个借入者，于是您可以制定自己的投资策略，构建自己的投资组合。具体请参考“投资策略”于“分散投资降低风险”。', 6, 1359133719, 1359962157, 0, 1, '', 0, 0, 0, 40, '', '', '', '', '', ''),
(26, '信用等级的解读', '', '最近，部分用户反映不是很理解我们的信用等级，我在这里做一下说明。如果大家读过本栏目中的“风险与收益”、“投资策略”以及“如何判断借款列表” 那么一定知道借入者信用水平有高有低，潜在的违约率也不尽相同。目前，p2p借贷系统根据借入者提交的信用审核资料将借入者分成7个信用等级，由高到低分别是 AA、A、B、C、D、E、HR。其中，AA为信用水平最高级，代表极低的违约率，同时，这类借款人通常接受的利率也较低。反过来，HR则代表低信用水平，潜在的违约风险也较其他信用等级为高，所以需要提供更高的利息来弥补出借人承担的风险。具体分数线以及等级的划分可以参考“我的帐户”内的“信用审核”页面。 p2p借贷系统信用审核', 6, 1359133754, 1359133754, 0, 1, '', 0, 0, 0, 41, '', '', '', '', '', ''),
(27, '政策法规', '', '<div class="blank20"></div>\r\n<div class="f_dgray b f12">    一、民间借贷的定义</div>\r\n<div class="blank20"></div>\r\n民间借贷是指自然人之间、自然人与法人之间、自然人与其它组织之间借贷。民间借贷是《民法通则》中一种民事法律行为，行为人在具有完全民事行为能力（即年满18周岁，且不存在足以影响自身行为的精神疾病的情形）、意思表示真实，借款合同符合法律、行政法规规定，则该借款合同完全受到《合同法》等法律的保护。民间借贷是民间资本的一种投资渠道，作为银行金融的有效补充已逐渐成为民间金融的一种重要形式。<div class="blank20"></div>\r\n<div class="f_dgray b f12">    二、民间借贷的法律环境</div>\r\n<div class="blank20"></div>\r\n《国务院关于鼓励和引导民间投资健康发展的若干意见》：新36条出台，鼓励民间资本进入金融领域，发起设立金融中介服务机构。<div class="blank20"></div>\r\n《中华人民共和国合同法》从法律上肯定了民间借贷行为的合法性，并从法律层面保护出借人收回借贷资金和利息的权利。<div class="blank20"></div>\r\n《合同法》第211条：“自然人之间的借款合同对支付利息没有约定或约定不明确的，视为不支付利息。自然人之间的借款合同约定支付利息的，借款的利率不得违反国家有关限制借款利率的规定”。<div class="blank20"></div>\r\n最高人民法院《关于人民法院审理借贷案件的若干意见》第6条：“民间借贷的利率可以适当高于银行的利率，各地人民法院可以根据本地区的实际情况具体掌握，但最高不得超过银行同类贷款利率的四倍，（包含利率本数）。超出此限度的，超出部分的利息不予保护”。<div class="blank20"></div>\r\n<div class="f_dgray b f12">    三、p2p信贷的合法性</div>\r\n<div class="blank20"></div>\r\n《合同法》第二十三章“居间合同”中明确规定，居间人提供贷款合同订立的媒介服务，可依法向委托方收取相应的报酬。因此贷款服务机构的存在和服务费的收取都是符合法律规定并受法律保护的。<div class="blank20"></div>\r\np2p信贷既不吸储，也不放贷，作为一个网络信用管理及借贷服务中介机构，其业务范围和经营活动完全符合相关法律和国家的政策规定。p2p信贷将在国家法律和相关政策的指引下，为广大借款人、出借人提供优质、高效的服务。<div class="blank20"></div>\r\n<div class="f_dgray b f12">    四、政策倾向</div>\r\n<div class="blank20"></div>\r\n<a href="http://finance.qq.com/a/20111110/006098.htm?qq=0&amp;ADUIN=1053718065&amp;ADSESSION=1320928475&amp;ADTAG=CLIENT.QQ.3847_.0" target="_blank"> “央行：“民间借贷有合法性 利率不得高于银行4倍”</a><div class="blank20"></div>\r\n央行有关负责人表示，在遵守相关法律前提下，自然人、法人及其他组织间有自由借贷的权利。只要不违反法律的强制性规定，民间借贷关系都受法律保护。民间借贷是正规金融的有益补充。', 3, 1359158624, 1359961895, 0, 1, 'u:index|aboutlaws', 0, 0, 4, 42, '', '', '', 'aboutlaws', '', ''),
(28, '为什么选择p2p信贷', '', '<div style="margin-top:10px;padding:10px;">		<div class="about_title2">稳定的回报</div>\r\n		<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n		<div style="font-size:13px;line-height:20px;">			<p>在股票、债券、银行存款等传统投资方式之外，p2p信贷为您提供了一种新的投资途径，您可以将钱5.9%—23.4%不等的年利率，出借给哪些有需要的借入者，				然后每月回收本金和利息，从而获取稳定的投资回报。			</p>\r\n		</div>\r\n	</div>\r\n	<div style="margin-top:20px;padding:10px;">		<div class="about_title2">帮助他人</div>\r\n		<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n		<div style="font-size:13px;line-height:20px;">			<p>				在p2p信贷上，您可以自由的选择将钱出借给您希望帮助的群体，如医生、警察、消防员，或者创业人群等。				您也可以通过借款目的来选择您出借的对象，如教育培训借款，婚礼筹备借款等。这一切都将是您在获取稳定回报的同时，实现了帮助他人的人生价值。			</p>\r\n		</div>\r\n	</div>\r\n	<div style="margin-top:20px;padding:10px;">		<div class="about_title2">详尽客观的借入者信息</div>\r\n		<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n		<div style="font-size:13px;line-height:20px;">			<p>p2p信贷以客观公正的态度，尽最大的努力去审核借入者的每一项信用信息。包括借入者的工作情况，家庭情况，收入情况，信用情况等。				p2p信贷将这些信用信息分析整理后，最大限度地提供给出借者，以帮助出借者做出客观正确的出借抉择。			</p>\r\n		</div>\r\n	</div>\r\n	<div style="margin-top:20px;padding:10px;">		<div class="about_title2">分散投资</div>\r\n		<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n		<div style="font-size:13px;line-height:20px;">			<p>				我们同时也要提醒您，在p2p信贷的出借并不是100%安全的，借出的金额也存在一定的违约风险。然而通过p2p信贷，您可以将您的总出借金额，				以最低50元一笔的方式分散出借给很多借入者，这样的分散投资将大大降低您的整体投资风险。			</p>\r\n		</div>\r\n	</div>\r\n	<div style="margin-top:20px;padding:10px;">		<div class="about_title2">灵活的投资周期</div>\r\n		<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n		<div style="font-size:13px;line-height:20px;">			<p>				p2p信贷提供3个月、6个月、9个月、12个月、18个月、24个月、和36个月7种借款期限选择。因此出借者可以根据自己的需要，将钱投资给不一样周期的借款人。				同时，由于借入者是每月还款，因此出借者很快就可以开始回收投资，并非要等到借款到期时才可拿回本金。在回收本息的过程中，				出借者可以将回收的钱出借给其他借款人来获取更多的回报，也可将钱自由支配，用于其他用途。			</p>\r\n		</div>\r\n	</div>', 7, 1359249848, 1359961869, 0, 1, 'u:index|deals&act=about&u=choose', 0, 0, 15, 43, '', '', '', 'choose', '', ''),
(29, '投资回报', '', '<div style="margin-top:10px;padding:10px;">	<div style="font-size:13px;line-height:20px;">		<p>			通过p2p信贷，您可以将手中的富余资金出借给信用良好但缺少资金的大学生、工薪阶层、微小企业主、农民，帮助他们实现教育培训、电脑或家电购买、			装修、兼职创业、脱贫致富等理想，同时还能通过利息收入为您带来较高的稳定收益，			实现精神和物质的双重回报。根据p2p信贷的历史经验数据，资金年收益始终保持在10%以上。		</p>\r\n	</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;">	<div class="about_title2">各类型投资产品收益及风险对比分析</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;" class="dunDetail">		<table width="480" style="text-align:center;background:#d3d4d8;" border="0" cellspacing="1">			<tbody><tr bgcolor="#e1f0ff" style="font-weight:bold;height:37px;">				<td>产品</td>\r\n				<td>年收益</td>\r\n				<td>风险级别</td>\r\n				<td>流动性</td>\r\n			</tr>\r\n			<tr style="height:37px;" bgcolor="#ffffff">				<td>一年期定存</td>\r\n				<td>2.6%</td>\r\n				<td>★</td>\r\n				<td>★</td>\r\n			</tr>\r\n			<tr style="height:37px;" bgcolor="#ffffff">				<td>一年期国债</td>\r\n				<td>2.6%</td>\r\n				<td>★</td>\r\n				<td>★</td>\r\n			</tr>\r\n			<tr style="height:37px;" bgcolor="#ffffff">				<td>银行理财产品</td>\r\n				<td>3%—6%</td>\r\n				<td>★★</td>\r\n				<td>★</td>\r\n			</tr>\r\n			<tr style="height:37px;" bgcolor="#ffffff">				<td>开放式基金</td>\r\n				<td>不确定</td>\r\n				<td>★★★</td>\r\n				<td>★★★★★</td>\r\n			</tr>\r\n			<tr style="height:37px;" bgcolor="#ffffff">				<td>股票</td>\r\n				<td>不确定</td>\r\n				<td>★★★★★</td>\r\n				<td>★★★★</td>\r\n			</tr>\r\n			<tr style="height:37px;" bgcolor="#ffffff">				<td>p2p信贷</td>\r\n				<td>10%以上</td>\r\n				<td>★</td>\r\n				<td>★★</td>\r\n			</tr>\r\n		</tbody>\r\n</table>\r\n	</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;">	<div class="about_title2">一年期定期存款、国债</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			定期存款与国债的风险，在众多理财途径里面无疑最低的，然而锁定期长，2％左右的回报率，在通过膨胀日益高涨，CPI高于3％的今天，			却让资金难以抗衡通胀，从长期来看购买力将越来越低。		</p>\r\n	</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;">	<div class="about_title2">银行理财产品</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			在银行里，锁定期1年以上的理财产品，年化回报率一般在在3－6％左右，但是动辄几百万的投资门槛，将很多理财者拒之门外。相比起来，			通过p2p借贷系统借出，资金的回收情况则要灵活的多。此外，理财产品背后的还款来源则是政府的财政贷款，房地产信托等。这些对象的财务情况并非完全透明，			对于普通用户来说，往往只能看到表面的情况，难以真正理解其中的风险。		</p>\r\n	</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;">	<div class="about_title2">股票、基金</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			随着中国金融行业的发展，股票和基金已经慢慢地成为了很多人投资理财的选择。然而，股票和激励里那些复杂的概念，创业版，物联网，			有色板块，明星基金经理，内部消息等等词汇，我们已慢慢耳熟能详，我们也一次次地期望那个暴富的故事发生在我们身上，然而在现实生活中，			却往往发现并不那么给力，我们面临的更多的总是长期套牢。相比起来，通过分散投资，通过借钱还款这样简单明了的赚钱模式，获得稳定的10%以上收益，			也许更适合普通的投资者。		</p>\r\n	</div>\r\n</div>', 7, 1359250044, 1359961779, 0, 1, 'u:index|deals&act=about&u=respond', 0, 0, 16, 44, '', '', '', 'respond', '', ''),
(30, '投资风险', '', '<div style="margin-top:10px;padding:10px;">	<div class="about_title2">p2p信贷的审核机制</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			p2p信贷结合了国内外先进的信用审查及风险控制机制，形成了一整套贯穿于前期咨询、贷前审核、贷后跟进、回款管理的全面而严密的信用服务流程。			截至目前为止，p2p信贷系统上半年以来，坏账率仅为0.8%，远低于同行业1.7%的平均水平。<br />\r\n			前期审核阶段，p2p信贷系统将通过对用户的各种材料，以及电话核实的手段，来考查用户的偿还能力，信用习惯，和稳定性三方面。审核时依据的材料包括用户的工作证明，			银行流水单，个人信用报告，房产证明，结婚证明等。		</p>\r\n	</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;">	<div class="about_title2">p2p信贷系统的催收机制</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			除了前期严格的审核手段之外，若借款人出现逾期还款情况，p2p信贷将在不同的阶段进行不同程度的催收。<br />\r\n			逾期初期，p2p信贷客服将通过电话与借款人进行沟通，做出善意的还款提醒，同时了解用户的逾期原因，并提醒保持良好信用的重要性。<br />\r\n			如果p2p信贷客服沟通期间，借款人不积极配合，或者在15天以后依然不进行还款，则p2p信贷将尝试与借款人的联系人等其他联系方式进行沟通。<br />\r\n			如果借款用户恶意逃避，或者逾期超过30天，p2p信贷将把借款人的催收委托给第三方全国性催收机构协助催收，同时逐步在借款人的借款详情里公布其逾期信息。		</p>\r\n	</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;">	<div class="about_title2">分散投资，降低风险</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			p2p信贷平台，为小额资金的分散投资提供了可能，根据经济学原理，每位借款人的还款是独立性极强的事件，这样风险就被大大分散。 <br />\r\n			例如，您将10万元借给一个借入者，假设违约率为1％，年利率为12％，一旦出现那1％的机率，该借款人违约不还，那么您所承受的风险将是100%。			但是，如果您能将10万元分成100元一笔，借出给1000个违约率为1%，			年利率为12%的借款人由于不同的借款人之间有极强的独立性，在这种投资方式下损失本金的概率将会变得非常低，约等于零。		</p>\r\n	</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;">	<div class="about_title2">风险保证金体系，逾期本金垫付</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			p2p信贷的风险保证金。风险保证金在理财者的出借资金遇到回收问题时，用以补偿其本金的损失，这将在很大程度上保证理财者的资金安全。<br />\r\n			目前p2p信贷的保证金处于试运行阶段，并免费将所有E级以上用户申请的借款纳入风险保证体系。当纳入风险保证体系的借款人逾期后，风险金将向理财者垫付本金，			同时该笔借款未来的本息、罚息等收益权，将归风险保证金所有。<br />\r\n			风险保证金具体细则，将在正式上线后公布。		</p>\r\n	</div>\r\n</div>', 7, 1359250247, 1359961733, 0, 1, 'u:index|deals&act=about&u=risk', 0, 0, 15, 45, '', '', '', 'risk', '', ''),
(31, '政策法规', '', '<div style="margin-top:10px;padding:10px;">	<div class="about_title2">民间借贷的定义</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			民间借贷是指自然人之间、自然人与法人之间、自然人与其它组织之间借贷。民间借贷是《民法通则》中一种民事法律行为，			行为人在具有完全民事行为（即年满18周岁，且不存在足以影响自身行为的精神疾病的情形）、意思表示真实，借款合同符合法律、			行政法规规定，则该借款合同完全受到《合同法》等法律的保护。民间借贷是民间资本的一种投资渠道，			作为银行金融的有效补充已逐渐成为民间金融的一种重要形式。		</p>\r\n	</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;">	<div class="about_title2">P2P民间借贷的法律环境</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			《国务院关于鼓励和引导民间投资健康发展的若干意见》：新36条出台，鼓励民间资本进入金融领域，发起设立金融中介服务机构。<br />\r\n			《中华人民共和国合同法》从法律上肯定了民间借贷行为的合法性，并从法律层面保护出借人收回借贷资金和利息的权利。<br />\r\n			《合同法》第211条：“自然人之间的借款合同对支付利息没有约定或约定不明确的，视为不支付利息。自然人之间的借款合同约定支付利息的，			借款的利率不得违反国家有关限制借款利率的规定”<br />\r\n			最高人民法院《关于人民法院审理借贷案件的若干意见》第6条：“民间借贷的利率可以适当高于银行的利率，			各地人民法院可以根据本地区的实际情况具体掌握，但最高不得超过银行同类贷款利率的四倍，（包含利率本款）。超出此限度的，超出部分的利息不予保护”。		</p>\r\n	</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;">	<div class="about_title2">p2p信贷的合法性</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			《合同法》第二十三章“居间合同”中明确规定，居间人提供贷款合同订立的媒介服务，可依法向委托方收取相应的报酬。			因此贷款服务机构的存在和服务费的收取都是符合法律规定并受法律保护的。<br />\r\n			p2p信贷既不吸储，也不放贷，作为一个网络信用管理及借贷服务中介机构，其业务范围和经营活动完全符合相关法律和国家的政策规定。			p2p信贷将在国家法律和相关政策的指引下，为广大借款人、出借人提供优质、高效的服务。		</p>\r\n	</div>\r\n</div>', 7, 1359250318, 1359961628, 0, 1, 'u:index|deals&act=about&u=rule', 0, 0, 16, 46, '', '', '', 'rule', '', ''),
(32, '投资小提示', '', '<div style="margin-top:10px;padding:10px;">	<div class="about_title2">不要盲目跟投</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>p2p信贷结合了国内外先进的信用审查及风险控制机制，形成了一整套贯穿于前期咨询、贷前审核、贷后跟进、回款管理的全面而严密的信用服务流程。截至目前为止，p2p信贷上线半年以来，坏账率仅为0.8%，远低于同行业1.7%的平均水平。<br />\r\n			前期审核阶段，p2p信贷将通过对用户的各种材料，以及电话核实的手段，来考查用户的偿还能力，信用习惯和稳定性三方面。审核时依据的材料包括用户的工作证明、银行流水单、个人信用报告、房产证明、结婚证明等。		</p>\r\n	</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;">	<div class="about_title2">不要在投资中夹杂过多感情因素</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			除了前期严格的审核手段之外，若借款人出现逾期还款情况，p2p信贷将在不同的阶段进行不同程度的催收。<br />\r\n			逾期初期，p2p信贷客服将通过电话与借款人进行沟通，做出善意的还款提醒，同时了解用户的逾期原因，并提醒保持良好信用的重要性。  <br />\r\n			如果p2p信贷客服沟通期间，借款人不积极配合，或者在15天以后依然不进行还款，则p2p信贷将尝试与借款人的联系人等其他联系方式进行沟通。<br />\r\n			如果借款用户恶意逃避，或者逾期超过30天，p2p信贷将把借款人的催收委托给第三方全国性催收机构协助催收，同时逐步在借款人的借款详情里公布其逾期信息。		</p>\r\n	</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;">	<div class="about_title2">关注借入者的网络行为</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			p2p信贷平台，为小额资金的分散投资提供了可能，根据经济学原理，每位借款人的还款是独立性极强的事件，这样风险就被大大分散。<br />\r\n			例如，您将10万元借给一个借入者，假设违约率为1％，年利率为12％，一旦出现那1％的机率，该借款人违约不还，那么您所承受的风险将是100%损失。			但是，如果您将10万元分成100元一笔，借出给1000个违约率为1%，年利率为12%的借款人，由于不同的借款人之间有极强的独立性，在这种投资方式下损失本金的概率将会变得非常低，约等于零。		</p>\r\n	</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;">	<div class="about_title2">主动向借入者提问</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			p2p信贷即将推出风险保证金。风险保证金在理财者的出借资金遇到回收问题时，用以补偿其本金的损失，这将在很大程度上保证理财者的资金安全。<br />\r\n			目前p2p信贷的保证金处于试运行阶段，并免费将所有E级以上用户申请的借款纳入风险保证体系。当纳入风险保证体系的借款人逾期后，风险金将向理财者垫付本金，			同时该笔借款本来的本息、罚息等收益权，将规风险保证金所有。			<br />\r\n			风险保证金具体细则，将在正式上线后公布。		</p>\r\n	</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;">	<div class="about_title2">关注借款人信用等级以外的其他信息</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			毋庸置疑，借款人的信用等级在很大程度上说明了借款人的信用情况，但是有时通过借入人是哪个院校毕业的、他/她做过哪些认证、他/她之前的还款情况怎样、			他/她的借款用途是什么、他/她准备如何还款等其他信息也能在一定程度上判断出借款人是否有还款能力和还款意愿。		</p>\r\n	</div>\r\n</div>', 7, 1359250393, 1359961566, 0, 1, 'u:index|deals&act=about&u=clew', 0, 0, 714, 47, '', '', '', 'clew', '', ''),
(35, '隐私保护', '', '<h3>我们有哪些措施保障您的隐私安全</h3>\r\n<ul id="anquanli">   <li>p2p信贷系统严格遵守国家相关法律法规，对用户的隐私信息进行严格的保护。 </li>\r\n   <li>我们采用业界最先进的加密技术，用户的注册信息、账户收支信息都已进行高强度的加密处理，不会被不法分子窃取到。 </li>\r\n   <li>p2p信贷系统设有严格的安全系统，未经允许的员工不可获取您的相关信息。</li>\r\n   <li>p2p信贷系统绝不会将您的账户信息、银行信息以任何形式透露给第三方。 </li>\r\n</ul>\r\n<h3>个人信息安全：</h3>\r\n<p>p2p信贷系统是一个实名认证平台，p2p信贷系统会保证用户信息隐私的安全，用户在平台上交流的过程中，也要时刻注意保护个人隐私，截图注意覆盖个人信息，不要透露真实姓名与住址等，以防个人信息被盗取造成损失。 </p>', 9, 1359307893, 1359961113, 0, 1, '', 0, 0, 493, 50, '', '', '', '', '', '');
INSERT INTO `%DB_PREFIX%article` (`id`, `title`, `icon`, `content`, `cate_id`, `create_time`, `update_time`, `add_admin_id`, `is_effect`, `rel_url`, `update_admin_id`, `is_delete`, `click_count`, `sort`, `seo_title`, `seo_keyword`, `seo_description`, `uname`, `sub_title`, `brief`) VALUES
(34, '账户安全', '', '<h3>第三方资金托管</h3>\r\n<p>p2p信贷目前对客户交易资金的保管完全按照"专户专款专用"的标准模式进行运作，客户在p2p信贷的交易资金是可以完全放心的。</p>\r\n<ul id="anquan_step" class="clearfix"><li><a href="./#zha_stpe1">第 1 步：牢记p2p信贷系统官方网址，警惕欺诈网站</a></li>\r\n<li><a href="./#zha_stpe2">第 2 步：用邮箱注册一个p2p信贷系统账号</a></li>\r\n<li><a href="./#zha_stpe3">第 3 步：设置高强度的"登录密码"</a></li>\r\n<li><a href="./#zha_stpe4">第 4 步：多给电脑杀毒</a></li>\r\n</ul>\r\n<h3 id="zha_stpe1">第 1 步：牢记p2p信贷官方网址，警惕欺诈网站</h3>\r\n<p>请牢记p2p信贷的官方网址是http://www.fanwe.com，不要点击来历不明的链接访问p2p信贷。您可将p2p信贷的官网链接添加到浏览器的收藏夹中，以便您的下次登录。</p>\r\n<h3 id="zha_stpe2">第 2 步：用邮箱注册一个p2p信贷系统账号</h3>\r\n<p>您可以用一个常用的电子邮箱注册一个p2p信贷账号，您将用该邮箱接收来自p2p信贷的验证、提醒等重要通知邮件。</p>\r\n<h3 id="zha_stpe3">第 3 步：设置高强度的"登录密码"</h3>\r\n<p>什么是高强度的登录密码，怎么设置会更安全？您在密码设置时，最好使用数字和字母混合，不要使用纯数字或纯字母。强烈建议不要把"登录密码"设置成生日、姓名拼音或是邮箱名，这些都是容易被他人猜到的形式。</p>\r\n<h3 id="zha_stpe4">第 4 步：多给电脑杀毒</h3>\r\n<p>及时更新操作系统补丁，升级新版浏览器，安装反病毒软件和防火墙并保持更新；避免在网吧等公共场所使用网上银行，不要打开来历不明的电子邮件等。</p>\r\n<p>电脑中毒会怎么样？ 如果电脑一直中毒，病毒会容易获取您的账户信息。</p>\r\n<p>电脑怎么杀毒？ 我们推荐支付宝安全联盟，联盟提供了很多免费的杀毒软件下载。</p>', 9, 1359307670, 1362187429, 0, 1, '', 0, 0, 475, 49, '', '', '', '', '', ''),
(38, '五大重要守则', '', '<h3>安全补丁更新：</h3>\r\n<p>些常用的计算机软件的保安漏洞可被病毒作者和黑客利用，来进入那些未安装安全补丁程序的计算机，盗取资料。一旦发现这种情况，软件出版商便会推出安全补丁程序来堵塞这些漏洞。您可定期浏览软件出版商的网站，对操作系统和应用软件进行安全补丁更新。 </p>\r\n<h3>防病毒软件：</h3>\r\n<p>安装防病毒软件，定期更新软件及安装最新的病毒定义文件，有效保障计算机免受病毒侵袭。 </p>\r\n<h3>个人防火墙：</h3>\r\n<p>安装防火墙，帮助保护您的计算机系统不会在连接互联网时受到侵袭，可阻止资料在未经您授权下传入或传出您的计算机。 </p>\r\n<h3>反间谍程序：</h3>\r\n<p>间谍软件可运行在用户计算机上用以监测及收集用户上网信息的程序，能够监测和搜集用户的上网信息，比如获取您输入的个人信息，包括密码、电话号码、信用卡帐号及身份证号码。间谍软件往往作为某些服务的「免费」下载程序的一部分下载到个人计算机中，或在未经您同意或知晓的情况下被下载到您的计算机中。我们强烈建议您安装并使用较有信誉的反间谍软件产品以保护您的计算机免受间谍软件的侵害。 </p>\r\n<h3>密码设置注意事项：</h3>\r\n<p>密码是取得您的网上户口数据的钥匙，因此您必须紧记将密码妥为保密。密码可以是任何字符，包括数字、字母、特殊字符等。长度在6～16位之间，区分英文字母大小写。密码最好是包含字母、数字、特殊字符的组合，不要设置成常用数字，如：生日、电话号码等，也不要设为一个单词。密码的位数应该超过六位，经常修改密码，并为重要服务例如网上理财服务设置独立的密码。 </p>', 11, 1359308550, 1359316356, 0, 1, '', 0, 0, 587, 53, '', '', '', '', '', ''),
(36, '严格的贷前审核', '', '<div class="lca_coninfo">贷前审核：<br />\r\n在客户提出借款申请后，p2p信贷系统会对客户的基本资料进行分析。通过网络、电话及其他可以掌握的有效渠道进行详实、仔细的调查。避免不良客户的欺诈风险。在资料信息核实完成后，根据个人信用风险分析系统进行评估，由经验丰富的贷款审核人员进行双重审核确认后最终决定批核结果。</div>', 10, 1359308190, 1359960352, 0, 1, '', 0, 0, 664, 51, '', '', '', '', '', ''),
(37, '完善的贷中贷后管理', '', '<div class="lca_coninfo">贷中审查：<br />\r\n贷中审核人员会对借款中客户资料的有效期、资料属性及客户的还款状态进行实时监控，对客户信息变动进行更新。保持与客户的畅通联系，避免失去联系导致借款产生风险。对异常客户转入贷后管理系统。</div>\r\n    <div class="lca_coninfo">贷后管理：<br />\r\n如果用户逾期未归还贷款，贷后管理部门将第一时间通过短信、电话等方式提醒用户进行还款，如果用户在5天内还未归还当期借款，p2p信贷将会联系该用户的紧急联系人、直系亲属、单位等督促用户尽快还款。如果用户仍未还款，交由专业的高级催收团队与第三方专业机构合作进行包括上门等一系列的催收工作，直至采取法律手段。</div>', 10, 1359308334, 1360023834, 0, 1, '', 0, 0, 630, 52, '', '', '', '', '', ''),
(40, '关于p2p信贷', '', '<div class="b">	关于p2p信贷</div>\r\n<div>   p2p信贷(fanwe.com)是中国领先的个人对个人借贷平台(P2P lending)。p2p借贷为有资金需求和理财需求的个人搭建了一个安全、透明、稳定、高效的网络平台，以个人对个人（P2P）的方式解决借贷双方的资金需求及理财需求。用户可以在p2p借贷上获得信用评级、发布贷款请求，满足个人的资金需要；也可以把自己的闲余资金通过p2p借贷出借给信用良好的贷款者，在帮助他人的同时获得良好的资金回报率。 </div>\r\n<div class="b">	p2p信贷的起源</div>\r\n<div>	p2p信贷即p2p借贷，p2p借贷的另一种解释是P2P小额贷款，是一种将小额的资金聚集起来借贷给有资金需求人群的一种商业模式。由2006年“诺贝尔和平奖”得主尤努斯教授（孟加拉国）首创。20世纪90年代以来，小额信贷在世界上很多国家兴起，形成了众多发展模式，并取得了很大成功，目前，世界上比较著名的网络小额贷款服务平台有Prosper、Zopa、Lending CLub等机构。</div>\r\n<div class="b">	p2p信贷如何收费</div>\r\n<div>	<a href="./index.php?ctl=aboutfee" target="_blank">见费用</a>（其它页面）</div>\r\n<div class="b">	在p2p信贷&nbsp;平台上的借贷受法律保护么</div>\r\n<div>	<a href="./index.php?ctl=aboutlaws" target="_blank">见政策法规</a>（其它页面）</div>\r\n<div class="b">p2p信贷的年利率范围是怎么规定的</div>\r\n<div>p2p信贷目前的利率范围为6 %-24%。在p2p信贷平台上借贷的最高年利率设定为同期银行贷款年利率的4倍。且随着银行贷款利率的调整，p2p信贷&nbsp;的利率上限也将随之调整。</div>\r\n<div>	注：</div>\r\n<div>	1.&nbsp;p2p信贷&nbsp;的利率的调整会在商业银行贷款年利率调整后1个月内进行调整。</div>\r\n<div>	2. 在利率调整之前的成功的借款不受调整的影响。</div>\r\n<div class="b">	用户资料的隐私和安全如何保证</div>\r\n<div>   保护用户的隐私和数据安全是p2p信贷&nbsp;最重要的责任之一。在传输层中,我们采用加密数据进行传输以防止网络分包被截获造成数据泄露。用户的所有的信息都储存在由防火墙保护的服务器里，这些安全防护措施都是7*24小时不间断运转的。数据根据敏感性的不同，以128位或256位的形式用SSL加密。另外，p2p信贷&nbsp;还启用了侵扰监测系统来监测那些内部和外部易受侵扰的路径，并运用其他一些人工措施来加强保护用户数据的安全。</div>\r\n<div class="b">	我的借款会不会受p2p信贷&nbsp;运营变动而变动</div>\r\n<div>p2p信贷及其运营公司的任何变动，均不影响已通过p2p信贷&nbsp;所达成的任何贷款协议的合法性、有效性。借款人有义务继续按照贷款协议的约定按时、足额偿还理财人的贷款本金和利息。否则理财人有权依据贷款合同的约定采取必要的法律手段追究借款人的法律责任。</div>', 14, 1359854853, 1359958367, 0, 1, '', 0, 0, 1246, 2, '', '', '', '', '', ''),
(41, '常用名词解释', '', '<div class="b">	借款人：</div>\r\n<div>	也称贷款人，是指已经或准备在网站上进行贷款活动的用户。</div>\r\n<div>   凡22周岁以上的中国大陆地区公民，都可以成为借款人。</div>\r\n<div class="b">	理财人：</div>\r\n<div>	也称投资人，是指已经或准备在网站上进行出借活动的用户。</div>\r\n<div>   凡18周岁以上的中国大陆地区公民，都可以成为理财人。 </div>\r\n<div class="b">	借款列表：</div>\r\n<div>	当借款人成功发布一个借款请求时，我们将包含各种贷款信息的该请求称为一个借款列表。 </div>\r\n<div class="b">	招标：</div>\r\n<div>	是指一个借款人发出一个贷款请求，即创建一个借款列表的行为。 </div>\r\n<div class="b">	投标：</div>\r\n<div>   是指理财人将其账户内指定的金额出借给其指定的借款列表的行为。 </div>\r\n<div class="b" id="b_2">	满标：</div>\r\n<div>	是指一个借款列表在投标期限内足额筹集到所需资金。 </div>\r\n<div class="b">	放款：</div>\r\n<div>	指一个借款列表满标后且已符合放款标准，p2p借贷将把所筹资金打入借款人在p2p借贷的账户中。即成功贷款。</div>\r\n<div class="b">	流标：</div>\r\n<div>	是指一个借款列表的投标期限已过，但是贷款没有足额筹集齐，即贷款失败。 </div>\r\n<div class="b">	投标金额：</div>\r\n<div>	是指理财人对借款列表进行投标的金额。</div>\r\n<div class="b">	帐户总额：</div>\r\n<div>	指用户账户的所有金额（含冻结金额和可用金额）。</div>\r\n<div class="b">	可用金额：</div>\r\n<div>	是指用户可自由支配的金额。</div>\r\n<div class="b">	冻结金额：</div>\r\n<div>	用户对某借款列表进行投标后，在此列表的招标期结束之前，这部分投标金额将被锁定，“冻结金额”是指因这类型锁定金额的总额。如果列表放款，这部分金额将转给该列表的借款人；如果该列表流标，这部分金额将立即变为用户的可用金额。 </div>\r\n<div class="b" id="b_1">	等额本息：</div>\r\n<div>	定义：等额本息还款法是一种被广泛采用的还款方式，在还款期内，每月偿还同等数额的贷款(包括本金和利息)。借款人每月还款额中的本金比重逐月递增、利息比重逐月递减。 </div>\r\n<div>	其计算公式如下：</div>\r\n<div>	每月还款额=[贷款本金×月利率×（1+月利率）^还款总期数]÷[（1+月利率）^还款总期数-1]<br />\r\n因计算中存在四舍五入，最后一期还款金额与之前略有不同。</div>\r\n<div class="b">	什么是加权收益率</div>\r\n<div>	由于借款时间不定，p2p借贷采用加权平均的方式计算借出者的收益率，具体公式如下：</div>\r\n<div>	加权收益率 = (本金1*收益率1+本金2*收益率2+本金3*收益率3 + ......本金n*收益率n-坏账计提+罚息)/(本金1+本金2+本金3 + ......本金n)</div>\r\n<div>	注：</div>\r\n<div>	1. 此公式未计算可能的资金闲置期</div>', 14, 1359854868, 1359855699, 0, 1, '', 0, 0, 985, 1, '', '', '', '', '', ''),
(39, '避免私下交易', '', '<p>p2p信贷系统建议用户避免尝试私下交易。私下交易的约束力极低，不受《合同法》的保护，造成逾期的风险非常高，同时您的个人信息将有可能被泄漏，存在遭遇诈骗甚至受到严重犯罪侵害的隐患。 </p>', 11, 1359308588, 1359960317, 0, 1, '', 0, 0, 691, 54, '', '', '', '', '', ''),
(42, '贷款利率、期限、方式', '', '<div class="b">	贷款金额有限制吗</div>\r\n<div>	信用贷款金额最高为人民币100万元，信用审核员会根据您提交的p2p借贷认证材料情况给予您信用额度（即您可以申请贷款金额的上限）。<br />\r\n机构担保贷款与智能理财标贷款视合作机构资质及实际情况设定贷款金额。</div>\r\n<div class="b">	p2p信贷的贷款期限和还款方式 </div>\r\n<div>	目前信用贷款您可以选择的借款期限3个月、6个月、9个月、12个月、18个月、24个月 。还款方式是按月<a href="./help.html#b_1">等额本息</a>还贷。</div>\r\n<div class="b">	在p2p信贷贷款是否需要抵押、担保</div>\r\n<div>   不需要，在p2p信贷上的贷款都是以借款人的信用评级为基础的，不涉及到抵押物及其他人的担保，免去了繁杂的手续和可能由抵押物引起的纠纷。 </div>\r\n<div class="b">	作为借款人，我的贷款利率是如何确定的</div>\r\n<div>	借款用户可跟据自身情况，参考网站对各信用等级借款人设定的相应贷款利率下限及网站近期的成交贷款利率自行设定可接受的利率。在同等情况下，贷款利率越高的贷款，成功（<a href="./help.html#q2">满标</a>）的概率越大。</div>\r\n<div class="b">	如何查询我的贷款协议</div>\r\n<div>	1.	如果您已在网上成功的贷款贷款，您可以在网站上访问“我的p2p信贷”-“偿还贷款”-“贷款协议”；</div>\r\n<div>	2.	如果您已在网上成功的投标理财，您可以在网站上访问“我的p2p信贷”-“我的投资”-“回收中的贷款”-“贷款协议”；</div>\r\n<div>	3.	您也可以访问“我要贷款”-“工具箱”-查看“<a href="./borrow/toolsPage.action?type=tools_contact" target="_blank">贷款协议范本</a>”。</div>', 15, 1359856085, 1359963173, 0, 1, '', 0, 0, 0, 10, '', '', '', '', '', ''),
(43, '如何申请贷款', '', '<div class="b">	如何在p2p信贷上申请贷款</div>\r\n<div>	第一步：免费注册为p2p信贷用户<br />\r\n	第二步：填写个人信息、发布借款列表<br />\r\n	第三步：上传信用认证材料<br />\r\n	第四步：筹集并获得贷款<br />\r\n</div>', 15, 1359856109, 1359963208, 0, 1, '', 0, 0, 0, 9, '', '', '', '', '', ''),
(44, '发布借款列表', '', '<div class="b">	如何发布借款列表</div>\r\n<div>	借款人访问“我要贷款”，选择“申请贷款”，根据提示填写贷款信息，在确认无误后点击发布即可创建一条<a href="./lend/lendPage.action" target="_blank">借款列表</a>。</div>\r\n<div>	注：您通过p2p信贷认证后发布的相关信息越完整，资料越丰富，获得贷款的机会就会越高。</div>\r\n  <div class="b">	借款列表状态</div>\r\n<div>	借款人发布借款列表后，在未将合格的认证资料上传完毕并获得p2p信贷给出的信用等级和信用额度（全部通过四项必要信用认证）前，借款列表将处于“提交资料”状态，不能被任何理财人投标。在借款人全部通过四项必要信用认证且得到信用等级和信用额度后，借款列表将进入“马上投标”状态，即开始筹集贷款。</div>\r\n<div class="b">	是否可以修改已发布的借款列表</div>\r\n<div>	不可以。在用户发布借款列表之后，不可以对已发布的贷款进行修改。请用户在发布贷款时务必认真填写各项信息。</div>', 15, 1359856131, 1359963250, 0, 1, '', 0, 0, 0, 8, '', '', '', '', '', ''),
(45, '申请信用额度', '', '<div class="b">	什么是信用额度 </div>\r\n<div>	借款人在全部通过四项“必要信用认证”后，可以继续上传材料进行各项“可选信用认证”，在人人贷审核员完成对所提供材料的审核工作后，借款人会从人人贷获得一个相应的信用等级和信用额度。信用额度既是借款人单笔贷款的上限也是借款者累积尚未还清贷款的上限。例如，如果一个借款人信用额度为5万元，则在没有其他贷款的情况下，用户可以发布总额最高为5万元的贷款请求，也可以分多次发布贷款请求，但尚未还清贷款（以整笔贷款金额计算）的总额不得超过5万元。</div>\r\n<div class="b">	什么时候可以申请信用额度、如何申请</div>\r\n<div>	成为借款人后，您在上传认证资料进行各项信用认证后可以先得到一个信用额度暂不发布贷款列表，在您需要贷款的时候，用相应额度发布贷款需求。</div>', 15, 1359856145, 1359856463, 0, 1, '', 0, 0, 0, 7, '', '', '', '', '', ''),
(46, 'p2p信贷认证', '', '<div class="b">	借款人必要信用认证</div>\r\n<div>	贷款必须全部通过的认证项目，不可缺少。（为了保证审核效率，确保贷款用户尽快通过审核，我们将优先为四项必要认证材料上传齐全的用户提供审核服务。）。</div>\r\n<div style="padding-left:0px;"> <div class="b">	身份证认证</div>\r\n<div>	您上传的身份证扫描件需和您绑定的身份证一致，否则将无法通过认证。认证说明：<br />\r\n 1、请您上传您本人第二代身份证正、反两面照片。<br />\r\n 2、请确认您上传的资料是清晰的、未经修改的数码照片（可以是彩色扫描图片）。<br />\r\n<p style="font-weight:bold;">每张图片的尺寸不大于3M。</p>\r\n认证有效期： 永久</div>\r\n <div class="b">	工作认证 </div>\r\n<div>	您的工作状况是p2p信贷评估您信用状况的主要依据。请您填写真实可靠的工作信息。认证说明：<br />\r\n 上传资料说明：<br />\r\n如果您满足以下 1种以上的身份，例如：您有稳定工作，且兼职开淘宝店。我们建议您同时上传两份资料，这将有助于提高您的借款额度和信用等级 <p style="font-weight:bold;">1、 工薪阶层：</p>\r\n请上传以下资料的照片或扫描件：（建议两项或两项以上）<br />\r\na) 劳动合同。 <br />\r\nb) 加盖单位公章的在职证明。<br />\r\n c) 带有姓名及照片的工作证。<br />\r\n <p style="font-weight:bold;">2、 私营企业主:</p>\r\n请上传以下全部三项资料的照片或扫描件：<br />\r\n a) 企业的营业执照。 <br />\r\nb) 企业的税务登记证。 <br />\r\nc) 店面照片（照片内需能看见营业执照）。<br />\r\n <p style="font-weight:bold;">3、网商：</p>\r\n请上传以下资料的照片或扫描件：<br />\r\n a) 请上传网店主页和后台的截屏(需要看清网址）。<br />\r\n b) 支付宝（或其他第三方支付工具）的至少3张最近3个月的商户版成功交易记录的截屏图片。 <br />\r\nc) 营业执照（如果有的话提供，不是必须的）。 <br />\r\nd) 备注：如果是淘宝专职卖家，店铺等级必须为3钻以上（含3钻）。<br />\r\n 认证条件： 工薪阶层需入职满6个月，私营企业主和淘宝商家需经营满一年<br />\r\n 认证有效期： 6个月 <br />\r\n</div>\r\n<div class="b">	个人信用报告认证 </div>\r\n<div>个人信用报告是由中国人民银行出具，全面记录个人信用活动，反映个人信用基本状况的文件。本报告是p2p信贷了解您信用状况的一个重要参考资料。 您信用报告内体现的信用记录，和信用卡额度等数据，将在您发布借款时经p2p信贷工作人员整理，在充分保护您隐私的前提下披露给p2p信贷借出者，作为借出者投标的依据。<br />\r\n        认证说明： <br />\r\n1、上传您的个人信用报告原件的照片，每页信用报告需独立照相，并将整份信用报告按页码先后顺序完整上传。<br />\r\n 2、请确认您上传的资料是清晰的、未经修改的数码照片或扫描图片。 <br />\r\n认证条件： 信用记录良好 <br />\r\n认证有效期： 6个月 <br />\r\n<p style="font-weight:bold;">如何办理个人信用报告？</p>\r\n 办理个人信用报告，可由本人或委托他人到中国人民银行征信中心办理本人的信用报告，其中被委托人称为代理人。 <br />\r\n（一）本人查询信用报告 <br />\r\n携带本人有效身份证件原件及一份复印件（其中复印件留给征信分中心备查），到中国人民银行各地征信分中心查询。 有效身份证件包括：身份证（第二代身份证须复印正反两面）、军官证、士兵证、护照、港澳居民来往内地通行证、 台湾同胞来往内地通行证、外国人居留证等。 <br />\r\n（二）委托他人查询信用报告 <br />\r\n需要携带的材料有委托人及代理人双方的身份证件原件及复印件、授权委托书。其中身份证件复印件和授权委托书留给 征信分中心备查。委托书格式请与当地征信分中心联系取得。<br />\r\n 全国各地征信中心联系方式查询 <br />\r\n<a href="http://www.pbccrc.org.cn/kefuzhongxin_303.html" target="_blank">http://www.pbccrc.org.cn/kefuzhongxin_303.html</a><br />\r\n 认证有效期： 6个月 <br />\r\n</div>\r\n<div class="b">	收入认证 </div>\r\n您的银行流水单以及完税证明，是证明您收入情况的主要文件，也是p2p信贷评估您还款能力的主要依据之一。<br />\r\n认证说明： <br />\r\n上传资料说明：<br />\r\n如果您满足以下 1种以上的身份，例如：您有稳定工作，且兼职开淘宝店。<br />\r\n 我们建议您同时上传两份资料，这将有助于提高您的借款额度和信用等级。<br />\r\n <p style="font-weight:bold;">1、 工薪阶层：</p>\r\n<p>请上传以下一项或多项资料：<br />\r\n a) 最近连续六个月工资卡银行流水单的照片或扫描件，须有银行盖章，或工资卡网银的电脑截屏。<br />\r\n b) 最近连续六个月的个人所得税完税凭证。 <br />\r\nc) 社保卡正反面原件的照片以及最近连续六个月缴费记录（注：可在社保网站查询到为准）。<br />\r\n d) 如果工资用现金形式发放，请提供近半年的常用银行储蓄账户流水单，须有银行盖章，或工资卡网银的电脑截屏。 <br />\r\n</p>\r\n<p style="font-weight:bold;">2、 私营企业主:</p>\r\n请上传以下一项或多项资料的照片或扫描件：<br />\r\n a) 最近连续六个月个人银行卡流水单，须有银行盖章，或网银的电脑截屏。 <br />\r\nb) 最近连续六个月企业银行流水单，须有银行盖章；或近半年企业的纳税证明。<br />\r\n <p style="font-weight:bold;">3、 网商：</p>\r\n请上传以下全部两项资料的照片或扫描件：<br />\r\n a) 最近连续六个月个人银行卡流水单，须有银行盖章，或网银的电脑截屏。<br />\r\nb) 如果是淘宝商家请上传近半年淘宝店支付宝账户明细的网银截图。 <br />\r\n认证条件： 收入需较稳定，如果是私营企业主及淘宝商家月均流水需在20000以上 <br />\r\n认证有效期： 6个月 <br />\r\n如何办理银行流水单？ <br />\r\n银行流水单是银行卡最近一段时间内的资金交易记录，是确认借入者收入状况的重要证明，银行流水单 是p2p借贷用以评价借入者还款能力的重要凭证之一。 <br />\r\n<p style="font-weight:bold;">办理流程</p>\r\n 前往最近的工资卡所在银行，提供工资卡及本人身份证原件，要求银行打印工资卡最近半年的流水单。<br />\r\n 如何办理个人所得税完税证明？<br />\r\n一、委托公司会计代办 <br />\r\n联系所在公司（负责申报个人所得税）会计，委托会计办理需提交纳税人有效身份证件原件及复印件、受托人有效身份证件原件及 复印件及委托协议原件，并填写《开具个人所得税完税证明申请表》即可。<br />\r\n 二、本人办理 <br />\r\n1、向所在公司会计咨询公司进行缴税的税务所。<br />\r\n 2、本人携带有效身份证件原件及复印件，前往公司缴税的税务所，填写《开具个人所得税完税证明申请表》即可领取完税证明。 <br />\r\n<br />\r\n                              </div>\r\n    <div class="b">	可选信用认证 </div>\r\n您可以选择上传的认证项目，只要通过了这些可选信用认证，将会提高您的“信用等级”和“信用额度” 。 <br />\r\n<div style="padding-left:0px;"> <div class="b">房产证明 </div>\r\n房产证明是证明借入者资产及还款能力的重要凭证,p2p信贷会根据借款者提供的房产证明给与借入者一定的信用加分。 <br />\r\n 认证说明： 1、请上传以下任意一项或多项资料。  <br />\r\na) 购房合同。  <br />\r\nb) 银行按揭贷款合同。 <br />\r\n c) 房产局产调单及收据。 <br />\r\n 2、请确认您上传的资料是清晰的、未经修改的数码照片或扫描图片。 <br />\r\n认证条件： 必须是商品房  <br />\r\n每张图片的尺寸不大于1.5M。 <br />\r\n 认证有效期： 永久  <br />\r\n<div class="b">购车证明 </div>\r\n购车证明是证明借入者资产及还款能力的重要凭证之一，p2p信贷会根据借入者提供的购车证明给与借入者一定的信用加分。         <br />\r\n认证说明：  <br />\r\n1、请上传您所购买车辆行驶证原件的照片。  <br />\r\n2、请上传您和您购买车辆的合影（照片须体现车牌号码）。  <br />\r\n3、请确认您上传的资料是清晰的、未经修改的数码照片或扫描图片。  <br />\r\n认证有效期： 永久  <br />\r\n<div class="b">结婚证明</div>\r\n 借入者的婚姻状况的稳定性，是p2p信贷考核借款人信用的评估因素之一，通过p2p信贷结婚认证，您将获得一定的信用加分。  <br />\r\n认证说明： 1、请您上传以下资料  <br />\r\n1) 您结婚证书原件的照片 <br />\r\n 2) 您配偶的身份证原件的照片。如果持有第二代身份证，请上传正反两面  <br />\r\n照片。如果持有第一代身份证，仅需上传正面照片。  <br />\r\n3) 您和配偶的近照合影一张  <br />\r\n2、请确认您上传的资料是清晰的、未经修改的数码照片或扫描图片。  <br />\r\n认证条件： 您的配偶同意您将其个人资料提供给p2p借贷  <br />\r\n认证有效期： 永久  <br />\r\n<div class="b">学历认证 </div>\r\n借出者在选择借款列表投标时，借入者的学历也是一个重要的参考因素。为了让借出者更好、更快地相信您的学历是真实的，强烈建议您对学历进行在线验证。  <br />\r\n学历认证方法：  <br />\r\n一、2001年至今获得学历，需学历证书编号 <br />\r\n1、点击 <a href="http://www.chsi.com.cn/xlcx/" target="_blank">网上学历查询。</a>  <br />\r\n2、选择“零散查询”。  <br />\r\n3、输入证书编号、查询码（通过手机短信获得，为12位学历查询码）、姓名、以及验证码进行查询。  <br />\r\n4、查询成功后，您将查获得《教育部学历证书电子注册备案表》。  <br />\r\n5、将该表右下角的12位在线验证码<a href="./public/images/xueli_1.jpg" target="_blank">（见样本图01）</a>，输入下面的文本框。  <br />\r\n6、点击提交审核。  <br />\r\n二、1991年至今获得学历，无需学历证书编号 <br />\r\n1、点击 <a href="http://www.chsi.com.cn/xlcx/" target="_blank"> 网上学历查询</a>。  <br />\r\n2、选择“本人查询”。  <br />\r\n3、注册学信网账号。  <br />\r\n4、登录学信网，点击“学历信息”。  <br />\r\n5、选择您的最高学历，并点击“申请验证报告”（申请过程中，您需通过手机短信获得12位学历查询码，此查询码与p2p借贷所需验证码不同）。  <br />\r\n6、申请成功后，您将获得12位在线验证码<a href="./public/images/xueli_2.jpg" target="_blank">（见样本图02）</a>  <br />\r\n7、将12位在线验证码输入下面的文本框  <br />\r\n8、点击提交审核  <br />\r\n认证条件： 大专或以上学历（普通全日制）  <br />\r\n认证有效期： 永久  <br />\r\n技术职称认证  <br />\r\n技术职称是经专家评审、反映一个人专业技术水平并作为聘任专业技术职务依据的一种资格，不与工资挂钩，是p2p信贷考核借款人信用的评估因素之一，通过p2p信贷技术职称认证证明，您将获得一定的信用加分。  <br />\r\n认证说明：  <br />\r\n1、请上传您的技术职称证书原件照片。  <br />\r\n2、请确认您上传的资料是清晰的、未经修改的数码照片或扫描图片。 <br />\r\n认证条件： 国家承认的二级及以上等级证书。例如律师证、会计证、工程师证等  <br />\r\n每张图片的尺寸不大于1.5M。  <br />\r\n认证有效期： 永久  <br />\r\n<div class="b">视频认证 </div>\r\n什么是视频认证？只有通过视频认证您才能获得贷款，您只需要在视频认证页面上传您本人的视频，并提交，即可申请视频认证。您也可以选择与p2p信贷客服在线上进行视频认证。&nbsp;</div>\r\n<div style="padding-left:0px;">认证说明：  <br />\r\n1、视频中诵读内容请按如下文字诵读： 我是 ***，我在p2p信贷的用户名是***，我的身份证号是 ***********************，现在我正在做p2p信贷的视频确认。我在此做出以下承诺：我愿意接受p2p信贷的使用条款和借款协议；我提供给p2p信贷的信息及资料均是真实有效的；我愿意对我在p2p信贷上的行为承担全部法律责任；在我未能按时归还借款时，我同意p2p信贷采取法律诉讼、资料曝光等一切必要措施。&nbsp;</div>\r\n<div style="padding-left:0px;"> <span style="color:red;">2、读完声明后，请您将身份证正面(有身份证号)对准摄像头，并保持5秒</span><br />\r\n3、您可以联系右侧的在线客服进行视频确认。如果您选择在线进行视频确认，在做完以上声明后，我们的视频审核员会与您进行几分钟简单的交流。<br />\r\n4、请按上述内容要求录制视频，如不符合要求均不能通过视频认证 <br />\r\n(1)上传视频认证文件大小 不得超过50M<br />\r\n(2)请上传真实有效的本人的视频。<br />\r\n(3)视频文件格式可以是RMVB、WMV 或 AVI类型的文件。<br />\r\n(4).视频认证必须图像清晰，声音清楚<br />\r\n(5).视频认证必须衣冠整洁，禁止出现抽烟，赤裸等形象<br />\r\n只有通过视频认证您才能获得贷款，您只需要在视频认证页面将视频文件发送至与您对应客服的邮箱，并勾选''使用邮件发送''后提交,即可进行视频认证  <br />\r\n认证有效期： 永久  <br />\r\n<div class="b">手机详单认证 </div>\r\n手机流水单是最近一段时间内的详细通话记录，是p2p借贷用以验证借入者真实性的重要凭证之一。您的手机详单不会以任何形式被泄露。   <br />\r\n认证说明：  <br />\r\n1、请您上传您绑定的手机号码最近3个月的手机详单原件的照片。如详单数量较多可分月打印并上传  <br />\r\n每月前5日部分（每月详单均需清晰显示机主手机号码）。  <br />\r\n2、请确认您上传的资料是清晰的、未经修改的数码照片（不可以是扫描图片）。  <br />\r\n每张图片的尺寸不大于1.5M。  <br />\r\n认证有效期： 永久  <br />\r\n如何办理手机详单  <br />\r\n前往最近的手机运营商营业厅，提供手机服务密码或机主身份证明即可打印。 <br />\r\n<div class="b">居住地证明</div>\r\n 居住地的稳定性，是p2p信贷考核借款人的主要评估因素之一，通过p2p信贷居住地证明，您将获得一定的信用加分。&nbsp;</div>\r\n<div style="padding-left:0px;">认证说明：  <br />\r\n1、请上传以下任何一项可证明现居住地址的证明文件原件的照片。  <br />\r\n1) 用您姓名登记的水、电、气最近三期缴费单；  <br />\r\n2) 用您姓名登记固定电话最近三期缴费单；  <br />\r\n3) 您的信用卡最近两期的月结单；  <br />\r\n4) 您的自有房产证明；  <br />\r\n5) 您父母的房产证明，及证明您和父母关系的证明材料。  <br />\r\n2、请确认您上传的资料是清晰的、未经修改的数码照片（不可以是扫描图片）。  <br />\r\n每张图片的尺寸不大于1.5M。  <br />\r\n认证有效期： 6个月  <br />\r\n<!-- <div class="b">实地审核申请</div>\r\n 实地审核申请是p2p借贷了解您信用状况的一个重要参考资料。您的实地审核申请通过审核后，将在您发布借款时经p2p借贷工作人员整理，在充分保护您隐私的前提下披露给p2p借贷借出者，作为借出者投标的依据。  <br/>\r\n申请资格：  <br/>\r\n1、目前实地审核申请仅对经营类客户开放。  <br/>\r\n2、借款申请额在3万以上。  <br/>\r\n3、申请人必须已经提交四项必要信用认证资料。  <br/>\r\n4、申请人名下有固定资产，经营时间满一年。 <br/>\r\n注：目前仅对北京六环以内地区开放  <br/>\r\n借款人认证资料说明  <br/>\r\np2p借贷"对资料的认证仅限于如下方式：  <br/>\r\n1. 对用户提交的书面资料的照片文件进行真实性审查。  <br/>\r\n2. 对用户上传的照片资料的内容与其申报的信息的一致性审查。  <br/>\r\n3. p2p借贷承诺在认证中保持中立、审慎的态度，但p2p借贷不对借款人的行为提供任何保证。  <br/>\r\n4. p2p借贷的认证不能避免出贷款项出现违约的风险，亦不免除借款人应当承担的各种责任。 <br/>\r\n --></div>', 15, 1359856171, 1390850304, 0, 1, '', 0, 0, 0, 6, '', '', '', '', '', ''),
(47, '认证项目说明', '', '<div class="b">p2p信贷对资料的认证仅限于如下方式：</div>\r\n<div>   1. 对用户提交的书面资料的照片文件进行真实性审查。</div>\r\n<div>	2. 对用户上传的照片资料的内容与其申报的信息的一致性审查。 </div>\r\n<div>   3. p2p信贷贷承诺在认证中保持中立、审慎的态度，但P2P借贷不对借款人的行为提供任何保证。</div>\r\n<div>   4. p2p信贷的认证不能避免出贷款项出现违约的风险，亦不免除借款人应当承担的各种责任。</div>', 15, 1359856206, 1359963486, 0, 1, '', 0, 0, 0, 5, '', '', '', '', '', ''),
(48, '信用等级和信用额度', '', '<div class="b">	什么是信用等级 ：</div>\r\n<div>p2p信贷认证体系包括信用等级和信用额度。信用等级是借款人的信用属性，也是理财人判断借款人违约风险的重要依据之一。通常来讲借款人信用等级越高，其违约率越低，相应的其贷款成功率越高。信用等级由认证分数转化而来，具体请参考信用等级的分数区间。目前认证等级的等级由高到低分为：AA、A、B、C、D、E、HR。</div>\r\n<div class="b">	信用等级的分数区间：</div>\r\n<div>	每个信用等级都有一个信用分数的范围，具体可以见下表：</div>\r\n<div>	<table width="692" border="0" cellspacing="1" style="text-align:center;background:#000;">		<tbody><tr style="background:#fff;">			<td width="15%">信用等级</td>\r\n 			<td width="10%">HR</td>\r\n			<td width="10%">E</td>\r\n			<td width="10%">D</td>\r\n			<td width="10%">C</td>\r\n			<td width="10%">B</td>\r\n			<td width="10%">A</td>\r\n			<td width="10%">AA</td>\r\n		</tr>\r\n		<tr style="background:#fff;">			<td>分数区间</td>\r\n			<td>0-99</td>\r\n			<td>100-109</td>\r\n			<td>110-119</td>\r\n			<td>120-129</td>\r\n			<td>130-144</td>\r\n			<td>145-159</td>\r\n			<td>160+</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n<div class="b">	什么是信用额度</div>\r\n<div>	借款人在全部通过四项“必要信用认证”后，可以继续上传材料进行各项“可选信用认证”，在p2p信贷审核员完成对所提供材料的审核工作后，借款人会从p2p信贷获得一个相应的信用等级和信用额度。信用额度既是借款人单笔贷款的上限也是借款者累积尚未还清贷款的上限。例如，如果一个借款人信用额度为5万元，则在没有其他贷款的情况下，用户可以发布总额最高为5万元的贷款请求，也可以分多次发布贷款请求，但尚未还清贷款（以整笔贷款金额计算）的总额不得超过5万元。</div>\r\n<div class="b">	如何获得信用等级及信用额度</div>\r\n<div>	访问“我要贷款”—“p2p信贷认证”，根据提示完成四项“必要信用认证”及用户根据自身情况可自己可完成的“可选信用认证”后，即可获得信用等级及信用额度。</div>\r\n<div class="b">	如何查看我的信用等级</div>\r\n<div>	访问“我的p2p信贷”——“我的p2p信贷”——“p2p信贷认证”，您就可以看到您的信用等级，及您进行的各种信用认证的情况。</div>\r\n<div class="b">	如何提高我的信用等级（分数）</div>\r\n<div>   您可以通过申请“可选信用认证“来提高您的信用分数。另外您在p2p信贷网站上良好的借贷记录也会增加您的信用分数。</div>\r\n<div style="font-style:italic;">	注：提高信用等级可以增加理财人贷款成功的概率，提高贷款成功率，我们建议借款人在贷款前根据实际情况尽量多完成信用认证。</div>\r\n<div class="b">	为什么我获得了信用等级与信用额度，但我无法申请贷款</div>\r\n<div>	您无法申请贷款的原因可能是由于没有全部通过四项“必要信用认证”。<br />\r\n	如果还有问题请在工作时间联系在线客服或拨打网站服务热线：400-888-8888</div>\r\n<div class="b">	我某一项信用认证被驳回，是否可以进行重新认证？</div>\r\n<div>   如果您在某项信用认证中，资料提交发生错误或资料需要更新，您可以重新进行该项信用认证。</div>\r\n   <div class="b">   为什么我提交的附加信用认证，3个工作日后还没有收到结果？</div>\r\n<div>  只有当您通过全部的必要信用认证后，p2p信贷才会认证您的可选信用认证信息。所以您没有收到结果的原因可能是您没有通过全部的必要信用认证。</div>', 15, 1359856220, 1359960209, 0, 1, '', 0, 0, 0, 4, '', '', '', '', '', ''),
(49, '视频确认、贷款成功', '', '<div class="b">	什么是视频确认</div>\r\n<div>	为了保证贷款的真实有效，借款人在发布借款需求后需及时进行视频确认。视频确认的内容包括：借款人对自我身份的认证及宣读贷款承诺书。</div>\r\n<div class="b">	视频确认的时间及形式</div>\r\n<div>	形式1：在贷款列表出于资料审核状态（“等待材料”状态），在借款列表进入筹款阶段（“马上投标”状态），借款人可与对应信用审核员约定视频确认时间，进行时时视频通话进行确认。</div>\r\n<div>	形式2：在借款列表进入筹款阶段（“马上投标”状态），借款人可按网站规定格式、大小及内容自行录制确认视频后上传至该地址，上传后等待信用审核工作人员查看并予以最终确认。</div>\r\n<div class="b">	什么是贷款成功</div>\r\n<div>	理财人发布借款列表后，须至少通过四项必要信用认证并，此后借款人会得到相应的信用等级和信用额度，此时借款人的借款列表可被理财人投标，即开始筹集贷款。当借款列表满标且借款人通过视频确认后，p2p信贷信审工作组会对借款列表做最后的判定，当您的借款列表得到放款批准时即为贷款成功，您所筹集的资金将划入您的p2p信贷账户中。</div>\r\n <div class="b">	贷款成功后如何提取现金</div>\r\n<div>	当一个借款列表得到放款批准即为贷款成功后，p2p信贷将会将您筹集到的资金划入您的p2p借贷账户，您可在网站上点击“我的p2p信贷”—“充值提现”，填写提现信息。资金将在申请提现后1~2个工作日内到达您指定的银行账户。为了保障您的资金尽快到账，请您使用提现页面推荐的全国性银行申请提现。</div>', 15, 1359856230, 1359960125, 0, 1, '', 0, 0, 0, 3, '', '', '', '', '', ''),
(50, '还款', '', '如何还款\r\n<div>\r\n	若账户中余额大于当期还款在还款日系统会代贷款者自动扣缴当期还款，若借款人需要手动还款，请访问“我的p2p信贷”——“贷款管理”——“偿还贷款”。\r\n</div>\r\n\r\n<input type="button" name="Submit1" value="Submit1" onclick="APP.onConfirm();" class="BOTTOM" style="background-color:#000000;border-width:0px;" />\r\n<div>\r\n	若账户余额不足支付当期还款，可以通过网银为<a href="./#q18" target="_self">账户充值</a>。\r\n</div>\r\n<div class="b">\r\n	借入者能否提前还款\r\n</div>\r\n<div>\r\n	1.	借款人可以随时进行提前还款。具体的操作方法是访问“我的p2p信贷”——“贷款管理”——“偿还贷款”，点击右上角的“还清此笔贷款”。\r\n</div>\r\n<div>\r\n	2.	提提前还款的用户需要支付给理财人贷款剩余本金的1%作为违约金，不用再支付后续的利息及管理费用。公式如下：\r\n</div>\r\n<div>\r\n	提前还款应还金额= 剩余本金+ 当期本息及账户管理费+提前还款违约金\r\n</div>\r\n<div>\r\n	请用户注意提前归还部分贷款不视为提前还款，仍需支付全部贷款利息及账户管理费。\r\n</div>', 15, 1359856260, 1435006804, 0, 1, '', 0, 0, 0, 2, '', '', '', '', '', ''),
(51, '逾期还款', '', '<div class="b">\r\n	如果逾期还款，会有什么惩罚\r\n</div>\r\n<div>\r\n	如果逾期还款，借款人要承担罚息与逾期后的管理费用，并会被扣去相应的信用分数。所以p2p信贷强烈建议用户避免逾期还款，一旦发生逾期请尽快还清贷款。\r\n</div>\r\n<div class="b">\r\n	逾期还款超过30天，会造成什么样的后果\r\n</div>\r\n<div>\r\n	若用户违约逾期还款超过30天，p2p信贷有权将该用户的有关资料正式备案在“不良信用记录”，列入全国个人信用评级体系的黑名单（“不良信用记录”数据将为银行、电信、担保公司、人才中心等有关机构提供个人不良信用信息）此不良记录将保存7年。同时保留对该用户采取法律措施的权利，由此所产生的所有法律后果和费用（包括但不限于律师费）将由该用户来承担。\r\n</div>\r\n<div class="b">\r\n	贷款逾期后的罚息如何计算\r\n</div>\r\n<div>\r\n	自逾期开始之后，正常利息停止计算。按照下面公式计算罚息：\r\n</div>\r\n<div>\r\n	罚息总额 = 逾期本息×对应罚息利率×逾期天数；\r\n</div>\r\n<div>\r\n	<table width="692" border="0" cellspacing="1" style="text-align:center;background:#000;" class="ke-zeroborder">\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n					逾期天数\r\n				</td>\r\n				<td>\r\n					1—30天\r\n				</td>\r\n				<td>\r\n					31天以上\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					罚息利率\r\n				</td>\r\n				<td>\r\n					0.05%\r\n				</td>\r\n				<td>\r\n					0.1%\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>\r\n<div class="b">\r\n	贷款逾期后的管理费用如何计算\r\n</div>\r\n<div>\r\n	自逾期开始之后，正常管理费用停止计算。按照下面公式计算：\r\n</div>\r\n<div>\r\n	逾期后管理费总额=逾期本息×对应逾期管理费率×逾期天数；\r\n</div>\r\n<div>\r\n	<table width="692" border="0" cellspacing="1" style="text-align:center;background:#000;" class="ke-zeroborder">\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n					逾期天数\r\n				</td>\r\n				<td>\r\n					1—30天\r\n				</td>\r\n				<td>\r\n					31天以上\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					逾期管理费率\r\n				</td>\r\n				<td>\r\n					0.1%\r\n				</td>\r\n				<td>\r\n					0.5%\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>\r\n<input type="button" name="Submit1" value="Submit1" onclick="APP.onConfirm();" class="BOTTOM" style="background-color:#000000;border-width:0px;" />', 15, 1359856279, 1435003560, 0, 1, '', 0, 0, 0, 1, '', '', '', '', '', ''),
(52, '费用、合同、理财金额限', '', '<div class="b">	理财人在p2p信贷上投资需要交哪些费用</div>\r\n<div>	理财人仅需向第三方支付平台（快钱、支付宝等）缴纳账户充值与提现的费用，p2p借贷对理财人不收取任何费用。详情请见“<a href="./index.php?ctl=aboutfee" target="_blank">费用</a>”。</div>\r\n<div class="b">	电子合同有效吗</div>\r\n<div>	我国新合同法第十一条规定: 书面形式合同是指合同书、信件和数据电文(包括电报、电传、传真、电子数据交换和电子邮件)等可以有形地表现所载内容的形式。因此电子合同属于书面形式的合同一种，是受到法律保护的。另外p2p信贷平台中的合同文本都由经济法律师起草的，保证了经过这个平台的交易是具备法律效力的。</div>\r\n<div class="b">	理财人的理财金额是否有限制 </div>\r\n<div>	理财人的理财金额没有上限。</div>\r\n<div class="b">p2p信贷现在是否提供线下借贷服务</div>\r\n<div>	目前p2p信贷暂不提供线下借贷业务，用户需在网上完成交易。</div>', 16, 1359861477, 1359959914, 0, 1, '', 0, 0, 0, 5, '', '', '', '', '', ''),
(53, '开始理财', '', '<div class="b">	如何开始理财</div>\r\n<div>	访问“我要理财”— 根据提示，填写相应的信息。通过“身份证绑定”、“手机绑定”，即可成为理财人。</div>\r\n<div class="b">	理财人为什么要做身份绑定？有什么好处</div>\r\n<div>	为了保障理财人资金的安全性，将p2p信贷账号实名绑定，以及保证理财人是年满18岁的具有完全民事行为能力的中国公民，从而保证借贷合同的有效性，p2p信贷要求所有理财人必须通过身份证认证。身份认证过程简便，且认证信息只用于核实用户身份，P2P借贷对于所有资料将严格保密。</div>', 16, 1359861495, 1359959861, 0, 1, '', 0, 0, 0, 4, '', '', '', '', '', ''),
(54, '投标', '', '<div class="b">	投标前我需要注意的事项：</div>\r\n<div>	1、认真阅读该借款列表的详细信息（包括贷款金额，利息率，贷款期限、贷款者信用等级等），以确定您所要投的标符合您的风险承受能力和所要求的投资回报率。</div>\r\n<div>	2、应知道若您所投标的借款人发生违约，违约损失需要由该标的所有理财人共同承担。</div>\r\n<div>	3、投标前请您核实自己将要理财的金额，确认无误后再进行操作。</div>\r\n<div>	4、您也可以参考网站的“<a href="./index.php?ctl=usagetip" target="_blank">使用技巧</a>”。</div>\r\n<div class="b">	如何分散投资风险</div>\r\n<div>	1.	请尽量分散您的投资，这样可以降低单一借款人违约对您的投资收益的影响。例如您可以把5000元借给10个借款人。</div>\r\n<div>	2.	请在同等收益的情况下投标给<a href="./index.php?ctl=helpcenter#q48">信用等级</a>较高的借款人。</div>\r\n<div>	3.	浏览网站关于<a href="./index.php?ctl=usagetip" target="_blank">使用技巧</a>的文章。</div>\r\n<div class="b">	信用等级的高低代表什么</div>\r\n<div>	一般情况下，用户信用等级越高，表明个人信用越好，借款违约的可能性越小。</div>\r\n<div class="b">	投标后是否可以取消</div>\r\n<div>	您在投标后不允许取消，若此标<a href="./index.php?ctl=helpcenter#q41">满标</a>并放款后，您账户上的冻结金额自动将转入该标借款人账户。若此标<a href="./index.php?ctl=helpcenter#q41">流标</a>，则您账户上的<a href="./index.php?ctl=helpcenter#q41">冻结金额</a>自动转为用户可用金额。</div>', 16, 1359861510, 1359959837, 0, 1, '', 0, 0, 0, 3, '', '', '', '', '', '');
INSERT INTO `%DB_PREFIX%article` (`id`, `title`, `icon`, `content`, `cate_id`, `create_time`, `update_time`, `add_admin_id`, `is_effect`, `rel_url`, `update_admin_id`, `is_delete`, `click_count`, `sort`, `seo_title`, `seo_keyword`, `seo_description`, `uname`, `sub_title`, `brief`) VALUES
(55, '收取还款', '', '<div class="b">	如何收取还款</div>\r\n<div>	借款人在规定的还款时间内将钱充值到与p2p信贷合作的第三方支付平台上，p2p信贷系统会发送邮件通知所有理财人。理财人可按个人需求选择<a href="./index.php?ctl=helpcenter#q51">提现</a>，或继续投资（出借）。</div>\r\n<div>	注：借款人也可能提前偿还全部贷款或者在到期日前手动提前偿还贷款，请理财人注意查收p2p信贷发出的通知。</div>\r\n<div class="b">	借款人能否提前还款 </div>\r\n<div>	借款人可以提前偿还贷款，如果借款人提前偿还全部贷款，需要额外支付给理财人贷款剩余本金的1%作为违约金，不用再支付后续的利息及管理费用。公式如下：</div>\r\n<div>	提前还款应还金额= 剩余本金+ 当期本息及账户管理费+提前还款违约金</div>', 16, 1359861523, 1359959819, 0, 1, '', 0, 0, 0, 2, '', '', '', '', '', ''),
(56, '坏账', '', '<div class="b">	借款人逾期后再还款，理财人可以收到罚息吗</div>\r\n<div>	是的，请参考 “<a href="./index.php?ctl=helpcenter#q51">贷款逾期后的罚息如何计算</a>”。</div>\r\n<div class="b">	借款人逾期还款，p2p信贷将如何帮助理财人催收贷款</div>\r\n<div>p2p信贷有一套完善的催收机制，通过电话短信提醒、上门拜访、法律诉讼等多种方式，有效的保证了平台上绝大部分借款人的及时还款。延迟还款的借款人需按约定交纳罚息和违约金。</div>', 16, 1359861534, 1359959778, 0, 1, '', 0, 0, 0, 1, '', '', '', '', '', ''),
(57, '智能理财标', '', '<div class="b">	什么是智能理财标？</div>\r\n<div>	智能理财标是p2p信贷推出的全新理财产品系列。产品基于高保障的战略合作，精选大量质押、抵押贷款需求和供应链金融服务相关贷款需求供理财人选择。投资智能理财标，理财者的本金与利息将受到保障。回款方式与投资期限均更为灵活，当前智能理财标为每月还息，到期还本，之后还会逐步开发更具灵活性的系列化产品。在安全稳定、灵活便捷的前提下，保证了较高的理财收益。</div>\r\n<div class="b">	为什么智能理财标的额度为百万级别？</div>\r\n<div>	1、精挑渠道，细选借款用户，此类用户信用更优，还款能力更强；2、质押物、抵押物、供应链金融各环节等大幅增进借款人的信用级别，提高违约代价，同时p2p信贷与渠道合作有更强的处理此类贷款逾期的能力；3、日常实时监控更具保障力度。</div>\r\n<div class="b">	为什么说可以提高资金使用率？</div>\r\n<div>   因为智能理财标前期已经通过严格的审核流程，所以智能理财标满标当日即可放款，无需更多等待时间。并且智能理财标的回款方式更为灵活，本金回款更为集中（当前为每月还息，到期还本），省去了循环投标的操作，投资期间无需操心，坐享收益。</div>\r\n<div class="b">	如果智能理财标逾期，p2p信贷如何处理？</div>\r\n<div>	如果智能理财标发生逾期，但借款人在逾期的30天内进行了还款，借款人在偿还理财人应得利息的基础上，将额外支付罚息； 如果逾期30天后贷款人没有进行还款，在第31天时，p2p信贷风险准备金将赔付理财人应得的所有本金及利息，并额外赔偿30天（等待期）的利息予理财人，相应的，该标债权将由理财人转移至p2p信贷风险准备金。之后该债权收回的全部资金将归p2p信贷风险准备金所有。对于智能理财标，p2p信贷将收取年化1%-2%的服务费（不同合作渠道会有所不同）全部存于风险准备金账户用于p2p信贷智能理财本息保障计划。<br />\r\n	例：用户在5月1日获得贷款100万，年化利息为9%，借款期限3个月。理财人全体应在6月1日、7月1日得到利息7,500元，并在8月1日获得7,500+100万元（每月付息，到期还本）。如果贷款人在6月1日未按时还款，并一直没有偿还应还款项，理财人手中债权会在7月1日（逾期后第31天）转移到p2p借贷手中，并获得当月应得利息（7,500元）、额外赔偿的30天利息（7,500元）以及本金（100万元）。获赔的1,015,000元将根据理财人投资比例立即打到理财人的p2p借贷账户中。</div>\r\n<div class="b">	借款期限都有哪些选择？</div>\r\n<div>	经过科学的分析并进一步贴近贷款者及理财人的需求，智能理财标的期限目前最低至1个月，以自然月为单位，最高12个月，具有极强的流动性。后续的，更具灵活性的产品也会针对具体的实际贷款需求和理财人需求相应开发。</div>\r\n<div class="b">   什么是供应链金融？</div>\r\n<div>   供应链金融是指基于对供应链管理程度和核心企业信用资质的掌握，对供应链核心企业和上下游多个环节的企业提供的金融产品和服务。该种灵活的融资模式会根据特定产品供应链上的历史交易数据和贸易特性，以企业间贸易行为所产生的确定未来现金流为直接还款来源。</div>\r\n<div class="b">   应收账款保障产品是什么？</div>\r\n<div>   应收账款保障产品是p2p信贷智能理财标系列的供应链金融产品之一。该产品以供应链上下游企业间历史交易数据为审核依据，以借款企业特定账户中的应收账款作为保障。p2p信贷风险管理部门会严格定期监控该特定应收账款账户的资金流动情况，一旦借款用户逾期，该账户中的届时所有资金及未来待收资金将全部用于偿还所有未清偿本息。</div>\r\n<div class="b">   仓单保障产品是什么？</div>\r\n<div>   仓单保障产品是p2p信贷智能理财标系列的供应链金融产品之一。该产品以供应链上下游企业间物流环节的流通数据为审核依据，以借款企业在p2p信贷委托仓库内的在仓货物作为保障。p2p借贷风险管理部门会严格定期监控委托仓库内在仓货物流通及价格变动情况。一旦借款用户逾期，p2p信贷会在委托仓储方的协助下，对于在仓货物进行处置变卖，变卖后的资金将全部用于偿还所有未清偿本息。</div>', 17, 1359862633, 1359959753, 0, 1, '', 0, 0, 0, 4, '', '', '', '', '', ''),
(58, '机构担保标', '', '<div class="b">	什么是机构担保标？</div>\r\n<div>   是指p2p信贷的合作伙伴为相应的借款提供连带保证，并负有连带保证责任。所谓连带保证责任即连带保证人对债务人负连带责任，无论主债务人的财产是否能够清偿债务，债权人均可向保证人要求其履行保证义务。</div>\r\n<div class="b">p2p信贷如何选择合作或机构？</div>\r\n<div>	通过严格的考察，p2p信贷会选择具备丰富的个人信用审核经验、较长经营历史及雄厚的资金实力的机构合作展开该项业务。</div>\r\n<div class="b">p2p信贷有什么手段防范合作伙伴带来的风险？</div>\r\n<div>p2p信贷与合作伙伴签订了合作协议，一旦合作伙伴违背其应承担的连带保证责任，p2p信贷有权通过法律手段进行追偿，同时p2p信贷会通过自有的严格的审核系统对合作伙伴的相关业务进行双重审核，严控风险。</div>\r\n<div class="b">	机构担保标与网站个人发布的借款的区别是什么？</div>\r\n<div>   由于有合作伙伴为借款人提供担保，机构担保标能够为理财人提供本息保障；筹标时间为四天，缩短借款、理财人双方的资金流转周期；满标后立即放款，可提高审核效率和放款速度。</div>\r\n<div class="b">	如果机构担保标逾期，p2p信贷如何处理？</div>\r\n<div>	合作机构承担借款的连带保证责任，若此类借款逾期，合作机构将代借款人偿付此笔借款的本息及相关费用。</div>\r\n<div class="b">	借款人的资质如何审核？</div>\r\n<div>	借款人通过合作伙伴在全国各地的网点进行借款申请，由合作伙伴对其借款资质进行全面审核，审核内容包括但不限于借款人信用报告、收入、财产的资料审核和实地考察等，p2p信贷负责通过自己的风控手段进行复审。</div>', 17, 1359862671, 1359959612, 0, 1, '', 0, 0, 0, 3, '', '', '', '', '', ''),
(59, '实地认证标', '', '<div class="b">什么是“实地认证标”？</div>\r\n<div>   “实地认证标”是p2p信贷推出的一款全新产品。该产品延续了p2p信贷借贷求真务实的经营理念，在原有严格审核的基础上，增加了p2p信贷前端工作人员对借款人情况的实地走访、审核调查以及后续的贷中、贷后服务环节，进一步加强风险管理控制，达到了双重保障的效果。</div>\r\n<div class="b">“实地认证标”与“信用认证标”的区别是什么？</div>\r\n<div>“实地认证标”相对“信用认证标”增添了实地认证审核，进一步保障了理财用户资金安全；同时采用本息保障的赔付方式，使得您理财更加省心、放心。</div>\r\n<div class="b">   “实地认证标”如果产生坏账，将如何垫付？</div>\r\n<div>p2p信贷风险备用金将对此类产品的本金和利息提供双重保障。一旦该产品借款发生逾期，p2p信贷风险备用金将优先代借款人偿付此笔借款的本息及相关费用。</div>', 17, 1359862713, 1359959520, 0, 1, '', 0, 0, 0, 2, '', '', '', '', '', ''),
(60, '充值方式', '', '<div class="b">	如何给我的账户充值</div>\r\n<div>	<div>1.进入“我的p2p信贷-充值提现页面”，输入要充值的金额，点击充值按钮，将弹出国通付或快钱付款界面。</div>\r\n	<div>2.选择付款银行，点击确认无误按钮，按提示完成付款。</div>\r\n	<div>3.	付款后，显示成功付款后，跳转到p2p信贷充值页面，显示充值成功。</div>\r\n	<div>4.	您可以通过资金记录查看充值的金额及历史记录。</div>\r\n</div>', 18, 1359862775, 1359959426, 0, 1, '', 0, 0, 0, 3, '', '', '', '', '', ''),
(61, '如何充值', '', '<div class="b">	如何给我的账户充值</div>\r\n<div>	<div>1.进入“我的p2p信贷-充值提现页面”，输入要充值的金额，点击充值按钮，将弹出国付通或快钱付款界面。</div>\r\n	<div>2.选择付款银行，点击确认无误按钮，按提示完成付款。</div>\r\n	<div>3.	付款后，显示成功付款后，跳转到p2p信贷充值页面，显示充值成功。</div>\r\n	<div>4.	您可以通过资金记录查看充值的金额及历史记录。</div>\r\n</div>', 18, 1359862815, 1359959394, 0, 1, '', 0, 0, 0, 2, '', '', '', '', '', ''),
(62, '提现', '', '<div class="b">	如何提取现金</div>\r\n<div>	<div>您可以随时将您在“p2p信贷”账号中的可用余额申请提现到您现有的任何一家银行的账号上。 </div>\r\n	<div>注意：请确保您填写的银行账号的开户人姓名和您在p2p信贷上提供的身份证上的真实姓名一致，并提供一张可以申请提现的银行账号，否则提现无法成功。 </div>\r\n</div>\r\n<div class="b">	在申请取现时，如何填写正确的开户行支行名称</div>\r\n<div>	<div>用户在申请取现时，一定要确保自己填写的开户行支行名称正确。 </div>\r\n	<div>一般的开户行支行名称都是由 xx银行+xx分行+xx支行 组成的。 </div>\r\n	<div>如：</div>\r\n	<div>招商银行上海分行新客站支行 </div>\r\n	<div>工商银行四川省攀枝花市分行 </div>\r\n	<div>农业银行深圳分行长城支行 </div>\r\n	<div>交通银行北京崇文门支行 </div>\r\n	<div>如果用户不清楚开户行支行名称，可以打电话到当地所在银行的营业网点询问或者登录该银行网站查找。 </div>\r\n</div>\r\n<div class="b">	为什么我申请取现失败？ </div>\r\n<div>	<div>造成您取现失败的原因可能有以下几种： </div>\r\n	<div> ·&nbsp;p2p信贷账号未绑定本人身份证 </div>\r\n	<div> · 银行开户行信息错误 </div>\r\n	<div> · 银行账号/户名错误，或是账号和户名不符 </div>\r\n	<div> · 使用信用卡提现 </div>\r\n	<div> · 银行账户冻结或正在办理挂失 </div>\r\n	<div>如果遇到以上情况，我们会在收到支付机构转账失败的的通知后解除您的资金冻结（手续费不退还），请您不必担心资金安全。 </div>\r\n</div>', 18, 1359862845, 1359959349, 0, 1, '', 0, 0, 0, 1, '', '', '', '', '', ''),
(63, '注册登录', '', '<div class="b">	如何成为p2p信贷注册用户</div>\r\n<div>	<div>1.	进入p2p信贷首页，点击右上角“免费注册”按钮。</div>\r\n	<div>2.	根据提示信息，填写您的注册邮箱、密码，点击“免费注册”。</div>\r\n	<div>3.	注册邮箱为用户的用户名，为后续接收站内消息及账单的唯一渠道，注册后此邮箱不可修改。</div>\r\n</div>\r\n<div class="b">	如何登录p2p信贷</div>\r\n<div>	<div>注册成为p2p信贷用户后,您就可以使用账号登录p2p借贷了：</div>\r\n	<div>1.	进入p2p信贷首页，点击右上角“登录”按钮。</div>\r\n	<div>2.	输入您的账号(电子邮件)及密码，点击“登录”按钮。</div>\r\n</div>\r\n<div class="b">	如何找回我的密码</div>\r\n<div>	<div>如果您遗忘了密码，可以在网站用户登录页面，点击“忘记密码了”按钮，填写自己的Email地址信息找回密码。</div>\r\n	<div>1.	点击首页“登录”---点击“忘记密码”。</div>\r\n	<div>2.	填写您当时注册的邮箱，点击“发送到我的邮箱”。</div>\r\n	<div>3.	提示邮件发送成功。</div>\r\n	<div>4.	根据提示到您的邮箱中将会收到一封标题为“重设密码”的信件,点击信中的链接。</div>\r\n	<div>5.	根据提示密码重置成功。</div>\r\n</div>\r\n<div class="b">	设置密码</div>\r\n<div>	您注册时输入的密码可以是数字或者英文字母，对于英文字母我们同时设置了大小写的区分。注册后您可以随时在“我的p2p借贷”--“个人设置”—“修改密码”中修改您所设定的密码。</div>\r\n<div class="b">	账户密码安全常识</div>\r\n<div>	<div>请仔细阅读以下常见的安全措施：</div>\r\n	<div>1.	密码要保密，且定期更改。</div>\r\n	<div>2.	请使用较长、复杂的字母数字组合以提高密码强度，不要用生日等容易被别人猜中的密码。</div>\r\n	<div>3.	如果使用了密码取回功能，请您及时删除我们发送给您的载有密码的邮件。</div>\r\n	<div>4.	请记住不要与任何人共享您的密码。如果您已经与他人共享了密码，我们强烈建议您尽快更改。</div>\r\n	<div>5.	您可能在不经意间使计算机受到病毒、木马、间谍软件、广告软件的感染，这些软件也可能记录并盗走您的密码！所以，请安装和使用杀毒软件。</div>\r\n</div>', 19, 1359862891, 1406768764, 0, 1, '', 0, 0, 1, 3, '', '', '', '', '', ''),
(64, '我的p2p信贷', '', '<div class="b">	如何修改个人资料</div>\r\n<div>	访问“我的p2p信贷”— “个人设置”—“修改个人信息”-，即可编辑个人资料。</div>\r\n<div class="b">	如何取消p2p信贷的邮件和站内信的提醒</div>\r\n<div>	访问“我的p2p信贷”— “个人设置”—“通知设置”-，即可修改。</div>', 19, 1359862940, 1359957897, 0, 1, '', 0, 0, 0, 2, '', '', '', '', '', ''),
(65, '意见反馈、举报', '', '<div class="b">	对网站有任何建议或意见，如何反馈</div>\r\n<div>	<div>您可以发站内信给用户“p2p信贷客服”，我们会及时给您回馈。</div>\r\n	<div>发站内信请访问网站上“我的p2p信贷”-“我的p2p信贷”-“站内信”。</div>\r\n</div>\r\n<div class="b">	遇到其他用户恶意骚扰怎么办</div>\r\n<div>	如遇到情况严重的恶意骚扰，请举报该用户给p2p信贷工作人员。我们核实后会尽快采取处理措施。</div>\r\n<div class="b">	遇到别人盗用我的资料假冒我怎么办</div>\r\n<div>	如遇到此类情况，您可以联系p2p借贷的在线客服或拨打我们的客服热线400-888-8888来向我们说明情况，我们会尽快采取处理措施，以确保您信息和资金的安全。</div>\r\n<div class="b">	如何截屏并保存图片</div>\r\n<div>	<div>一、使用PrintScreen键</div>\r\n	<div>1、首先，在出现想要截的画面的时候，按下键盘上的PrintScreen键。</div>\r\n	<div>2、在"开始"→"所有程序"→"附件"选"画图"，这会打开Windows系统自带的画图程序(mspaint.exe)选择"编辑"→"粘贴"(或者直接用Ctrl+V热键)，将截下来的图粘贴到画图程序中。</div>\r\n	<div>3、将图片进行保存，选择"文件"→"另存为"，在出现的另存为对话框中选择保存类型为 JPEG（*.JPG;*.JPEG;*.JPE;*.JFIF），然后输入文件名，点击保存。</div>\r\n	<div>二、使用QQ截屏</div>\r\n	<div>1、打开QQ对话框。</div>\r\n	<div>2、点击Ctrl+Alt+A键，用鼠标选取想截屏的画面。</div>\r\n	<div>3、点击“保存”，在出现的对话框中选择保存类型为 JPEG（*.JPG;*.JPEG;），然后输入文件名，点击保存。</div>\r\n	<div>三、使用其他截屏工具</div>\r\n	<div>说明： 请不要用任何其他图片编辑软件编辑。如果发现用户存在用其他图片编辑软件的情况，您将会被加入系统黑名单。</div>\r\n</div>', 19, 1359862979, 1359958060, 0, 1, '', 0, 0, 0, 1, '', '', '', '', '', ''),
(68, '123', '', '123', 5, 1392410799, 1392410799, 0, 1, '123', 0, 1, 1, 56, '123', '123', '123', '', '123', '123'),
(69, 'test', '', 'testtesttesttest', 13, 1396895320, 1396895320, 0, 1, '', 0, 1, 0, 56, '', '', '', '', '', 'testtesttesttest'),
(70, 'test', '', 'test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;', 6, 1397085431, 1397085431, 0, 1, '', 0, 1, 0, 56, '', '', '', '', '', ''),
(72, '公司地址', '', '地址：福建省福州市台江区八一七中路群升国际E区109', 20, 1406768192, 1406768192, 0, 1, '', 0, 1, 1, 56, '', '', '', '', '', ''),
(73, '充值与提现', '', '<p class="ral-title" style="margin-top:20px;margin-bottom:30px;padding:0px;font-size:16px;font-weight:bold;">1.充值</p>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="充值有费用么？是否有充值上限？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">充值有费用么？是否有充值上限？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="如何进行充值？没有第三方支付的账户是否也可以充值？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">如何进行充值？没有第三方支付的账户是否也可以充值？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="网上银行该如何开通办理？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">网上银行该如何开通办理？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="充值时为什么提示限额？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">充值时为什么提示限额？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<p class="ral-title" style="margin-top:20px;margin-bottom:30px;padding:0px;font-size:16px;font-weight:bold;">2.提现</p>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="提现后能否取消？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">提现后能否取消？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="提现有时间规定么？提现资金多久能到银行卡上？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">提现有时间规定么？提现资金多久能到银行卡上？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="如何设置提现绑定的银行卡？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">如何设置提现绑定的银行卡？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="绑定银行卡可以修改么？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">绑定银行卡可以修改么？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="为什么提现申请会失败？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">为什么提现申请会失败？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="提现收费吗？免提现手续费额度是什么？" style="color:#666666;outline:none;font-family:''microsoft yahei'', tahoma, helvetica, arial, 宋体, sans-serif;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;font-family:''microsoft yahei'', tahoma, helvetica, arial, 宋体, sans-serif;background-repeat:no-repeat no-repeat;">提现收费吗？免提现手续费额度是什么？</p>\r\n<br class="Apple-interchange-newline" />\r\n</div>', 20, 1406768662, 1406768662, 0, 1, '', 0, 0, 501, 56, '', '', '', '', '', ''),
(74, '认证与安全', '', '<p class="ral-title" style="margin-top:20px;margin-bottom:30px;padding:0px;font-size:16px;font-weight:bold;">1.认证</p>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="注册后需完成哪些认证？如何操作？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">注册后需完成哪些认证？如何操作？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="为什么手机认证时会收不到验证码短信？如何处理？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">为什么手机认证时会收不到验证码短信？如何处理？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="如何修改实名认证信息？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">如何修改实名认证信息？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="如何修改手机认证信息？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">如何修改手机认证信息？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="如何修改邮箱认证信息？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">如何修改邮箱认证信息？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<p class="ral-title" style="margin-top:20px;margin-bottom:30px;padding:0px;font-size:16px;font-weight:bold;">2.安全</p>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="如何增加密码的安全性？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">如何增加密码的安全性？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="什么是支付密码？忘记支付密码怎么办？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">什么是支付密码？忘记支付密码怎么办？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="如何修改爱投资邮件、站内信及短信的提醒？" style="color:#666666;outline:none;font-family:''microsoft yahei'', tahoma, helvetica, arial, 宋体, sans-serif;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;font-family:''microsoft yahei'', tahoma, helvetica, arial, 宋体, sans-serif;background-repeat:no-repeat no-repeat;">如何修改爱投资邮件、站内信及短信的提醒？</p>\r\n<br class="Apple-interchange-newline" />\r\n</div>', 20, 1406768683, 1406768683, 0, 1, '', 0, 0, 468, 57, '', '', '', '', '', ''),
(75, '投资回报', '', '<div style="margin-top:10px;padding:10px;"><div style="font-size:13px;line-height:20px;"><p><b>通过p2p信贷，您可以将手中的富余资金出借给信用良好但缺少资金的大学生、工薪阶层、微小企业主、农民，帮助他们实现教育培训、电脑或家电购买、	 装修、兼职创业、脱贫致富等理想，同时还能通过利息收入为您带来较高的稳定收益，	 实现精神和物质的双重回报。根据p2p信贷的历史经验数据，资金年收益始终保持在10%以上。</b></p>\r\n</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;"><div class="about_title2">各类型投资产品收益及风险对比分析</div>\r\n<div style="border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#9c9c9c;margin:8px 0px;"></div>\r\n<div class="dunDetail" style="font-size:13px;"><table width="480" border="0" cellspacing="1" style="text-align:center;background-color:#d3d4d8;background-position:initial initial;background-repeat:initial initial;"><tbody><tr bgcolor="#e1f0ff" style="font-weight:bold;height:37px;"><td>产品</td>\r\n<td>年收益</td>\r\n<td>风险级别</td>\r\n<td>流动性</td>\r\n</tr>\r\n<tr bgcolor="#ffffff" style="height:37px;"><td>一年期定存</td>\r\n<td>2.6%</td>\r\n<td>★</td>\r\n<td>★</td>\r\n</tr>\r\n<tr bgcolor="#ffffff" style="height:37px;"><td>一年期国债</td>\r\n<td>2.6%</td>\r\n<td>★</td>\r\n<td>★</td>\r\n</tr>\r\n<tr bgcolor="#ffffff" style="height:37px;"><td>银行理财产品</td>\r\n<td>3%—6%</td>\r\n<td>★★</td>\r\n<td>★</td>\r\n</tr>\r\n<tr bgcolor="#ffffff" style="height:37px;"><td>开放式基金</td>\r\n<td>不确定</td>\r\n<td>★★★</td>\r\n<td>★★★★★</td>\r\n</tr>\r\n<tr bgcolor="#ffffff" style="height:37px;"><td>股票</td>\r\n<td>不确定</td>\r\n<td>★★★★★</td>\r\n<td>★★★★</td>\r\n</tr>\r\n<tr bgcolor="#ffffff" style="height:37px;"><td>p2p信贷</td>\r\n<td>10%以上</td>\r\n<td>★</td>\r\n<td>★★</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;"><div class="about_title2">一年期定期存款、国债</div>\r\n<div style="border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#9c9c9c;margin:8px 0px;"></div>\r\n<div style="font-size:13px;line-height:20px;"><p>定期存款与国债的风险，在众多理财途径里面无疑最低的，然而锁定期长，2％左右的回报率，在通过膨胀日益高涨，CPI高于3％的今天，	 却让资金难以抗衡通胀，从长期来看购买力将越来越低。</p>\r\n</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;"><div class="about_title2">银行理财产品</div>\r\n<div style="border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#9c9c9c;margin:8px 0px;"></div>\r\n<div style="font-size:13px;line-height:20px;"><p>在银行里，锁定期1年以上的理财产品，年化回报率一般在在3－6％左右，但是动辄几百万的投资门槛，将很多理财者拒之门外。相比起来，	 通过p2p借贷系统借出，资金的回收情况则要灵活的多。此外，理财产品背后的还款来源则是政府的财政贷款，房地产信托等。这些对象的财务情况并非完全透明，	 对于普通用户来说，往往只能看到表面的情况，难以真正理解其中的风险。</p>\r\n</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;"><div class="about_title2">股票、基金</div>\r\n<div style="border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#9c9c9c;margin:8px 0px;"></div>\r\n<div style="font-size:13px;line-height:20px;"><p>随着中国金融行业的发展，股票和基金已经慢慢地成为了很多人投资理财的选择。然而，股票和激励里那些复杂的概念，创业版，物联网，	 有色板块，明星基金经理，内部消息等等词汇，我们已慢慢耳熟能详，我们也一次次地期望那个暴富的故事发生在我们身上，然而在现实生活中，	 却往往发现并不那么给力，我们面临的更多的总是长期套牢。相比起来，通过分散投资，通过借钱还款这样简单明了的赚钱模式，获得稳定的10%以上收益，	 也许更适合普通的投资者。</p>\r\n</div>\r\n</div>', 3, 1406769240, 1411517730, 0, 1, '', 0, 0, 621, 58, '', '', '', '', '', ''),
(76, 'test', '', 'test', 22, 1415724864, 1415724864, 0, 1, '', 0, 1, 0, 59, '', '', '', '', '', ''),
(77, '授权服务机构', '', '', 20, 1423072295, 1423072295, 0, 1, 'http://p2p.fanwe.net/index.php?ctl=authorized&act=login', 0, 0, 0, 60, '', '', '', '', '', ''),
(78, 'youaresb', '', 'sbsbsbsb', 20, 1423619060, 1423619060, 0, 1, '', 0, 1, 0, 61, '', '', '', '', '', ''),
(79, '什么叫债权转让', '', '什么叫债权转让', 24, 1426899571, 1426899571, 0, 1, '', 0, 0, 0, 61, '', '', '', '', '', ''),
(80, '我是媒体报道哦', './public/attachment/201503/27/17/5515293646451.png', '我是媒体报道哦我是媒体报道哦我是媒体报道哦我是媒体报道哦我是媒体报道哦我是媒体报道哦', 25, 1427421377, 1427421377, 0, 1, '', 0, 0, 0, 62, '', '', '', '', '我是媒体报道哦我是', '我是媒体报道哦我是媒体报道哦我是媒体报道哦'),
(81, '测试回调', '', '<html>\r\n    <script language="javascript">\r\n        /* This function is invoked by the activity */\r\n        function wave() {\r\n            alert("1");\r\n            document.getElementById("droid").src="android_waving.png";\r\n            alert("2");\r\n        }\r\n    </script>\r\n    <body>\r\n        <!-- Calls into the javascript interface for the activity -->\r\n        <a onClick="APP.onConfirm()"><div style="width:80px;\r\n            margin:0px auto;\r\n            padding:10px;\r\n            text-align:center;\r\n            border:2px solid #202020;" >\r\n                <img id="droid" src="android_normal.png"/><br>\r\n                Click me!\r\n        </div></a>\r\n    </body>\r\n</html>', 15, 1435006920, 1435010108, 0, 1, '', 0, 0, 0, 63, '', '', '', '', '111111111111', '测试回调'),
(82, '体验金发放规则', '', '<span>注册即送</span><br />\r\n<span>&nbsp; &nbsp; &nbsp; &nbsp; 注册成为平台会员，即送1000（后台设置）元体验金</span><br />\r\n<span>邀请赠送</span><br />\r\n<span>&nbsp; &nbsp; &nbsp; &nbsp; 会员将邀请链接分享给好友，每当一个好友注册成为会员后，即可得到1000元（后台设置）体验金，</span><br />\r\n<span>同时平台赠送分享链接的会员1000（后台设置）元体验金，赠送的理财体验金直接存入理财体验金账户中；</span><br />\r\n<span>以此类推，分享链接的会员最多可获得赠送10000元（后台设置）。</span>', 27, 1436117416, 1436117416, 0, 1, '', 0, 0, 0, 64, '', '', '', 'learnsrule', '', ''),
(83, '不花钱 拿收益——体验金活动规则', '', '<div style="background:#f7f7f7;padding:10px 15px;margin:auto;font-size:14px;">\r\n	本次活动为{$site_info.SHOP_TITLE}主办的 系列活动之体验金活动，是为新注册用户体验{$site_info.SHOP_TITLE}交易流程而设。{$site_info.SHOP_TITLE}将向每位参与者提供一定金额的投资体验金，所获收益可用于购买{$site_info.SHOP_TITLE}投资产品时做现金抵扣之用。用户登录{$site_info.SHOP_TITLE}“新手体验区”即可参与活动。\r\n</div>\r\n<br />\r\n<table cellpadding="5" cellspacing="1" width="88%" style="margin:auto;" class="cpsslist">\r\n	<tbody>\r\n		<tr>\r\n			<td valign="top" width="15%">\r\n				<span>一、参与对象： </span> \r\n			</td>\r\n			<td>\r\n				<span>活动期间在{$site_info.SHOP_TITLE}上完成注册的所有新用户</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td valign="top">\r\n				<span>二、发放规则： </span> \r\n			</td>\r\n			<td>\r\n				<span>1）注册即送  注册成为平台会员，即送1000（后台设置）元体验金<br />\r\n2） 邀请赠送  会员将邀请链接分享给好友，每当一个好友注册成为会员后，即可得到1000元（后台设置）体验金<br />\r\n同时平台赠送分享链接的会员1000（后台设置）元体验金，赠送的理财体验金直接存入理财体验金账户中;<br />\r\n以此类推，分享链接的会员最多可获得赠送10000元（后台设置）。<br />\r\n</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td valign="top">\r\n				<span>三、使用规则: </span> \r\n			</td>\r\n			<td>\r\n				<span>1<span>）</span>注册成为会员后，可以在会员中心的理财体验金页面，查看和使用理财体验金、领取理财体验金的投资收益。<br />\r\n				<p style="text-indent:0px;">\r\n					<span style="line-height:1.5;">2<span>）</span>理财体验金只可投资指定理财体验产品。该产品由平台为活动设定的虚似借款产品，不对接真实借款人。</span> \r\n				</p>\r\n				<p style="text-indent:0px;">\r\n					<span style="line-height:1.5;">3<span>）</span>每次使用理财体验金进行投资时，需要将当前未投资的理财体验金全额投资，不支持指定任意金额或分次投资。</span> \r\n				</p>\r\n				<p style="text-indent:0px;">\r\n					<span style="line-height:1.5;">4<span>）</span>每笔理财体验金在该笔理财体验金有效期内只能投资一次。理财体验产品投资期限届满后，用户将获得收益，平台将收回理财体验金。</span> \r\n				</p>\r\n				<p style="text-indent:0px;">\r\n					<span style="line-height:1.5;">5<span>）</span>理财体验产品自用户投资当天开始计算收益，会员可在理财体验金页面查看到每天的收益，该产品的投资期限届满后结算收益。</span> \r\n				</p>\r\n				<p style="text-indent:0px;">\r\n					<span style="line-height:1.5;">6<span>）</span></span><span style="line-height:1.5;">理财体验产品投资期限届满后，会员应在理财体验金收益有效期内及时将理财体验金的收益领取至账户余额，方可将收益转为可投资于平台其它产品的资金或可提现的资金。</span> \r\n				</p>\r\n				<p style="text-indent:0px;">\r\n					<span style="line-height:1.5;">7<span>）</span>理财体验金有效期：每笔理财体验金自用户领取到理财体验金之日起</span><span style="line-height:1.5;">30</span><span style="line-height:1.5;">（后台设置）天内有效（即可投资于理财体验产品），过期则由平台收回。</span> \r\n				</p>\r\n</span><span>8<span>）</span>理财体验金收益有效期：每笔收益自产生该笔收益的理财体验产品投资期限届满之日起90（后台设置）天内可以领取，过期财失效，会员无法领取该收益。</span> \r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td valign="top" style="border:0;">\r\n				<span></span> \r\n			</td>\r\n			<td style="border:0;">\r\n				<span><br />\r\n</span> \r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 27, 1436117472, 1436117472, 0, 1, '', 0, 0, 0, 65, '', '', '', 'learnurule', '', ''),
(84, '服务条款', '', '众筹服务条款', 0, 1440638228, 1440638228, 0, 1, '', 0, 1, 0, 66, '', '', '', 'project_service', '', ''),
(85, '普通', '', '普通 普通 普通', 28, 1451859363, 1451859363, 0, 1, '', 0, 1, 0, 67, '', '', '', '', '', '普通'),
(86, 'pttest-1', '', 'sssss', 29, 1451860008, 1451860008, 0, 1, '', 0, 1, 0, 67, '', '', '', '', '', ''),
(87, 'xttest-1', '', 'ssssssss事实上事实上身上', 30, 1451860052, 1451864165, 0, 1, '', 0, 1, 0, 68, '', '', '', '', '', ''),
(88, 'xttest-1', '', '若反弹过后还会呵呵呵呵呵呵呵呵呵呵发发发', 30, 1451864605, 1451864605, 0, 1, '', 0, 1, 0, 68, '', '', '', '', '', ''),
(89, 'ww', './public/attachment/201602/01/10/56aec6dd0e7b0.jpg', 'wwww', 25, 1454265958, 1454265958, 0, 1, '', 0, 1, 0, 68, '', '', '', '', '', 'ww');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%article_cate`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%article_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `brief` varchar(255) NOT NULL COMMENT '描述',
  `pid` int(11) NOT NULL,
  `is_effect` tinyint(4) NOT NULL,
  `is_delete` tinyint(4) NOT NULL,
  `type_id` tinyint(1) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `type_id` (`type_id`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- 转存表中的数据 `%DB_PREFIX%article_cate`
--

INSERT INTO `%DB_PREFIX%article_cate` (`id`, `title`, `brief`, `pid`, `is_effect`, `is_delete`, `type_id`, `sort`) VALUES
(1, '使用帮助', '', 9, 0, 0, 3, 4),
(2, '关于我们', '<input type="button" name="Submit1" value="Submit1" onclick="APP.onConfirm();" class="BOTTOM" style="background-color:#000000;border-width:0px;" />', 0, 1, 0, 1, 3),
(3, '安全保护', '', 0, 1, 0, 1, 2),
(4, '了解更多', '', 0, 1, 0, 1, 1),
(5, '网站公告', '网站公告', 0, 1, 0, 2, 5),
(6, '使用技巧', '', 0, 1, 0, 3, 6),
(7, '关于理财', '', 0, 1, 0, 3, 7),
(8, '本金保障', '<img src="./public/attachment/201404/21/09/5354765d7bb1d.jpg"/>', 12, 1, 0, 3, 8),
(9, '交易安全保障', '<img src="./public/attachment/201404/21/09/535475a36d5bc.jpg"/>', 12, 1, 0, 3, 9),
(10, '贷款审核与保障', '<img src="./public/attachment/201303/02/17/5131c2460b952.jpg"/>\r\np2p信贷拥有一套科学有效的信用审核标准和方法，对借款用户进行信用风险分析及信用等级分级。同时p2p信贷建立了完整严谨的风险管理体系包括贷前审核、贷中审查和贷后管理以控制借款逾期违约的风险。从创立开始，p2p信贷借款逾期率一直保持在0.9%以内，为业内最优水平。', 12, 1, 0, 3, 10),
(11, '网上理财安全建议', '<img src="./public/attachment/201303/02/17/5131c25681025.jpg"/>', 12, 1, 0, 3, 11),
(12, '安全保障', '', 0, 1, 0, 3, 12),
(13, '帮助中心', '', 0, 1, 0, 3, 13),
(14, '基本介绍', 'qqq', 0, 1, 0, 1, 19),
(15, '借款人常见问题', '', 13, 1, 0, 3, 18),
(16, '理财人常见问题', '', 13, 1, 0, 3, 17),
(17, '产品及计划介绍', '', 13, 1, 0, 3, 16),
(18, '账户充值、提现', '', 13, 1, 0, 3, 15),
(19, '其他', '', 13, 1, 0, 3, 14),
(20, '帮助中心', '', 0, 1, 0, 1, 20),
(21, '我要理财', '', 0, 1, 1, 1, 21),
(22, 'test', '', 0, 1, 1, 0, 21),
(23, 'stupy', '', 5, 1, 1, 2, 22),
(24, '信贷学堂', '', 0, 1, 0, 0, 23),
(25, '媒体报道', '', 0, 1, 0, 0, 24),
(26, '担保机构登陆', '', 0, 1, 1, 1, 25),
(27, '体验金规则', '', 0, 1, 0, 3, 25),
(28, 'pttest', '', 27, 1, 1, 3, 26),
(29, 'pttest', '', 0, 1, 1, 0, 26),
(30, 'xttest', '', 12, 1, 1, 3, 27);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%article_cate_copy`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%article_cate_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `brief` varchar(255) NOT NULL COMMENT '描述',
  `pid` int(11) NOT NULL,
  `is_effect` tinyint(4) NOT NULL,
  `is_delete` tinyint(4) NOT NULL,
  `type_id` tinyint(1) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `type_id` (`type_id`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- 转存表中的数据 `%DB_PREFIX%article_cate_copy`
--

INSERT INTO `%DB_PREFIX%article_cate_copy` (`id`, `title`, `brief`, `pid`, `is_effect`, `is_delete`, `type_id`, `sort`) VALUES
(1, '使用帮助', '', 9, 0, 0, 3, 4),
(2, '关于我们', '', 0, 1, 0, 1, 3),
(3, '安全保护', '', 0, 1, 0, 1, 2),
(4, '了解更多', '', 0, 1, 0, 1, 1),
(5, '网站公告', '网站公告', 0, 1, 0, 2, 5),
(6, '使用技巧', '', 0, 1, 0, 3, 6),
(7, '关于理财', '', 0, 1, 0, 3, 7),
(8, '本金保障', '<img src="./public/attachment/201404/21/09/5354765d7bb1d.jpg"/>', 12, 1, 0, 3, 8),
(9, '交易安全保障', '<img src="./public/attachment/201404/21/09/535475a36d5bc.jpg"/>', 12, 1, 0, 3, 9),
(10, '贷款审核与保障', '<img src="./public/attachment/201303/02/17/5131c2460b952.jpg"/>\r\np2p信贷拥有一套科学有效的信用审核标准和方法，对借款用户进行信用风险分析及信用等级分级。同时p2p信贷建立了完整严谨的风险管理体系包括贷前审核、贷中审查和贷后管理以控制借款逾期违约的风险。从创立开始，p2p信贷借款逾期率一直保持在0.9%以内，为业内最优水平。', 12, 1, 0, 3, 10),
(11, '网上理财安全建议', '<img src="./public/attachment/201303/02/17/5131c25681025.jpg"/>', 12, 1, 0, 3, 11),
(12, '安全保障', '', 0, 1, 0, 3, 12),
(13, '帮助中心', '', 0, 1, 0, 3, 13),
(14, '基本介绍', 'qqq', 0, 1, 0, 1, 19),
(15, '借款人常见问题', '', 13, 1, 0, 3, 18),
(16, '理财人常见问题', '', 13, 1, 0, 3, 17),
(17, '产品及计划介绍', '', 13, 1, 0, 3, 16),
(18, '账户充值、提现', '', 13, 1, 0, 3, 15),
(19, '其他', '', 13, 1, 0, 3, 14),
(20, '帮助中心', '', 0, 1, 0, 1, 20),
(21, '我要理财', '', 0, 1, 1, 1, 21),
(22, 'test', '', 0, 1, 0, 0, 21),
(23, 'stupy', '', 5, 1, 0, 2, 22),
(24, '信贷学堂', '', 0, 1, 0, 0, 23),
(25, '媒体报道', '', 0, 1, 0, 0, 24);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%article_copy`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%article_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL COMMENT '图标',
  `content` text NOT NULL,
  `cate_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `add_admin_id` int(11) NOT NULL COMMENT '发布人',
  `is_effect` tinyint(4) NOT NULL,
  `rel_url` varchar(255) NOT NULL COMMENT '自动跳转的外链',
  `update_admin_id` int(11) NOT NULL COMMENT '更新人',
  `is_delete` tinyint(4) NOT NULL,
  `click_count` int(11) NOT NULL COMMENT '点击数',
  `sort` int(11) NOT NULL,
  `seo_title` text NOT NULL,
  `seo_keyword` text NOT NULL,
  `seo_description` text NOT NULL,
  `uname` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `brief` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cate_id` (`cate_id`),
  KEY `create_time` (`create_time`),
  KEY `update_time` (`update_time`),
  KEY `click_count` (`click_count`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=81 ;

--
-- 转存表中的数据 `%DB_PREFIX%article_copy`
--

INSERT INTO `%DB_PREFIX%article_copy` (`id`, `title`, `icon`, `content`, `cate_id`, `create_time`, `update_time`, `add_admin_id`, `is_effect`, `rel_url`, `update_admin_id`, `is_delete`, `click_count`, `sort`, `seo_title`, `seo_keyword`, `seo_description`, `uname`, `sub_title`, `brief`) VALUES
(1, '公司简介', '', '<p><span style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;display:inline !important;font:12px/19px arial, tahoma, helvetica, 宋体;white-space:normal;orphans:2;float:none;letter-spacing:normal;color:#444444;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;">p2p信贷(fanwe.com)为有资金需求和理财需求的个人搭建了一个公平、透明、稳定、高效的网络互动平台。用户可以在p2p信贷上获得信用评级、发布借款请求满足个人的资金需要；也可以把自己的闲余资金通过人人贷出借给信用良好有资金需求的个人，在获得良好的资金回报率的同时帮助了他人。</span></p>\r\n<div style="padding-bottom:10px;widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;padding-left:0px;padding-right:0px;font:12px/19px arial, tahoma, helvetica, 宋体;word-wrap:break-word;white-space:normal;orphans:2;letter-spacing:normal;color:#444444;overflow:hidden;word-break:break-all;word-spacing:0px;padding-top:10px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="h20"></div>\r\n<div style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;font:600 12px/19px arial, tahoma, helvetica, 宋体;word-wrap:break-word;white-space:normal;orphans:2;letter-spacing:normal;color:#8e8e8e;word-break:break-all;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="f_dgray b f_12">p2p信贷缘起</div>\r\n<div style="padding-bottom:10px;widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;padding-left:0px;padding-right:0px;font:12px/19px arial, tahoma, helvetica, 宋体;word-wrap:break-word;white-space:normal;orphans:2;letter-spacing:normal;color:#444444;overflow:hidden;word-break:break-all;word-spacing:0px;padding-top:10px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="h20"></div>\r\n<p><span style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;display:inline !important;font:12px/19px arial, tahoma, helvetica, 宋体;white-space:normal;orphans:2;float:none;letter-spacing:normal;color:#444444;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;">随着互联网用户的普及、技术的进步与货币数字化的迅速发展，2005年在英国首次出现个人对个人（P2P）的网络信贷服务平台。这种模式由于使借贷双方互惠双赢，加上其高效便捷的操作方式、个性化的利率定价机制，推出后得到广泛的认可和关注，迅速在其他国家复制。我们团队看到了这种模式将对中国民间信贷及小额贷款行业带来深远积极的影响。我们决定结合中国的社会信用状况，利用可靠的信用审核模型和先进的技术，创建了适合中国的P2P小额信贷网络平台——p2p信贷(fanwe.com)。</span></p>\r\n<div style="padding-bottom:10px;widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;padding-left:0px;padding-right:0px;font:12px/19px arial, tahoma, helvetica, 宋体;word-wrap:break-word;white-space:normal;orphans:2;letter-spacing:normal;color:#444444;overflow:hidden;word-break:break-all;word-spacing:0px;padding-top:10px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="h20"></div>\r\n<div style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;font:600 12px/19px arial, tahoma, helvetica, 宋体;word-wrap:break-word;white-space:normal;orphans:2;letter-spacing:normal;color:#8e8e8e;word-break:break-all;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="f_dgray b f_12">社会意义</div>\r\n<div style="padding-bottom:10px;widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;padding-left:0px;padding-right:0px;font:12px/19px arial, tahoma, helvetica, 宋体;word-wrap:break-word;white-space:normal;orphans:2;letter-spacing:normal;color:#444444;overflow:hidden;word-break:break-all;word-spacing:0px;padding-top:10px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="h20"></div>\r\n<p><span style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;display:inline !important;font:12px/19px arial, tahoma, helvetica, 宋体;white-space:normal;orphans:2;float:none;letter-spacing:normal;color:#444444;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;">P2P小额贷款是一种将非常小额度的贷款聚集起来借贷给有资金需求人群的一种商业模型。它的社会价值主要体现在满足个人资金需求、发展个人信用体系和提高社会闲散资金利用率三个方面：</span><br style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;font:12px/19px arial, tahoma, helvetica, 宋体;white-space:normal;orphans:2;letter-spacing:normal;color:#444444;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" />\r\n<span style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;display:inline !important;font:12px/19px arial, tahoma, helvetica, 宋体;white-space:normal;orphans:2;float:none;letter-spacing:normal;color:#444444;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;">1）在中国，银行对个人信用贷款的条件要求很高，个人从银行系统融资面临很多困难,P2P小额贷款为需要资金的人提供了新的融资渠道。</span><br style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;font:12px/19px arial, tahoma, helvetica, 宋体;white-space:normal;orphans:2;letter-spacing:normal;color:#444444;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" />\r\n<span style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;display:inline !important;font:12px/19px arial, tahoma, helvetica, 宋体;white-space:normal;orphans:2;float:none;letter-spacing:normal;color:#444444;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;">2）P2P小额贷款主要是以个人信用评价为基础的贷款，它的发展有助于个人体现自身的信用价值，提高社会个人信用体系的建设。</span><br style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;font:12px/19px arial, tahoma, helvetica, 宋体;white-space:normal;orphans:2;letter-spacing:normal;color:#444444;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" />\r\n<span style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;display:inline !important;font:12px/19px arial, tahoma, helvetica, 宋体;white-space:normal;orphans:2;float:none;letter-spacing:normal;color:#444444;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;">3）P2P小额贷款扩宽了个人投资的渠道，加大了资金的流动，提高了社会闲散资金的使用率，促进了经济的发展。</span><br style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;font:12px/19px arial, tahoma, helvetica, 宋体;white-space:normal;orphans:2;letter-spacing:normal;color:#444444;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" />\r\n<span style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;display:inline !important;font:12px/19px arial, tahoma, helvetica, 宋体;white-space:normal;orphans:2;float:none;letter-spacing:normal;color:#444444;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;">P2P网络借贷平台的出现，不仅仅是一个创新的商业模式, 它更为缩小社会贫富差距、创造就业、实现经济长期发展、社会和谐作出了重大贡献。</span></p>\r\n<div style="padding-bottom:10px;widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;padding-left:0px;padding-right:0px;font:12px/19px arial, tahoma, helvetica, 宋体;word-wrap:break-word;white-space:normal;orphans:2;letter-spacing:normal;color:#444444;overflow:hidden;word-break:break-all;word-spacing:0px;padding-top:10px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="h20"></div>\r\n<div style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;font:600 12px/19px arial, tahoma, helvetica, 宋体;word-wrap:break-word;white-space:normal;orphans:2;letter-spacing:normal;color:#8e8e8e;word-break:break-all;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="f_dgray b f_12">p2p信贷的愿景</div>\r\n<div style="padding-bottom:10px;widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;padding-left:0px;padding-right:0px;font:12px/19px arial, tahoma, helvetica, 宋体;word-wrap:break-word;white-space:normal;orphans:2;letter-spacing:normal;color:#444444;overflow:hidden;word-break:break-all;word-spacing:0px;padding-top:10px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;" class="h20"></div>\r\n<p><span style="widows:2;text-transform:none;background-color:#ffffff;text-indent:0px;display:inline !important;font:12px/19px arial, tahoma, helvetica, 宋体;white-space:normal;orphans:2;float:none;letter-spacing:normal;color:#444444;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;">我们坚信，随着时代的进步，中国社会的信用体系必将逐步完善，而技术的革新，也必将使民间借贷的模式发生革命性的变化。我们期待在这次进步的浪潮中，走在时代的前端，打造出中国最诚信可靠的P2P网络借贷平台，成为一家卓越的、实现巨大社会价值的企业。</span></p>', 2, 0, 1362180117, 0, 1, '', 0, 0, 3083, 30, '', '', '', '', '', ''),
(2, '注册与登录', '', '<p class="ral-title" style="margin-top:20px;margin-bottom:30px;padding:0px;font-size:16px;font-weight:bold;">1.注册</p>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="如何成为爱投资的注册用户？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">如何成为爱投资的注册用户？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<p class="ral-title" style="margin-top:20px;margin-bottom:30px;padding:0px;font-size:16px;font-weight:bold;">2.登录</p>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="登录爱投资账户有几种方式？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">登录爱投资账户有几种方式？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="忘记登录用户名、登录密码怎么办？如何找回？" style="color:#666666;outline:none;font-family:''microsoft yahei'', tahoma, helvetica, arial, 宋体, sans-serif;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;font-family:''microsoft yahei'', tahoma, helvetica, arial, 宋体, sans-serif;background-repeat:no-repeat no-repeat;">忘记登录用户名、登录密码怎么办？如何找回？</p>\r\n<br class="Apple-interchange-newline" />\r\n</div>', 20, 1305160898, 1406768807, 0, 1, '', 0, 0, 943, 18, '', '', '', '', '', ''),
(3, '隐私保护', '', '<div class="lh26"><b><span style="font-size:14px;">隐私保护我们有哪些措施保障您的隐私安全</span></b><div><ul><li>　· p2p贷款严格遵守国家相关法律法规，对用户的隐私信息进行严格的保护。</li>\r\n<li>　· 我们采用业界最先进的加密技术，用户的注册信息、账户收支信息都已进行高强度的加密处理，不会被不法分子窃取到。</li>\r\n<li>　· p2p贷款设有严格的安全系统，未经允许的员工不可获取您的相关信息。</li>\r\n<li>　· p2p贷款绝不会将您的账户信息、银行信息以任何形式透露给第三方。</li>\r\n</ul>\r\n</div>\r\n<div><b><span style="font-size:14px;">个人信息安全：</span></b></div>\r\n<div>p2p贷款是一个实名认证平台，p2p贷款会保证用户信息隐私的安全，用户在平台上交流的过程中，也要时刻注意保护个人隐私，截图注意覆盖个人信息，不要透露真实姓名与住址等，以防个人信息被盗取造成损失。</div>\r\n</div>', 3, 1305160911, 1359227228, 0, 1, '', 0, 0, 519, 19, '', '', '', '', '', ''),
(4, '咨询热点', '', '咨询热点', 4, 1305160923, 1305160923, 0, 1, '', 0, 0, 157, 20, '', '', '', '', '', ''),
(5, '加入我们', '', '<div style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#8e8e8e;word-break:break-all;font-weight:600;" class="f_dgray b f_12">福建p2p信贷金融信息服务有限公司<div style="padding-bottom:10px;padding-left:0px;padding-right:0px;word-wrap:break-word;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n客户服务</div>\r\n<div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">如果您在使用p2p信贷（fanwe.com）的过程中有任何疑问请您与人人贷客服人员联系。</span><br style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;" />\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">在线帮助：</span><font color="#0000ee" face="Arial, Tahoma, Helvetica, 宋体"><span style="line-height:19px;"><u><a href="./index.php?ctl=helpcenter" target="_blank">http://www.fanwe.com/index.php?ctl=helpcenter</a></u></span></font><br style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;" />\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">客服电话：0591-88138230</span><div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<div style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#8e8e8e;word-break:break-all;font-weight:600;" class="f_dgray b f_12">媒体采访</div>\r\n<div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">p2p信贷作为一个年轻、阳光的创新型公司，乐于展示我们的理念和价值观。如果您有媒体采访需求请将媒体名称、采访提纲、联系方式发送到info@fanwe.com，我们的工作人员会尽快与您联系。</span><div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<div style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#8e8e8e;word-break:break-all;font-weight:600;" class="f_dgray b f_12">商务合作<br />\r\n</div>\r\n<div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">如果贵公司与p2p信贷优势互补，并有合作意向，请简要描述合作意向并发送到<a href="mailto:info@fanwe.com">info@fanwe.com</a>，工作人员会尽快与您联系。</span><div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<div style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#8e8e8e;word-break:break-all;font-weight:600;" class="f_dgray b f_12">最新进展</div>\r\n<div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">微博：</span><font color="#425f9d" face="Arial, Tahoma, Helvetica, 宋体"><span style="line-height:19px;cursor:pointer;"><a href="http://t.sina.com.cn/fanwe" target="_self">http://t.sina.com.cn/fanwe</a></span></font><br style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;" />\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">博客：</span><font color="#425f9d" face="Arial, Tahoma, Helvetica, 宋体"><span style="line-height:19px;cursor:pointer;"><a href="http://blog.sina.com.cn/fanwe" target="_self">http://blog.sina.com.cn/fanwe</a></span></font><div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<div style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#8e8e8e;word-break:break-all;font-weight:600;" class="f_dgray b f_12">公司地址</div>\r\n<div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">福建福州鼓楼区杨桥路19号尚林苑北802 &nbsp; &nbsp;邮编：350001</span><br style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;" />\r\n<br class="Apple-interchange-newline" />', 2, 1305160934, 1406768489, 0, 1, '', 0, 0, 1454, 21, '', '', '', '', '', ''),
(6, '公司简介', '', '公司简介', 6, 1305160946, 1305160946, 0, 1, '', 0, 0, 92, 22, '', '', '', '', '', ''),
(7, '2014-5-9     p2p信贷即将上线', '', '<div><span style="font-size:14px;line-height:21px;">尊敬的p2p信贷用户：</span></div>\r\n<div><span style="font-size:14px;line-height:21px;"><br />\r\n</span></div>\r\n<div><span style="font-size:14px;line-height:21px;">&nbsp; &nbsp; &nbsp; &nbsp; 您好！</span></div>\r\n<div><span style="font-size:14px;line-height:21px;"><br />\r\n</span></div>\r\n<div style="text-align:left;"><span style="font-size:14px;line-height:21px;">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style="font-size:14px;line-height:21px;">p2p信贷正在测试中，</span><span style="font-size:14px;line-height:21px;">预计2013年3月正式上线。具体上线日期确定后我们会及时予以公布。</span></div>\r\n<div><span style="font-size:14px;line-height:21px;"><br />\r\n</span></div>\r\n<div><span style="font-size:14px;line-height:21px;">&nbsp; &nbsp; &nbsp; &nbsp; 非常感谢各位用户的支持和信任！我们会不断完善、为您提供更加优质的服务！</span></div>\r\n<div><span style="font-size:14px;line-height:21px;"><br />\r\n</span></div>\r\n<div style="text-align:right;"><span style="font-size:14px;line-height:21px;">p2p信贷团队</span></div>\r\n<div style="text-align:right;"><span style="font-size:14px;line-height:21px;"><br />\r\n</span></div>\r\n<div style="text-align:right;"><span style="font-size:14px;line-height:21px;">2013年2月4日</span></div>', 5, 1356389066, 1399569847, 0, 1, '', 0, 0, 652, 23, '', '', '', '', '', ''),
(66, '联系我们', '', '客户服务<div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">如果您在使用p2p信贷（fanwe.com）的过程中有任何疑问请您与人人贷客服人员联系。</span><br style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;" />\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">在线帮助：</span><font color="#910100" face="Arial, Tahoma, Helvetica, 宋体"><span style="line-height:19px;"><u><a href="./index.php?ctl=helpcenter" target="_blank">http://www.fanwe.com/index.php?ctl=helpcenter</a></u></span></font><br style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;" />\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">客服电话：0591-88138230</span> <div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<div style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#8e8e8e;word-break:break-all;font-weight:600;" class="f_dgray b f_12">媒体采访</div>\r\n<div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">p2p信贷作为一个年轻、阳光的创新型公司，乐于展示我们的理念和价值观。如果您有媒体采访需求请将媒体名称、采访提纲、联系方式发送到info@fanwe.com，我们的工作人员会尽快与您联系。</span> <div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<div style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#8e8e8e;word-break:break-all;font-weight:600;" class="f_dgray b f_12">商务合作<br />\r\n</div>\r\n<div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">如果贵公司与p2p信贷优势互补，并有合作意向，请简要描述合作意向并发送到<a href="mailto:info@fanwe.com">info@fanwe.com</a>，工作人员会尽快与您联系。</span> <div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<div style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#8e8e8e;word-break:break-all;font-weight:600;" class="f_dgray b f_12">最新进展</div>\r\n<div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">微博：</span><font color="#910100" face="Arial, Tahoma, Helvetica, 宋体"><span style="line-height:19px;cursor:pointer;"><a href="http://t.sina.com.cn/fanwe" target="_self">http://t.sina.com.cn/fanwe</a></span></font><br style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;" />\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">博客：</span><font color="#910100" face="Arial, Tahoma, Helvetica, 宋体"><span style="line-height:19px;cursor:pointer;"><a href="http://blog.sina.com.cn/fanwe" target="_self">http://blog.sina.com.cn/fanwe</a></span></font> <div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<div style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#8e8e8e;word-break:break-all;font-weight:600;" class="f_dgray b f_12">公司地址</div>\r\n<div style="padding-bottom:10px;line-height:19px;padding-left:0px;padding-right:0px;font-family:arial, tahoma, helvetica, 宋体;word-wrap:break-word;color:#444444;overflow:hidden;word-break:break-all;padding-top:10px;" class="h20"></div>\r\n<span style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;">福建福州鼓楼区杨桥路19号尚林苑北802 &nbsp; &nbsp;邮编：350001</span><br style="line-height:19px;font-family:arial, tahoma, helvetica, 宋体;color:#444444;" />', 2, 1362170024, 1362170069, 0, 1, '', 0, 0, 1343, 55, '', '', '', '', '', ''),
(8, '常见问题', '', '常见问题', 1, 1358897125, 1358897125, 0, 1, '', 0, 0, 82, 27, '', '', '', '', '', ''),
(9, '平台原理', '', '<div class="blank20"></div>\r\n<div class="tc"><img src="./public/attachment/201301/14/17/aboutP2P.jpg" alt="" border="0" /><br />\r\n</div>\r\n<div class="blank20"></div>\r\n<div class="b f14" style="color:#2e5f9b;">		p2p信贷统平台机制	</div>\r\n<div class="blank10"></div>\r\n<div style="color:#585858;">p2p信贷(fanwe.com)为有资金需求和理财需求的个人搭建了一个公平、透明、稳定、高效的网络互动平台。用户可以在p2p信贷上获得信用评级、发布借款请求满足个人的资金需要；也可以把自己的闲余资金通过p2p信贷出借给信用良好有资金需求的个人，在获得良好的资金回报率的同时帮助了他人。</div>\r\n<div class="blank20"></div>\r\n<div class="b f14" style="color:#2e5f9b;">p2p信贷借贷流程	</div>\r\n<div class="blank10"></div>\r\n<div class="tc"><img src="./public/attachment/201301/14/17/liucheng.jpg" /></div>\r\n<div class="blank20"></div>', 1, 1358897191, 1360008411, 0, 1, 'u:index|aboutp2p', 0, 0, 2, 26, '', '', '', 'aboutp2p', '', ''),
(10, '如何借款', '', '<div class="border">        	<div class="tit"><h3>贷款方式</h3>\r\n<a href="./index.php?ctl=borrow">申请贷款</a></div>\r\n            <table cellspacing="0" border="0">            	<tbody><tr class="even"><td style="border-right:1px solid #dce7fa;">借款额度</td>\r\n<td> 3,000 至 1,000,000人民币</td>\r\n</tr>\r\n                <tr class="odd"><td style="border-right:1px solid #dce7fa;">借款利率</td>\r\n<td> 6% — 24%（取决于借贷双方以及借款人信用等级）</td>\r\n</tr>\r\n                <tr class="even"><td style="border-right:1px solid #dce7fa;">借款期限</td>\r\n<td> 3 / 6 / 9 / 12 / 18 / 24个月</td>\r\n</tr>\r\n                <tr class="odd"><td style="border-right:1px solid #dce7fa;">还款方式</td>\r\n<td> 每月还款（等额本息还款法）</td>\r\n</tr>\r\n                <tr class="even"><td style="border-right:1px solid #dce7fa;">服务费用</td>\r\n<td> 根据您的当前等级而定，等级越高，费用越低</td>\r\n</tr>\r\n                <tr class="odd"><td style="border-right:1px solid #dce7fa;">管理费用</td>\r\n<td> 将根据借款期限，每月向借入者收取借款本金的0.3%作为借款管理费</td>\r\n</tr>\r\n            </tbody>\r\n</table>\r\n        </div>\r\n				<div class="border">        	<div class="tit"><h3>贷款资格</h3>\r\n</div>\r\n           	<div class="titcen">     	                 <p style="background:#ecf7ff;"><span style="color:#ff8500;">年龄：</span>22—65周岁</p>\r\n                       <p><span style="color:#ff8500;">工作与收入：</span>请先确认您的身份</p>\r\n	                 <ul>                     <li style="background:#ecf7ff;list-style:square;padding-left:20px;line-height:34px;list-style-position:inside;"><span style="color:#ff8500;">私营业主(包含网店商家)：</span>有一年以上的营业执照;近半年可体现月均流水(对公或对私)不低于2万元。</li>\r\n                     <li style="background:#ecf7ff;list-style:square;padding-left:20px;line-height:34px;list-style-position:inside;"><span style="color:#ff8500;">企业员工：</span>在央企,国企及注册资本高于100万元人民币的一般民营企业,有半年以上的工作合同或相关证明,<br />\r\n可体现月收入不低于2000元,。</li>\r\n					 <li style="background:#ecf7ff;list-style:square;padding-left:20px;line-height:34px;list-style-position:inside;"><span style="color:#ff8500;">政府机关及事业单位工作人员：</span>正式工作人员,可体现月收入不低于1200元。</li>\r\n                 </ul>\r\n           	</div>\r\n        </div>\r\n<div class="border">			<div class="tit">            	  <h3>快速问答</h3>\r\n                  <a href="./index.php?ctl=help">了解更多</a>            </div>\r\n			<div class="titcen">				<h4>Q：如何判断我是否有申请资格？</h4>\r\n				<p>A：只要有您有相对稳定的收入，并能出示相关的证明文件就拥有申请贷款的资格。</p>\r\n			 				<h4>Q：什么是信用等级？较高的信用等级有什么优势？</h4>\r\n				<p>A：信用等级是p2p信贷用来评估借款人信用所使用的一套体系,目前p2p信贷信用等级共分7级，从最高的AA				级到最低的HR级。您的信用等级越高，能得到的借款额度越高，提高信用等级，可以增加借出者对您的信任度、并能以更低的成本成功借款、</p>\r\n							<h4>Q：我上传的隐私会不会被泄露？</h4>\r\n				<p>A：不会，保护用户的隐私和数据安全是p2p信贷&nbsp;最重要的责任之一。在传输层中,采用加密数据进行传输以				防止网络分包被截获造成数据泄露。同时p2p信贷还启用了侵扰监测系统来监测那些内部和外部易受侵扰的路径，并运用其他一些人工措施来加强保护用户数据的安全。 </p>\r\n								<h4>Q：能否提前还贷？</h4>\r\n				<p>A：您可以随时还清整笔贷款，您仅需向借出者支付一期本息以及剩余本金的1%的违约金。</p>\r\n			</div>\r\n        </div>', 1, 1358897226, 1360017868, 0, 1, 'u:index|borrow#aboutborrow', 0, 0, 0, 25, '', '', '', 'aboutborrow', '', ''),
(11, '如何理财', '', '<div style="margin-top:10px;padding-left:50px;">		            <div id="step">		                <img style="vertical-align:middle;" alt="" src="./public/images/aboutfinacing/reg_fwd.png" />&nbsp;只需30秒,您即可注册成为p2p信贷用户<br />\r\n		                <img style="margin:2px 0px 0px 46px;" alt="" class="logo_hack" src="./public/images/aboutfinacing/blue_sign.png" />		            </div>\r\n		            <div id="step">		                <img style="vertical-align:middle;" alt="" src="./public/images/aboutfinacing/lender.png" />&nbsp;为了保证您的资金安全，您需先用手机验证、身份证验证2项实名验证，方可开始投资<br />\r\n		                <img style="margin-left:46px;" alt="" class="logo_hack" src="./public/images/aboutfinacing/blue_sign.png" />		            </div>\r\n		            <div id="step">		                <img style="vertical-align:middle;" alt="" src="./public/images/aboutfinacing/choose.png" />&nbsp;您可以根据自己的风险偏好，以及回报率要求，来选择最适合您的借款机会<br />\r\n		                <img style="margin-left:46px;" alt="" class="logo_hack" src="./public/images/aboutfinacing/blue_sign.png" />		            </div>\r\n		            <div id="step">		                <img style="vertical-align:middle;" alt="" src="./public/images/aboutfinacing/lender_money.png" />&nbsp;在您充值之后，您便可以点对点的将您的资金进行出借给您意向的借款人<br />\r\n		                <img style="margin-left:46px;" alt="" class="logo_hack" src="./public/images/aboutfinacing/blue_sign.png" />		            </div>\r\n		            <div id="step">		                <img style="vertical-align:middle;" alt="" src="./public/images/aboutfinacing/interest.png" />&nbsp;经p2p信贷审核的借款成功后，借入者将每月按时向您及其他借出者归还本息<br />\r\n		            </div>\r\n		        </div>\r\n		        <div style="margin-top:20px;padding:10px 50px 10px 50px;">		            <div class="about_title2">p2p信贷投资原理</div>\r\n		            <div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n		            <div style="font-size:13px;line-height:20px;">		                <p>		                    p2p信贷(fanwe.com)为有资金需求和理财需求的个人搭建了一个公平、透明、稳定、高效的网络互动平台。		                    用户可以在p2p信贷上获得信用评级、发布借款请求满足个人的资金需要；也可以把自己的闲余资金通过p2p信贷出借给信用良好有资金需求的个人，		                    在获得良好的资金回报率的同时帮助了他人。		                </p>\r\n		            </div>\r\n		        </div>\r\n		        <div>		            <img alt="p2p借贷系统平台原理" class="logo_hack" src="./public/images/aboutfinacing/principle.jpg" />		        </div>', 7, 1358897303, 1359962884, 0, 1, 'u:index|deals&act=about&u=financing', 0, 0, 1, 24, '', '', '', 'financing', '', ''),
(33, '本金保障计划', '', '<h3 style="border-bottom:medium none;border-left:medium none;border-top:medium none;border-right:medium none;">什么是本金保障计划？</h3>\r\n<p>本金保障指当理财人（借出者）投资的借款出现严重逾期时（即逾期超过30天），p2p信贷系统将向理财人垫付此笔借款未归还的剩余出借本金或本息（具体情况视投资标的类型的具体垫付规则为准），从而为理财人营造一个安全的投资环境，保证投资人的本金安全。</p>\r\n<h3 style="border-bottom:medium none;border-left:medium none;border-top:medium none;border-right:medium none;">理财人（出借者）需要向p2p信贷系统支付本金保障计划服务的费用吗？</h3>\r\n<p>当前理财人无需支付任何费用，通过身份认证成为借出者即可享受此服务。</p>\r\n<h3 style="border-bottom:medium none;border-left:medium none;border-top:medium none;border-right:medium none;">如果我投资的借款发生逾期了，p2p信贷系统如何赔付？</h3>\r\n<p>当您投资的借款发生逾期30天后，p2p信贷风险备用金账户会在一个工作日内将此笔借款的应赔付金额自动充入您的p2p信贷账户中（具体情况视投资标的类型的具体垫付规则为准）。</p>\r\n<h3 style="border-bottom:medium none;border-left:medium none;border-top:medium none;border-right:medium none;">我在p2p信贷上的所有理财投资是否都适用p2p信贷本金保障计划？</h3>\r\n<p>是的，每项投资的具体垫付规则视投资标的具体类型而定。</p>\r\n<div class="bztitle">风险备用金账户规则</div>\r\n<p>“风险备用金账户”是指为p2p信贷系统所服务的所有理财人的共同利益考虑、以p2p信贷名义单独开设并由其管理的一个专款专用账户。</p>\r\n<h3 style="border-bottom:medium none;border-left:medium none;border-top:medium none;border-right:medium none;">“风险备用金账户”资金来源：</h3>\r\n<p>“风险备用金账户”资金当前全部来源于p2p信贷系统根据其与借款人签署的协议向其所服务的借款人所收取的服务费（以下简称“服务费”），p2p信贷系统在依协议向借款人收取服务费的同时，将在收取的服务费中按照贷款产品类型及借款人的信用等级等信息计提风险备用金（详见《p2p信贷系统风险备用金账户—产品垫付规则明细表》）。计提的风险备用金将存放入“风险备用金账户”进行专户管理。各产品类型及信用等级等所对应的风险备用金的计提标准和方式由p2p信贷制定并解释，p2p信贷有权根据实际业务需要对相关内容进行调整，如作修改，p2p信贷将及时进行披露。 </p>\r\n<h3 style="border-bottom:medium none;border-left:medium none;border-top:medium none;border-right:medium none;">“风险备用金账户”资金用途：</h3>\r\n<p>“风险备用金账户”资金将专门用于在一定限额内弥补p2p信贷所服务的理财人（债权人）由于借款人（债务人）的违约所遭受的本金或本息的损失（具体赔付金额以所投资的产品类型的垫付规则为准），即当借款人（债务人）逾期还款超过30日时，p2p信贷将按照“风险备用金账户”资金使用规则从该账户中提取相应资金用于偿付理财人（债权人）应收取的本金或本息金额（不同产品的垫付范围请参考《p2p信贷系统风险备用金账户—产品垫付规则明细表》）（以下统一简称“逾期应收赔付金额”）。</p>\r\n<h3 style="border-bottom:medium none;border-left:medium none;border-top:medium none;border-right:medium none;">“风险备用金账户”资金使用规则：</h3>\r\n<p>“风险备用金账户”资金使用遵循以下规则：<br />\r\n1、违约偿付规则，即当借款人（债务人）逾期还款超过30 日时，方才从“风险备用金账户”资金中抽取相应资金偿付理财人（债权人）逾期应收赔付金额。<br />\r\n2、时间顺序规则，即“风险备用金账户”资金对理财人（债权人）逾期应收赔付金额的偿付按照该债权发生的时间顺序进行偿付分配，先偿付时间发生在前的债权，后偿付时间发生在后的债权。<br />\r\n3、债权比例规则， “风险备用金账户”资金对同一借款协议下的不同理财人（债权人）逾期应收赔付金额的偿付按照各债权金额占同协议内发生的债权总额的比例进行偿付分配；或，当“风险备用金账户”资金当期余额不足以支付当期（每月为一期）所有应享受该账户的理财人所对应的逾期赔付金额时，则当期应享受该账户的理财人按照各自对应的逾期应收赔付金额占当期所有理财人对应的逾期应收赔付总额的比例进行偿付分配。<br />\r\n4、有限偿付规则，即“风险备用金账户”资金对理财人（债权人）逾期应收赔付的偿付以该账户的资金总额为限，当该账户余额为零时，自动停止对理财人逾期应收赔付金额的偿付，直到该账户获得新的风险备用金。<br />\r\n5、收益转移规则，即当理财人享有了“风险备用金帐户”对某笔逾期债权赔付金额的足额偿付后，该债权对应的借款人其后为该笔债权所偿还的本金、利息及罚息归属“风险备用金账户”；如债权有抵押、质押及其他担保的，则平台代借款人处置抵押质押物的所得等也归属“风险备用金账户”。<br />\r\n6、金额上限规则，即当“风险备用金帐户”内金额超过当时平台上所有债权本金金额的10%时，p2p借贷系统有权将超出部分转出该账户，转出部分归p2p借贷系统所有。<br />\r\n</p>\r\n<h3 style="border-bottom:medium none;border-left:medium none;border-top:medium none;border-right:medium none;">“风险备用金账户”资金管理原则：</h3>\r\n<p>p2p信贷将审慎管理“风险备用金账户”资金，并就账户及资金使用情况对理财人进行定期（按季度/月）披露。具体披露方式及解释权归p2p信贷所有。</p>\r\n<h3 style="border-bottom:medium none;border-left:medium none;border-top:medium none;border-right:medium none;">附表：《p2p信贷风险备用金账户—产品垫付规则明细表》</h3>\r\n<p style="position:relative;text-align:center;"><img border="0" alt="" src="./public/images/aq/benjinhelp.jpg" /></p>\r\n<p class="b">注：信用认证标中与部分渠道合作的产品风险金计提标准不适用上表规则，将根据合作渠道的具体情形单独设定。</p>', 8, 1359307452, 1362187090, 0, 1, '', 0, 0, 528, 48, '', '', '', '', '', ''),
(12, 'p2p信贷费率', '', '<div class="blank20"></div>\r\n<div class="b f12">一、理财费用</div>\r\n<p class="f_red">p2p信贷系统不收取理财人任何费用，充值提现费用为第三方支付公司收取</p>\r\n<div class="blank20"></div>\r\n<div class="b f12">二、贷款费用</div>\r\n1、服务费<br />\r\np2p信贷系统收取的服务费将全部存于风险准备金账户用于p2p信贷系统的本金保障计划。服务费将按照借款人的信用等级来收取： <div class="blank20"></div>\r\n<table style="text-align:center;background-color:#ccc;width:100%;" border="0" cellspacing="1" align="center"><tbody><tr style="background:#eff5fe;height:30px;"><td class="tc">信用等级 </td>\r\n<td class="tc" width="10%">AA </td>\r\n<td width="10%" tc?="">A </td>\r\n<td class="tc" width="10%">B </td>\r\n<td class="tc" width="10%">C </td>\r\n<td class="tc" width="10%">D </td>\r\n<td class="tc" width="10%">E </td>\r\n<td class="tc" width="10%">HR </td>\r\n</tr>\r\n<tr style="background:#fff;height:30px;"><td class="tc">费率</td>\r\n<td class="tc">0%</td>\r\n<td class="tc">1%</td>\r\n<td class="tc">1.5%</td>\r\n<td class="tc">2%</td>\r\n<td class="tc">2.5%</td>\r\n<td class="tc">3%</td>\r\n<td class="tc">5%</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n2、账户管理费<br />\r\np2p信贷系统将按照借款人的借款期限，每月向借款人收取其借款本金的0.3%作为借款管理费。<div class="blank20"></div>\r\n<div class="b f12">三、充值提现费用</div>\r\n1、充值费用（由第三方平台收取）<br />\r\n第三方支付平台将在您充入资金时扣除0.5%作为转账费用。充值费用上限为100元。超过100元的部分由p2p信贷承担。<br />\r\n<p style="color:#8e8e8e;">注：充值时可以使用一张充值免费券，抵去该笔充值费用。（每位新注册理财用户（完成绑定身份证和手机号）将自动获得一张充值免费券，并可通过参与活动的方式获得更多充值免费券。）</p>\r\n<div class="blank20"></div>\r\n2、提现费用（由第三方平台收取）<br />\r\n当借款人要求将借款资金转至指定银行账户时，会发生转账费用，第三方支付平台将按以下标准收取相关费用。<table style="text-align:center;background-color:#ccc;width:100%;" border="0" cellspacing="1" align="center"><tbody><tr style="background:#eff5fe;height:30px;"><td width="25%"><div align="center">金额 </div>\r\n</td>\r\n<td width="25%"><div align="center">2万元以下 </div>\r\n</td>\r\n<td width="25%"><div align="center">2万元（含）－5万元 </div>\r\n</td>\r\n<td width="25%"><div align="center">5万元（含）－100万元 </div>\r\n</td>\r\n</tr>\r\n<tr style="background:#fff;height:30px;"><td><div align="center">收费 </div>\r\n</td>\r\n<td><div align="center">1元/笔 </div>\r\n</td>\r\n<td><div align="center">3元/笔 </div>\r\n</td>\r\n<td><div align="center">5元/笔 </div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div class="blank20"></div>', 1, 1359057258, 1362424817, 0, 1, 'u:index|aboutfee', 0, 0, 0, 23, '', '', '', 'aboutfee', '', ''),
(67, '2014-5-9   3月份运营数据：成交金额1530万', '', '<p></p>\r\n<div><b><span style="color:#f10b00;">&nbsp;3月份运营数据：成交金额1530万，投资人收益980万</span></b><br />\r\n</div>\r\n<p></p>', 5, 1362448657, 1399569890, 0, 1, '', 0, 0, 784, 55, 'p2p信贷', '网络贷款', '网贷', '', '3月份运营数据', '尊敬的p2p信贷用户：\r\n     经过团队为期两个月的筹备、测试，p2p信贷终于和各位朋友见面了！\r\n \r\n     您在p2p信贷上能够接触到全新的借款和理财模式，体验到技术进步带来的便捷与实惠。也欢迎各位邀请自己的亲戚、朋友、同事来使用p2p信贷，让更多的人能够感受到网络互助平台带来的前所未有的借贷体验。\r\n \r\n     为庆祝网站上线，网站目前免收成交费用。请大家把握机会，多多尝试借款~~\r\n \r\n \r\n \r\np2p信贷团队\r\n2013年3月4日');
INSERT INTO `%DB_PREFIX%article_copy` (`id`, `title`, `icon`, `content`, `cate_id`, `create_time`, `update_time`, `add_admin_id`, `is_effect`, `rel_url`, `update_admin_id`, `is_delete`, `click_count`, `sort`, `seo_title`, `seo_keyword`, `seo_description`, `uname`, `sub_title`, `brief`) VALUES
(71, '123', '', '<div class="article_info" sizcache="43" sizset="7"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-weight:bold;font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">借款协议</span><span style="font-weight:bold;font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><!--?xml:namespace prefix = o ns = "urn:schemas-microsoft-com:office:office" /--><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">甲方（出借人）：</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p><table style="padding-right:0.75pt;padding-left:0.75pt;padding-bottom:0pt;margin-left:-0.5pt;width:239.5pt;padding-top:0pt;border-collapse:collapse;mso-table-layout-alt:fixed;" align="center"><tbody><tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:#000000 0.5pt solid;padding-left:0.75pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:73pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="97"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">无忧E贷用户名</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:#000000 0.5pt solid;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:52.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="70"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">借出金额</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:#000000 0.5pt solid;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:46pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="61"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">借款期限</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:#000000 0.5pt solid;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:67.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="90"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">每月应收本息</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n<tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:73pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="97"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">小王</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:7.5pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:52.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="70"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:right;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥2,000</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:46pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="61"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">12个月</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:7.5pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:67.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="90"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:right;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥177.69</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n<tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:73pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="97"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">小明</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:7.5pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:52.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="70"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:right;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥2,000</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:46pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="61"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">12个月</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:7.5pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:67.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="90"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:right;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥177.69</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n<tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:73pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="97"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">小李</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:7.5pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:52.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="70"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:right;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥2,000</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:46pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="61"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">12个月</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:7.5pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:67.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="90"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:right;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥177.69</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n<tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:73pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="97"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">小赵</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:7.5pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:52.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="70"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:right;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥2,000</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:46pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="61"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">12个月</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:7.5pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:67.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="90"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:right;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥177.69</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n<tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:73pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="97"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">小红</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:7.5pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:52.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="70"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:right;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥2,000</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:46pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="61"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">12个月</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:7.5pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:67.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="90"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:right;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥177.69</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n<tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:73pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="97"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">总计</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:7.5pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:52.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="70"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:right;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥10,000</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:46pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="61"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:center;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">12个月</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:7.5pt;border-top:medium none;padding-left:0.75pt;padding-bottom:0pt;border-left:medium none;width:67.75pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="90"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;text-align:right;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥888.48</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">注：因计算中存在四舍五入，最后一期应收本息与之前略有不同</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">乙方（借款人）：</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">无忧E贷用户名：小洲</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">丙方（见证人）：</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">无忧</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">E贷【</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">龙岩市中领投资管理有限公司</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">】</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">联系方式：龙岩市新罗区</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-weight:bold;font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">鉴于：</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">1、丙方是一家在龙岩市新罗区合法成立并有效存续的有限责任公司，拥有115.28.137.109&nbsp;网站（以下简称“该网站”）的经营权，提供信用咨询，为交易提供信息服务；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">2、乙方已在该网站注册，并承诺其提供给丙方的信息是完全真实的；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">3、甲方承诺对本协议涉及的借款具有完全的支配能力，是其自有闲散资金，为其合法所得；并承诺其提供给丙方的信息是完全真实的；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">4、乙方有借款需求，甲方亦同意借款，双方有意成立借贷关系；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">各方经协商一致，于&nbsp;201</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">4</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;年&nbsp;</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">6</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;月&nbsp;20&nbsp;日签订如下协议，共同遵照履行：</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">第一条&nbsp;借款基本信息</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p><table style="padding-right:0.75pt;padding-left:0.75pt;padding-bottom:0pt;margin-left:-0.5pt;width:431.9pt;padding-top:0pt;border-collapse:collapse;mso-table-layout-alt:fixed;" align="center"><tbody><tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:#000000 0.5pt solid;padding-left:7.5pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:76pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="101"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">借款详细用途</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:#000000 0.5pt solid;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:355.9pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="474"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">短期周转</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n<tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:76pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="101"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">借款本金数额</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:355.9pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="474"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥10,000</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n<tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:76pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="101"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">月偿还本息数额</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:355.9pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="474"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">￥888.48&nbsp;(因计算中存在四舍五入，最后一期还款金额与之前略有不同，为￥888.45)</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n<tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:76pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="101"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">还款分期月数</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:355.9pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="474"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">12&nbsp;个月</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n<tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:76pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="101"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">还款日</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:355.9pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="474"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">每月&nbsp;9&nbsp;日（24:00前，节假日不顺延）</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n<tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:76pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="101"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">还款起止日期</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:355.9pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="474"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">201</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';">4</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;年&nbsp;</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';">6</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;月&nbsp;20&nbsp;日起，至&nbsp;201</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';">5</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;年&nbsp;</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';">6</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;月&nbsp;20&nbsp;日止</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">第二条&nbsp;各方权利和义务</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';text-decoration:underline;mso-spacerun:''yes'';">甲方的权利和义务</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">1、&nbsp;甲方应按合同约定的借款日将足额的借款本金支付给乙方。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">2、&nbsp;甲方享有其所出借款项所带来的利息收益。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">3、&nbsp;如乙方违约，甲方有权要求丙方提供其已获得的乙方信息。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">4、&nbsp;无须通知乙方，甲方可以根据自己的意愿进行本协议下其对乙方债权的转让。在甲方的债权转让后，乙方需对债权受让人继续履行本协议下其对甲方的还款义务，不得以未接到债权转让通知为由拒绝履行还款义务。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">5、&nbsp;甲方应主动缴纳由利息所得带来的可能的税费。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">6、&nbsp;如乙方还款不足约定本金、利息及违约金的，甲方同意各自按照其借出款项比例收取还款。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#333333;font-family:宋体;">7</span><span style="font-size:10pt;color:#333333;font-family:宋体;">、</span><span style="font-size:10pt;color:#333333;font-family:宋体;">募集期内（出借人资金被冻结的次日至丙方指令向借款人放款的前一日）出借人不享有任何利息。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';text-decoration:underline;mso-spacerun:''yes'';">乙方权利和义务</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">1、&nbsp;乙方必须按期足额向甲方偿还本金和利息。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">2、&nbsp;乙方必须按期足额向丙方支付借款管理费用。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">3、&nbsp;乙方承诺所借款项不用于任何违法用途。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">4、&nbsp;乙方应确保其提供的信息和资料的真实性，不得提供虚假信息或隐瞒重要事实。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">5、&nbsp;乙方有权了解其在丙方的信用评审进度及结果。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">6、&nbsp;乙方不得将本协议项下的任何权利义务转让给任何其他方。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';text-decoration:underline;mso-spacerun:''yes'';">丙方的权利和义务</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">1、甲乙双方同意丙方有权代甲方每期收取甲方出借款项所对应的乙方每期偿还的本息，代收后按照甲方的要求进行处置。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">2、甲方同意向乙方出借相应款项时，已委托丙方在本协议生效时将该笔借款直接划付至乙方账户。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#333333;font-family:宋体;">3、</span><span style="font-size:10pt;color:#333333;font-family:宋体;">若由于银行或第三方支付休假原因或系统问题延迟交易，导致款项交付延期7日以内，则丙方不承担任何责任。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">4</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">、甲乙双方同意丙方有权代甲方在有必要时对乙方进行贷款的违约提醒及催收工作，包括但不限于电话通知、发律师函、对乙方提起诉讼等。甲方在此确认明确委托丙方为其进行&nbsp;以上工作，并授权丙方可以将此工作委托给其他方进行。乙方对前述委托的提醒、催收事项已明确知晓并应积极配合。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">5</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">、丙方有权按月向乙方收取双方约定的借款管理费，并在有必要时对乙方进行违约提醒及催收工作，包括但不限于电话通知、发律师函、对乙方提起诉讼等。&nbsp;丙方有权将此违约提醒及催收工作委托给其他方进行。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">6</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">、丙方接受甲乙双方的委托行为所产生的法律后果由相应委托方承担。如因乙方或甲方或其他方（包括但不限于技术问题）造成的延误或错误，丙方不承担任何责任。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">7</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">、丙方应对甲方和乙方的信息及本协议内容保密；如任何一方违约，或因相关权力部门要求（包括但不限于法院、仲裁机构、金融监管机构等），丙方有权披露。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">第三条&nbsp;借款管理费及居间服务费</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">1、&nbsp;在本协议中，“借款管理费”和“居间服务费”是指因丙方为乙方提供信用咨询、评估、还款提醒、账户管理、还款特殊情况沟通等系列信用相关服务而由乙方支付给丙方的报酬。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">2、&nbsp;对于丙方向乙方提供的一系列信用服务，乙方同意在借款成功时向丙方支付本次借款本金的2%(人民币200)作为居间服务费，此笔费用乙方委托丙方在借款成功时从借款本金中扣除缴纳。在还款期间，乙方每月向丙方支付借款本金的0.3%，作为借款管理费用，共需支付12期，借款管理费的缴纳时间与乙方向甲方支付本息的还款日一致。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">3、&nbsp;如乙方和丙方协商一致调整借款管理费时，无需经过甲方同意。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">第四条&nbsp;违约责任</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">1、合同各方均应严格履行合同义务，非经各方协商一致或依照本协议约定，任何一方不得解除本协议。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">2、任何一方违约，违约方应承担因违约使得其他各方产生的费用和损失，包括但不限于调查、诉讼费、律师费等，应由违约方承担。如违约方为乙方的，甲方有权立即解除本协议，并要求乙方立即偿还未偿还的本金、利息、罚息、违约金。此时，乙方还应向丙方支付所有应付的借款管理费。如本协议提前解除时，乙方在网站的账户里有任何余款，丙方有权按照本协议第四条第3项的清偿顺序将乙方的余款用于清偿，并要求乙方支付因此产生的相关费用。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">3、乙方的每期还款均应按照如下顺序清偿：</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">（1）根据本协议产生的其他全部费用；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">（2）罚息；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">（3）逾期管理费；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">（4）拖欠的利息；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">（5）拖欠的本金；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">（6）拖欠丙方的借款管理费；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">（7）正常的利息；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">（8）正常的本金；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">（9）丙方的借款管理费；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">4、乙方应严格履行还款义务，如乙方逾期还款，则应按照下述条款向甲方支付逾期罚息，自逾期开始之后，逾期本金的正常利息停止计算。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">罚息总额&nbsp;=&nbsp;逾期本息总额×对应罚息利率×逾期天数；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p><table style="padding-right:0.75pt;padding-left:0.75pt;padding-bottom:0pt;margin-left:-0.5pt;width:165pt;padding-top:0pt;border-collapse:collapse;mso-table-layout-alt:fixed;" align="center"><tbody><tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:#000000 0.5pt solid;padding-left:7.5pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:53.5pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="71"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">逾期天数</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:#000000 0.5pt solid;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:47.5pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="63"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">1—30天</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:#000000 0.5pt solid;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:64pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="85"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">31天及以上</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n<tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:53.5pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="71"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">罚息利率</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:47.5pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="63"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">0.05%</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:64pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="85"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">0.1%</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">5、乙方应严格履行还款义务，如乙方逾期还款，则应按照下述条款向丙方支付逾期管理费：</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">逾期管理费总额&nbsp;=&nbsp;逾期本息总额×对应逾期管理费率×逾期天数；</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><o :p=""></o></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p><table style="padding-right:0.75pt;padding-left:0.75pt;padding-bottom:0pt;margin-left:-0.5pt;width:196.5pt;padding-top:0pt;border-collapse:collapse;mso-table-layout-alt:fixed;" align="center"><tbody><tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:#000000 0.5pt solid;padding-left:7.5pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:85pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="113"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">逾期天数</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:#000000 0.5pt solid;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:47.5pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="63"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">1—30天</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:#000000 0.5pt solid;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:64pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="85"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">31天及以上</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n<tr><td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:#000000 0.5pt solid;width:85pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:0.5000pt solid #000000;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="113"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">逾期管理费费率</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:47.5pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="63"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">0.1%</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n<td style="border-right:#000000 0.5pt solid;padding-right:0.75pt;border-top:medium none;padding-left:7.5pt;padding-bottom:0pt;border-left:medium none;width:64pt;padding-top:0pt;border-bottom:#000000 0.5pt solid;mso-border-left-alt:none;mso-border-right-alt:0.5000pt solid #000000;mso-border-top-alt:0.5000pt solid #000000;mso-border-bottom-alt:0.5000pt solid #000000;" valign="center" width="85"><p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">0.5%</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';"><o :p=""></o></span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">&nbsp;</span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;" sizcache="43" sizset="7"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';">6、如果乙方逾期支付任何一期还款超过30天，或乙方在逾期后出现逃避、拒绝沟通或拒绝承认欠款事实等恶意行为，本协议项下的全部借款本息及借款管理费提前到期，乙方应立即清偿本协议下尚未偿付的全部本金、利息、罚息、借款管理费及根据本协议产生的其他全部费用。</span><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';" sizcache="43" sizset="7"><o :p=""></o><!-- div <--></span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;" sizcache="43" sizset="7"><span style="font-size:10pt;color:#444444;font-family:''宋体'';mso-spacerun:''yes'';"><br />\r\n</span></p>\r\n<p class="p0" style="margin-top:0pt;margin-bottom:0pt;line-height:18pt;" sizcache="43" sizset="7"><font color="#444444" face="宋体" size="2">1', 8, 1402360368, 1402360446, 0, 1, '', 0, 1, 0, 56, '', '', '', '', '123', '');
INSERT INTO `%DB_PREFIX%article_copy` (`id`, `title`, `icon`, `content`, `cate_id`, `create_time`, `update_time`, `add_admin_id`, `is_effect`, `rel_url`, `update_admin_id`, `is_delete`, `click_count`, `sort`, `seo_title`, `seo_keyword`, `seo_description`, `uname`, `sub_title`, `brief`) VALUES
(13, '审核之借出者篇', '', '在p2p信贷上成为借出者十分简便，用户免费注册后通过手机绑定，身份证验证和借出学习即可成为p2p信贷借出者，成为借出者后用户可以选择符合自己标准的借款列表借出。关于借款列表的选择，我们有专门的建议，这里主要介绍一下信用审核对于借出者选择的影响。p2p信贷的信用审核系统包括了基本信用审核（目前包括身份证明、工作证明、学历证明、社区网认证）和附加信用审核（目前包括购车证明、微博认证、信用报告认证、收入认证、结婚证明）两个方面。要通过信用审核要求借入者上传自己的相关资料，p2p信贷的审核人员对这些资料进行严格审查，尽可能确定资料的真实性。基本信用审核表明借入者的真实性和基本信用情况（经验表明工作、学历在很大程度上说明了借入者的信用状况），而附加信用审核的材料获得有一定的难度，且具有一定门槛（购车证明、完税证明、个人信用报告等审核对借出者的经济基础有较高要求），借入者能够通过附加信用审核说明他对借款更加重视，也具备更强的还款能力。通过审核的资料在借入者发布借款请求时会部分披露给借出者，从而让借出者更加了解借入者的情况，以便作出正确的判断。当借入者发布借款时，为保护借出者的利益，我们要求借入者至少要通过基本信用审核。 在p2p信贷上选择借款列表时，除了要看借入者的借款描述和用途外，更要看借入者披露的信息是否足以证明自己的还款意愿和能力（一般来说，著名高校毕业、就职于知名企业或政府部门、社区网使用活跃、已购车、已婚、收入较高等都能直接或间接说明借入者还款意愿和能力更强）。为保护借出者的利益，借入者要在p2p信贷上披露信用信息必须通过相应的认证，也就是说借入者通过越多的审核借出者对借入者进行判断的依据也就越多。所以，借出者应尽量选择基本信用状况优秀或是基本资料并不出众但是通过了较多附加信用审核的借入者。特别地，当借入者发布较高额的借款请求时，除非通过其它渠道对借入者有所了解，否则我们建议借出者要主动要求借入者通过更多的附加信用审核（可以通过借款列表内的留言板进行留言）。', 6, 1359133133, 1359962803, 0, 1, '', 0, 0, 0, 28, '', '', '', '', '', ''),
(14, '审核之借入者篇', '', '在p2p信贷上申请成为借入者，完成基本信用审核后才可以发布借款，基本信用审核是p2p信贷审核的门槛，提交基本信用审核申请的难度较低，借入者通过基本信用审核后即可发布借款请求。附加信用审核作为基本信用审核的补充，能够提高借入者的信用等级，增加借出者对借入者的信任，提高借款成功率。 p2p信贷的基本信用审核目前包括身份证认证，学历认证，工作认证和社区网认证。要通过基本信用审核需要提供身份证原件的照片或扫描件，中国高等教育学生信息网学历认证在线验证码（登录学信网注册后即可方便获得），工作证明原件照片或扫描件及常使用的社区网账号（目前仅限于开心网和人人网），这些材料获取容易，且包括了用户的基本信息（借入者在发布借款请求时，我们会在保护用户隐私的前提下有选择的披露部分借入者信息以便借出者作出判断），能够让借出者对借入者有初步了解。 附加信用审核目前包括新浪微博认证，收入证明，个人信用报告认证，购车证明，结婚证明。通过附加信用审核可以提高信用等级，等级越高，借款成功的可能性越大，借款利率也会相应降低。因而我们提倡借款前尽可能多地完成附加信用审核。某些附加信用审核材料的获得较基本信用审核困难一些，比如个人信用报告，完税证明，等都需要到专门的机构获得。虽然材料的获取有一定难度，但是只要您提供的材料真实，通过这些审核后借出者对您的了解和信任度会有显著提高，借款也更易成功。', 6, 1359133185, 1359962741, 0, 1, '', 0, 0, 0, 29, '', '', '', '', '', ''),
(15, '选择借款列表', '', '借款列表是p2p信贷借入者发出的借款请求。借款列表中包括借款数额、借款目的、借款期限和借款人对如何使用这笔借款的描述等信息。通过借款列表您还可以了解借款人已上传哪些信用审核资料及该借款人的信用等级。p2p信贷上有许多借款列表可供选择。点击“我要借出”标签，您就可以浏览所有的借款列表。“正在进行中的列表”显示的是目前可以投标的一些借款，“等待复审的列表”显示的是已经完成招标，正在审核中的借款。您也可以查看所有借款列表，并通过招标剩余时间、借款数额、借款进度、借款人信用等级等条件，进一步详细搜索。 您可以根据p2p信贷为您提供的信息选择适合您投资的借款列表。如果您是风险爱好者，您可以选择信用等级较低、借款期限较长但利息率高的借款列表。如果您是风险规避者，您可以选择信用等级高、借款期限短但利息率较低的借款列表。p2p信贷保证您完全享有真实、有效的借款人信息，以便您做出明智的选择，这样您的投资就会有稳定、丰厚的回报。 想了解更多投资策略，请参考“投资策略”与“分散投资降低风险”。', 6, 1359133220, 1359962669, 0, 1, '', 0, 0, 0, 30, '', '', '', '', '', ''),
(16, '借款失败原因', '', '<p>1．信息太少，有的借款者发布的借款列表内容很少，甚至只有一个图标或者一张没有真实头像的图片，没有明确的借款原因。这样的借款列表不能让人产生信任感，借出者会因为真实信息太少又不能保证按时还款而不会投标。</p>\r\n<p>&nbsp;2．借款的用途不可靠，有的借款者借款用途风险太大或者不合法，有的甚至带有赌博性质，比如要去股市再赌一把等，这种风险太大的借款项目一般出借人也不会选择。&nbsp;</p>\r\n<p>3．借款描述存在明显问题，比如有的借款列表描述中，每月收入除去每月应还款数额后剩余金额不足以抵消每月开支，没有足够的还款能力。</p>\r\n<p>4．低级的骗子，有的借入者直接抄袭别人的借款列表信息，但是一些基本信息存在明显的矛盾之处。&nbsp;</p>\r\n<p>5．信誉不好者，在p2p信贷有逾期行为的借款者会被记录到黑名单中，随着逾期时间的增长，我们会逐步公布逾期借款者的信息，有了逾期记录的借款者再次借款会有一定难度。&nbsp;</p>\r\n<p>6．发布借款列表后即消失，对于借出者的合理的提问要求不予回应。&nbsp;</p>\r\n<p>7．个人基本情况并不优秀，而且通过的附加信用审核很少或是没有通过附加信用审核。</p>', 6, 1359133288, 1359962598, 0, 1, '', 0, 0, 0, 31, '', '', '', '', '', ''),
(17, '其他借出技巧', '', '<p>1.不要盲目跟投 盲目跟投是初级借出者常见的错误之一。不管借款人的信用级别，不看借款列表详情，就亦步亦趋的跟着其他出借人投标，这是危险且对自有资金不负责的行为。一些明显存在较大风险的借款列表很可能由于一些借出者的盲目跟投而满标，进而产生潜在风险。&nbsp;</p>\r\n<p>2.不要在投资中夹杂过多感情因素 p2p借贷系统建立的初衷是让大家帮助大家，但归根结蒂对于出借人来说这里是一个投资的平台是一个理财的途径，如果出借人承担了与回报不相符的风险那么出借人对于借入者的帮助也是无力和不可持续的。所以，借出者不要完全基于感情因素（喜欢，同情等）去投标，在帮助人的同时一定要考虑自己的风险与回报是否匹配。&nbsp;</p>\r\n<p>3.关注借入者的网络行为 我们生活在网络互动日益频繁，网络生活占日常生活比重日益加大对时代，p2p借贷系统也正是在这样的大环境下应运而生。所以，在判断借款人信用的时候除了以参考p2p借贷系统给出的信用级别为主外，还可以关注该用户的网络行为。比如他/她的网络日志，他/她的社交网站，微博等等。通常来讲，一个用户可考证的网络行为可以从一个侧面在某种程度上反映出他/她的信用水平。&nbsp;</p>\r\n<p>4.主动向借入者提问 经验表明优秀的贷款审核员对借入者的人工判断在某些时候甚至会优于最好的信用模型。所以，p2p借贷系统鼓励借出者对借入者提出与借款相关的问题，或是要求借入者提供一些附加的信用材料。在借款列表中的留言板上对借入者提问，借入者会在第一时间得到通知。当借入者回答您的提问时，您也会收到邮件提醒。&nbsp;</p>\r\n<p>5.关注借款人信用等级以外的其他信息 毋庸置疑，借款人的信用等级在很大程度上说明了借款人的信用情况，但是有时通过借入人是哪个院校毕业的、他/她做过哪些认证、他/她之前的还款情况怎样、他/她的借款用途是什么、他/她准备如何还款等其他信息也能在一定程度上判断出借款人是否有还款能力和还款意愿。</p>', 6, 1359133338, 1359133338, 0, 1, '', 0, 0, 0, 32, '', '', '', '', '', ''),
(18, '提高借款成功率', '', '<p>提高借款成功率 借款能否成功主要看出借人对借入者的看法，如果借入者有良好的还款意愿和还款能力，且能够提供真实的证明材料，则出借人更愿意对其投资。具体来说，一笔成功的借款需要具备的条件有真实的借款用途，真诚的借款意愿，充足的还款能力，可靠的证明材料。简而言之就是，提供真实的资料，增加信用等级，以真诚打动出借人。&nbsp;</p>\r\n<p>分开来讲要注意的地方有：</p>\r\n<p>&nbsp;　　1．尽量通过更多的附加信用审核。附加信用审核的通过有一定的难度，通过附加信用审核可以证明借入者的还款意愿和还款能力，而且每通过一项审核，审核人员会根据您提供的材料进行评分，信用分数越高，信用等级相应地也会提高，不喜欢高风险的借出者也比较愿意对您的信用列表投标。&nbsp;</p>\r\n<p>　　2．借款时在不泄露个人隐私前提下提供尽可能多的披露个人信用信息，目前可披露的信息包括毕业院校，工作单位，社区网使用状况，婚姻状况，购车状况，信用报告情况，收入状况等，其中有些内容借款时必须披露，有些则可以在通过相应的认证后选择性的披露。通常著名高校毕业，知名企业或政府机关就业，社区网站活跃，已婚，购车等情况比较吸引借出者。同时，借款描述中详细的借款用途，可靠的还款来源，合理认真的收支计划等也能反映借入者的认真态度，更容易筹集到借款。&nbsp;</p>\r\n<p>　　3．可以将自己的借款分享到人人网，开心网或新浪微博，吸引有意愿和能力的好友来投标，同时好友的关注，投标及评论也可以吸引其他借出者。</p>', 6, 1359133398, 1359133398, 0, 1, '', 0, 0, 0, 33, '', '', '', '', '', ''),
(19, '如何判断借款列表', '', '在p2p借贷系统上借出闲置资金，在帮助别人的同时获取稳定的收入， 实现社会资本的再分配，是一种双赢的选择。但是平台上发布借款的人数众多且参差不齐，必然存在借款者不能按时还款的情况。为了保证自己的资金能够收回，如何选择可靠的借款列表进行投资就需要慎重考虑。对于大多数投资人来说，一个大原则就是做熟不做生，投稳不投险。 对于朋友发布的借款列表，可以通过私下亲自接触来了解，这种情况能够获取第一手资料，稳定性更高。对于朋友的朋友发布的借款列表，可以通过朋友间接了解，或经朋友介绍直接了解。 对于陌生人发布的借款列表，首先要看他/她的信用等级。等级可以从很大程度上反映借入者的信用水平，一般而言信用等级越高违约的可能性就越低。其次要看他通过的信用审核，基本信用审核（目前包括身份证明、工作证明、学历证明、社区网认证）可以表明借入者身份的真实性和基本信用情况，成为借入者发布借款至少要通过基本信用审核；附加信用审核（目前包括购车证明、微博认证、信用报告认证、收入认证、结婚证明）能反映其对借款的重视程度，也能表明其还款能力。所以借出者可以选择基本情况优秀或是通过较多附加信用审核的借出者。最后要看一下他/她的借款描述，以及借款条件。借款用途和还款计划描述详尽可靠，且借款数额和借款利率与借款描述和借款人信用等级相符的借款人较为可靠。如果经过以上判断还有疑问的可以通过借款列表的留言板给借款者留言，通过借款者的回答来更进一步了解借款者。', 6, 1359133440, 1359133440, 0, 1, '', 0, 0, 0, 34, '', '', '', '', '', ''),
(20, '借入者注意事项', '', '<p>用户到p2p信贷发布借款，基本上都是近期有资金需求想要尽快筹到所需资金的，有的借入者对于借贷流程不熟悉，没有成功借到钱。借款失败的原因可能有很多，p2p信贷给出的建议是：作为借入者当有所为有所不为。&nbsp;</p>\r\n<p>有所为：</p>\r\n<p>　　1．尽可能详尽地完善个人资料，完成信用审核，资料要真实可靠，投资者都会偏向于比较可靠的借入者，真实的照片，可查询的社区网站，通过较多的附加信用审核等等都可以获得更多人的关注。&nbsp;</p>\r\n<p>　　2．邀请好友加入，熟悉的人对彼此都很了解，会有更强的投资意愿。而且好友的评价也可以成为投资者的参考意见。&nbsp;</p>\r\n<p>　　3．尽可能详细耐心地回答借出者的提问，通过沟通加深彼此的了解，对各种可能出现的情况提前进行说明，借出者在获得自己想要的信息之余还会对您的耐心细心留下深刻的印象。&nbsp;</p>\r\n<p>有所不为：&nbsp;</p>\r\n<p>　　1．不提供任何虚假信息。p2p信贷的后台审核人员对于用户资料的甄别非常认真严格，能够避免大部分欺诈借款的通过，而且p2p信贷用户之间的交流也可以让一些骗子无所遁形，不要存在侥幸心理，一旦被识别出虚假信息，用户信用会受到非常大的影响，信用恢复也非常困难，没有人愿意将钱投给有诈骗前科的人。&nbsp;</p>\r\n<p>　　2．在不了解平台原理借贷流程的情况下发布借款，屡次流标，有了多次流标记录会让借出者对用户产生怀疑，再次发布借款的成功率也不会太高。&nbsp;</p>\r\n<p>　　3．不要将自己的一些隐私如身份证号，详细住址等公布在公共区域，警惕骗子利用您的信息行骗。 希望您能够在p2p信贷成功借到资金。</p>', 6, 1359133508, 1359962338, 0, 1, '', 0, 0, 0, 35, '', '', '', '', '', ''),
(21, '投资策略', '', '<font color="#444444" face="Arial, Tahoma, Helvetica, 宋体"><span style="line-height:19px;">一旦您决定通过p2p信贷进行投资，您就可以利用我们为您提供的工具、数据和p2p信贷独一无二的优势——透明性，开始构建专属于您的投资组合。 在您构建投资组合时先要明确的是您的风险偏好和承受损失的能力。通常来讲较高的收益会对应较高的风险，低风险也只会带来较低的收益。具体到p2p信贷来讲，信用等级高、信用信息优秀（毕业于著名高校，在有实力的公司任职等）且信用资料完善的借入者违约几率极低，所以支付给您的利息也会相对较低（还是高于一般理财产品），较低信用级别或是信用信息并不出众的借入者则会支付更多的利息，但是相对而言违约率也会有所增加。通过浏览借款人的详细资料（包括毕业院校，婚姻状况，工作情况，p2p信贷借款记录，借款描述，财务状况等）、信用等级，p2p信贷审核记录以及亲身与之交流，您可以挑选出更适合您风险偏好的贷款。如果您承受风险的能力较强，为了追求更高的收益您可以制定较为激进的投资策略并在您的投资组合中更多的加入信用级别相对较低的借入者，反之，如果您厌恶风险，追求更加稳定的回报，您可以制定更加稳健的投资策略在您的投资组合中更多的考虑高信用级别的借款人。同时，您的投资策略还应随着您的财务状况的变化做出相应的调整。</span></font>', 6, 1359133555, 1359962286, 0, 1, '', 0, 0, 0, 36, '', '', '', '', '', ''),
(22, '无抵押贷款骗局', '', '<p>目前全国很多地方出现了小额无抵押贷款信息，这些公司均是不限地区，也不需要任何抵押，只需身份证就可以放贷款。事实证明这些信息基本都是欺诈信息。 无抵押贷款，正规金融机构只有个别银行推出了公务员担保的小额无抵押贷款及农村信用社的多户联保，而且需要按照正规流程:到银行面签合同，提供工资卡的银行对帐单等。事实上这些业务在实践中也不断出现问题，甚至多数已经名存实亡，或者不断提高要求导致贷款量逐渐萎缩。至于民间机构（包括新成立的小额贷款公司），则多数不敢涉足，或者欲尝辄止，难成气候。 纵观目前出现的骗局，他们都有一定的行为模式，共同之处可能包括：&nbsp;</p>\r\n<p>　　1．公司名头比较吓人，所谓的“xx贷款集团”等，甚至有个别还提供营业执照复印件，造假痕迹十分明显。事实上，所谓的“xx贷款集团”，根本不可能在工商部门登记注册，即使提供的营业执照复印件，也是仿造的；&nbsp;</p>\r\n<p>　　2．一般只提供手机号、联系人和QQ，无固定电话，无办公地址，通过网上搜索该号码可以看到在全国不同城市的业务都是用同一号码，非常有问题；&nbsp;</p>\r\n<p>　　3．一般都说明公司在全国各大中城市均设有分支机构，各地都可以方便的办理业务；&nbsp;</p>\r\n<p>　　4．放贷条件十分宽松，手续简便，只需提供基本资料如身份证，户口本或营业执照，无需抵押；&nbsp;</p>\r\n<p>　　5．利率看似合理，月息1%—3%不等；&nbsp;</p>\r\n<p>　　6．当借款人联系后，骗子们会找出各种理由要求先收取前期费用（如预付利息，律师费，核实费，保险费，手续费，保证金等）；&nbsp;</p>\r\n<p>　　7．当借款人付费后，发现骗子再也无法联系上；&nbsp;</p>\r\n<p>p2p借贷系统在这里真诚提醒您：&nbsp;</p>\r\n<p>　　1．请到对方公司进行实地查看，并签订正式合同。&nbsp;</p>\r\n<p>　　2．请仔细辨别公司是否为正当经营的企业。&nbsp;</p>\r\n<p>　　3．请不要在贷款未到账之前支付任何前期费用。 p2p信贷提供一个借入借出者自由交流的平台，借入借出者的准入都要求通过实名身份验证，发布借款需要通过各项审核，借款完成放标前需要通过视频验证，电话验证各项验证，尽可能的保证借款的安全，但是我们的措施不能做到万无一失，我们通过审核认证等行为尽可能详细地了解用户信息，对用户的投资理财给出专业的建议，您可以基于我们的建议作出自己的决定。</p>', 6, 1359133635, 1359962237, 0, 1, '', 0, 0, 0, 37, '', '', '', '', '', ''),
(23, '新手上路', '', '如果您是一个投资新手，不知道从何开始，p2p信贷是您不二的选择，我们为您提供流水化的、简单的投资过程，帮您实现轻松理财。 信息的透明度是我们一贯坚持的理念。p2p信贷为您提供完全透明、真实的信息，使您能够做出正确的投资选择。通过借款人的信用记录、投标进程的即时更新，您可以全程了解您投资的去向。另外，很重要的一点是您可以了解您把钱借给了谁，用做什么用途。我们的借款人是真实存在的个体，而不是像一些公司那样，让您无从得知投资的用途。 作为一个投资新手，您可以阅读一些有关投资方面的书，也可以向身边的朋友寻求一些建议。p2p信贷也为您提供了一个简单易行的理财方法。但是这并不意味着在p2p信贷投资没有任何风险，您也有可能遇到不按时还款的借款人、甚至坏账。这就是我们为什么建议您分散投资，使您的投资组合多样化。详情请参考“分散投资降低风险”。', 6, 1359133662, 1359962205, 0, 1, '', 0, 0, 0, 38, '', '', '', '', '', ''),
(24, '分散投资降低风险', '', 'p2p借贷系统网络平台的一大优势在于丰富、透明、全面的信息，您可以轻松接触到所有借入者的必要资料，加之平台最低允许单笔50元的投资，您可以轻松投资多个借入者。 投资多个借入者的一大好处在于有效降低风险。虽然不管投资多么分散单笔投资的违约率是不会改变的，但是由于资金分散，单笔投资规模较小，一笔投资不能收回不会严重影响收益率。反之，如果投资过于集中，一旦出现违约会对投资收益造成严重影响甚至给您带来损失。因而我们建议您在投资时尽量将资金分成多笔投出，不要集中在一笔或者几笔上。具体应该分散到什么程度跟您的投资策略息息相关，当您更多的选择低信用级别的借入者以追求高收益时，您应适当加大分散程度。反之，当您更多的选择高信用级别的借款人以追求稳定的回报时，可以适当降低分散程度从而减少您的工作量。原则上讲，我们建议您将手中的资金分成至少20份投出。 另外，分散投资可以让您帮助更多的借入者，在投资的同时享受帮助他人的乐趣。分散投资还可以让您有效的建立投资组合，具体请参考“投资策略”。', 6, 1359133692, 1359133692, 0, 1, '', 0, 0, 0, 39, '', '', '', '', '', ''),
(25, '风险与收益', '', '在任何投资中，收益和风险都形影相随，收益以风险为代价，风险用收益来补偿。投资者投资的目的是为了得到收益，与此同时，又不可避免地面临着风险，在p2p信贷投资也是如此。 通过p2p信贷，您可以注册成为借出者并投资购买一个或多个借款列表中的部分或者全部债权。当一个借入者加入p2p信贷并提交了相应的资料后（包括工作证明、社区网证明、学历证明、身份验证、微博验证、购车证明、结婚证明、个人信用报告、收入证明等），我们会严格审查资料，尽可能确定资料的真实性，并利用我们的信用评估系统授予该借入者一个p2p信贷信用等级。通过审核的资料会在借入者发布借款时部分的披露给借出者，以便借出者做出正确的判断（一般来说，著名高校毕业、就职于知名企业或政府部门、社区网使用活跃、已购车、已婚、收入较高等都能直接或间接说明借入者还款意愿和能力更强）。而借入者的信用等级则由其通过审核的数量和其之前在网站上的借贷行为决定。通常，信用等级越高披露的信用资料越优秀出现违约的几率也就越小，反之则违约几率加大。 更小的违约几率代表更加确定的收益，但是由于借入者信用级别较高，或是他的信用资料很优秀时，她/他所接受的利息通常较低。因而投资这类借入者通常会带来风险小、稳定但是较低的收益。反之，较低的信用级别代表相对较大的风险，但当借入者信用级别较低，且信用资料并不出众时，她/他所接受的利息会相对较高。于是，投资低信用等级借入者通常会带来具有一定风险但是较高的收益。 了解了风险与回报的关系您就可以根据您的风险偏好来选择借入者进行投资了。p2p信贷网络平台的优势让您可以将您手中的资金分散投给多个借入者，于是您可以制定自己的投资策略，构建自己的投资组合。具体请参考“投资策略”于“分散投资降低风险”。', 6, 1359133719, 1359962157, 0, 1, '', 0, 0, 0, 40, '', '', '', '', '', ''),
(26, '信用等级的解读', '', '最近，部分用户反映不是很理解我们的信用等级，我在这里做一下说明。如果大家读过本栏目中的“风险与收益”、“投资策略”以及“如何判断借款列表” 那么一定知道借入者信用水平有高有低，潜在的违约率也不尽相同。目前，p2p借贷系统根据借入者提交的信用审核资料将借入者分成7个信用等级，由高到低分别是 AA、A、B、C、D、E、HR。其中，AA为信用水平最高级，代表极低的违约率，同时，这类借款人通常接受的利率也较低。反过来，HR则代表低信用水平，潜在的违约风险也较其他信用等级为高，所以需要提供更高的利息来弥补出借人承担的风险。具体分数线以及等级的划分可以参考“我的帐户”内的“信用审核”页面。 p2p借贷系统信用审核', 6, 1359133754, 1359133754, 0, 1, '', 0, 0, 0, 41, '', '', '', '', '', ''),
(27, '政策法规', '', '<div class="blank20"></div>\r\n<div class="f_dgray b f12">    一、民间借贷的定义</div>\r\n<div class="blank20"></div>\r\n民间借贷是指自然人之间、自然人与法人之间、自然人与其它组织之间借贷。民间借贷是《民法通则》中一种民事法律行为，行为人在具有完全民事行为能力（即年满18周岁，且不存在足以影响自身行为的精神疾病的情形）、意思表示真实，借款合同符合法律、行政法规规定，则该借款合同完全受到《合同法》等法律的保护。民间借贷是民间资本的一种投资渠道，作为银行金融的有效补充已逐渐成为民间金融的一种重要形式。<div class="blank20"></div>\r\n<div class="f_dgray b f12">    二、民间借贷的法律环境</div>\r\n<div class="blank20"></div>\r\n《国务院关于鼓励和引导民间投资健康发展的若干意见》：新36条出台，鼓励民间资本进入金融领域，发起设立金融中介服务机构。<div class="blank20"></div>\r\n《中华人民共和国合同法》从法律上肯定了民间借贷行为的合法性，并从法律层面保护出借人收回借贷资金和利息的权利。<div class="blank20"></div>\r\n《合同法》第211条：“自然人之间的借款合同对支付利息没有约定或约定不明确的，视为不支付利息。自然人之间的借款合同约定支付利息的，借款的利率不得违反国家有关限制借款利率的规定”。<div class="blank20"></div>\r\n最高人民法院《关于人民法院审理借贷案件的若干意见》第6条：“民间借贷的利率可以适当高于银行的利率，各地人民法院可以根据本地区的实际情况具体掌握，但最高不得超过银行同类贷款利率的四倍，（包含利率本数）。超出此限度的，超出部分的利息不予保护”。<div class="blank20"></div>\r\n<div class="f_dgray b f12">    三、p2p信贷的合法性</div>\r\n<div class="blank20"></div>\r\n《合同法》第二十三章“居间合同”中明确规定，居间人提供贷款合同订立的媒介服务，可依法向委托方收取相应的报酬。因此贷款服务机构的存在和服务费的收取都是符合法律规定并受法律保护的。<div class="blank20"></div>\r\np2p信贷既不吸储，也不放贷，作为一个网络信用管理及借贷服务中介机构，其业务范围和经营活动完全符合相关法律和国家的政策规定。p2p信贷将在国家法律和相关政策的指引下，为广大借款人、出借人提供优质、高效的服务。<div class="blank20"></div>\r\n<div class="f_dgray b f12">    四、政策倾向</div>\r\n<div class="blank20"></div>\r\n<a href="http://finance.qq.com/a/20111110/006098.htm?qq=0&amp;ADUIN=1053718065&amp;ADSESSION=1320928475&amp;ADTAG=CLIENT.QQ.3847_.0" target="_blank"> “央行：“民间借贷有合法性 利率不得高于银行4倍”</a><div class="blank20"></div>\r\n央行有关负责人表示，在遵守相关法律前提下，自然人、法人及其他组织间有自由借贷的权利。只要不违反法律的强制性规定，民间借贷关系都受法律保护。民间借贷是正规金融的有益补充。', 3, 1359158624, 1359961895, 0, 1, 'u:index|aboutlaws', 0, 0, 4, 42, '', '', '', 'aboutlaws', '', ''),
(28, '为什么选择p2p信贷', '', '<div style="margin-top:10px;padding:10px;">		<div class="about_title2">稳定的回报</div>\r\n		<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n		<div style="font-size:13px;line-height:20px;">			<p>在股票、债券、银行存款等传统投资方式之外，p2p信贷为您提供了一种新的投资途径，您可以将钱5.9%—23.4%不等的年利率，出借给哪些有需要的借入者，				然后每月回收本金和利息，从而获取稳定的投资回报。			</p>\r\n		</div>\r\n	</div>\r\n	<div style="margin-top:20px;padding:10px;">		<div class="about_title2">帮助他人</div>\r\n		<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n		<div style="font-size:13px;line-height:20px;">			<p>				在p2p信贷上，您可以自由的选择将钱出借给您希望帮助的群体，如医生、警察、消防员，或者创业人群等。				您也可以通过借款目的来选择您出借的对象，如教育培训借款，婚礼筹备借款等。这一切都将是您在获取稳定回报的同时，实现了帮助他人的人生价值。			</p>\r\n		</div>\r\n	</div>\r\n	<div style="margin-top:20px;padding:10px;">		<div class="about_title2">详尽客观的借入者信息</div>\r\n		<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n		<div style="font-size:13px;line-height:20px;">			<p>p2p信贷以客观公正的态度，尽最大的努力去审核借入者的每一项信用信息。包括借入者的工作情况，家庭情况，收入情况，信用情况等。				p2p信贷将这些信用信息分析整理后，最大限度地提供给出借者，以帮助出借者做出客观正确的出借抉择。			</p>\r\n		</div>\r\n	</div>\r\n	<div style="margin-top:20px;padding:10px;">		<div class="about_title2">分散投资</div>\r\n		<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n		<div style="font-size:13px;line-height:20px;">			<p>				我们同时也要提醒您，在p2p信贷的出借并不是100%安全的，借出的金额也存在一定的违约风险。然而通过p2p信贷，您可以将您的总出借金额，				以最低50元一笔的方式分散出借给很多借入者，这样的分散投资将大大降低您的整体投资风险。			</p>\r\n		</div>\r\n	</div>\r\n	<div style="margin-top:20px;padding:10px;">		<div class="about_title2">灵活的投资周期</div>\r\n		<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n		<div style="font-size:13px;line-height:20px;">			<p>				p2p信贷提供3个月、6个月、9个月、12个月、18个月、24个月、和36个月7种借款期限选择。因此出借者可以根据自己的需要，将钱投资给不一样周期的借款人。				同时，由于借入者是每月还款，因此出借者很快就可以开始回收投资，并非要等到借款到期时才可拿回本金。在回收本息的过程中，				出借者可以将回收的钱出借给其他借款人来获取更多的回报，也可将钱自由支配，用于其他用途。			</p>\r\n		</div>\r\n	</div>', 7, 1359249848, 1359961869, 0, 1, 'u:index|deals&act=about&u=choose', 0, 0, 14, 43, '', '', '', 'choose', '', ''),
(29, '投资回报', '', '<div style="margin-top:10px;padding:10px;">	<div style="font-size:13px;line-height:20px;">		<p>			通过p2p信贷，您可以将手中的富余资金出借给信用良好但缺少资金的大学生、工薪阶层、微小企业主、农民，帮助他们实现教育培训、电脑或家电购买、			装修、兼职创业、脱贫致富等理想，同时还能通过利息收入为您带来较高的稳定收益，			实现精神和物质的双重回报。根据p2p信贷的历史经验数据，资金年收益始终保持在10%以上。		</p>\r\n	</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;">	<div class="about_title2">各类型投资产品收益及风险对比分析</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;" class="dunDetail">		<table width="480" style="text-align:center;background:#d3d4d8;" border="0" cellspacing="1">			<tbody><tr bgcolor="#e1f0ff" style="font-weight:bold;height:37px;">				<td>产品</td>\r\n				<td>年收益</td>\r\n				<td>风险级别</td>\r\n				<td>流动性</td>\r\n			</tr>\r\n			<tr style="height:37px;" bgcolor="#ffffff">				<td>一年期定存</td>\r\n				<td>2.6%</td>\r\n				<td>★</td>\r\n				<td>★</td>\r\n			</tr>\r\n			<tr style="height:37px;" bgcolor="#ffffff">				<td>一年期国债</td>\r\n				<td>2.6%</td>\r\n				<td>★</td>\r\n				<td>★</td>\r\n			</tr>\r\n			<tr style="height:37px;" bgcolor="#ffffff">				<td>银行理财产品</td>\r\n				<td>3%—6%</td>\r\n				<td>★★</td>\r\n				<td>★</td>\r\n			</tr>\r\n			<tr style="height:37px;" bgcolor="#ffffff">				<td>开放式基金</td>\r\n				<td>不确定</td>\r\n				<td>★★★</td>\r\n				<td>★★★★★</td>\r\n			</tr>\r\n			<tr style="height:37px;" bgcolor="#ffffff">				<td>股票</td>\r\n				<td>不确定</td>\r\n				<td>★★★★★</td>\r\n				<td>★★★★</td>\r\n			</tr>\r\n			<tr style="height:37px;" bgcolor="#ffffff">				<td>p2p信贷</td>\r\n				<td>10%以上</td>\r\n				<td>★</td>\r\n				<td>★★</td>\r\n			</tr>\r\n		</tbody>\r\n</table>\r\n	</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;">	<div class="about_title2">一年期定期存款、国债</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			定期存款与国债的风险，在众多理财途径里面无疑最低的，然而锁定期长，2％左右的回报率，在通过膨胀日益高涨，CPI高于3％的今天，			却让资金难以抗衡通胀，从长期来看购买力将越来越低。		</p>\r\n	</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;">	<div class="about_title2">银行理财产品</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			在银行里，锁定期1年以上的理财产品，年化回报率一般在在3－6％左右，但是动辄几百万的投资门槛，将很多理财者拒之门外。相比起来，			通过p2p借贷系统借出，资金的回收情况则要灵活的多。此外，理财产品背后的还款来源则是政府的财政贷款，房地产信托等。这些对象的财务情况并非完全透明，			对于普通用户来说，往往只能看到表面的情况，难以真正理解其中的风险。		</p>\r\n	</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;">	<div class="about_title2">股票、基金</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			随着中国金融行业的发展，股票和基金已经慢慢地成为了很多人投资理财的选择。然而，股票和激励里那些复杂的概念，创业版，物联网，			有色板块，明星基金经理，内部消息等等词汇，我们已慢慢耳熟能详，我们也一次次地期望那个暴富的故事发生在我们身上，然而在现实生活中，			却往往发现并不那么给力，我们面临的更多的总是长期套牢。相比起来，通过分散投资，通过借钱还款这样简单明了的赚钱模式，获得稳定的10%以上收益，			也许更适合普通的投资者。		</p>\r\n	</div>\r\n</div>', 7, 1359250044, 1359961779, 0, 1, 'u:index|deals&act=about&u=respond', 0, 0, 14, 44, '', '', '', 'respond', '', ''),
(30, '投资风险', '', '<div style="margin-top:10px;padding:10px;">	<div class="about_title2">p2p信贷的审核机制</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			p2p信贷结合了国内外先进的信用审查及风险控制机制，形成了一整套贯穿于前期咨询、贷前审核、贷后跟进、回款管理的全面而严密的信用服务流程。			截至目前为止，p2p信贷系统上半年以来，坏账率仅为0.8%，远低于同行业1.7%的平均水平。<br />\r\n			前期审核阶段，p2p信贷系统将通过对用户的各种材料，以及电话核实的手段，来考查用户的偿还能力，信用习惯，和稳定性三方面。审核时依据的材料包括用户的工作证明，			银行流水单，个人信用报告，房产证明，结婚证明等。		</p>\r\n	</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;">	<div class="about_title2">p2p信贷系统的催收机制</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			除了前期严格的审核手段之外，若借款人出现逾期还款情况，p2p信贷将在不同的阶段进行不同程度的催收。<br />\r\n			逾期初期，p2p信贷客服将通过电话与借款人进行沟通，做出善意的还款提醒，同时了解用户的逾期原因，并提醒保持良好信用的重要性。<br />\r\n			如果p2p信贷客服沟通期间，借款人不积极配合，或者在15天以后依然不进行还款，则p2p信贷将尝试与借款人的联系人等其他联系方式进行沟通。<br />\r\n			如果借款用户恶意逃避，或者逾期超过30天，p2p信贷将把借款人的催收委托给第三方全国性催收机构协助催收，同时逐步在借款人的借款详情里公布其逾期信息。		</p>\r\n	</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;">	<div class="about_title2">分散投资，降低风险</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			p2p信贷平台，为小额资金的分散投资提供了可能，根据经济学原理，每位借款人的还款是独立性极强的事件，这样风险就被大大分散。 <br />\r\n			例如，您将10万元借给一个借入者，假设违约率为1％，年利率为12％，一旦出现那1％的机率，该借款人违约不还，那么您所承受的风险将是100%。			但是，如果您能将10万元分成100元一笔，借出给1000个违约率为1%，			年利率为12%的借款人由于不同的借款人之间有极强的独立性，在这种投资方式下损失本金的概率将会变得非常低，约等于零。		</p>\r\n	</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;">	<div class="about_title2">风险保证金体系，逾期本金垫付</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			p2p信贷的风险保证金。风险保证金在理财者的出借资金遇到回收问题时，用以补偿其本金的损失，这将在很大程度上保证理财者的资金安全。<br />\r\n			目前p2p信贷的保证金处于试运行阶段，并免费将所有E级以上用户申请的借款纳入风险保证体系。当纳入风险保证体系的借款人逾期后，风险金将向理财者垫付本金，			同时该笔借款未来的本息、罚息等收益权，将归风险保证金所有。<br />\r\n			风险保证金具体细则，将在正式上线后公布。		</p>\r\n	</div>\r\n</div>', 7, 1359250247, 1359961733, 0, 1, 'u:index|deals&act=about&u=risk', 0, 0, 14, 45, '', '', '', 'risk', '', ''),
(31, '政策法规', '', '<div style="margin-top:10px;padding:10px;">	<div class="about_title2">民间借贷的定义</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			民间借贷是指自然人之间、自然人与法人之间、自然人与其它组织之间借贷。民间借贷是《民法通则》中一种民事法律行为，			行为人在具有完全民事行为（即年满18周岁，且不存在足以影响自身行为的精神疾病的情形）、意思表示真实，借款合同符合法律、			行政法规规定，则该借款合同完全受到《合同法》等法律的保护。民间借贷是民间资本的一种投资渠道，			作为银行金融的有效补充已逐渐成为民间金融的一种重要形式。		</p>\r\n	</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;">	<div class="about_title2">P2P民间借贷的法律环境</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			《国务院关于鼓励和引导民间投资健康发展的若干意见》：新36条出台，鼓励民间资本进入金融领域，发起设立金融中介服务机构。<br />\r\n			《中华人民共和国合同法》从法律上肯定了民间借贷行为的合法性，并从法律层面保护出借人收回借贷资金和利息的权利。<br />\r\n			《合同法》第211条：“自然人之间的借款合同对支付利息没有约定或约定不明确的，视为不支付利息。自然人之间的借款合同约定支付利息的，			借款的利率不得违反国家有关限制借款利率的规定”<br />\r\n			最高人民法院《关于人民法院审理借贷案件的若干意见》第6条：“民间借贷的利率可以适当高于银行的利率，			各地人民法院可以根据本地区的实际情况具体掌握，但最高不得超过银行同类贷款利率的四倍，（包含利率本款）。超出此限度的，超出部分的利息不予保护”。		</p>\r\n	</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;">	<div class="about_title2">p2p信贷的合法性</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			《合同法》第二十三章“居间合同”中明确规定，居间人提供贷款合同订立的媒介服务，可依法向委托方收取相应的报酬。			因此贷款服务机构的存在和服务费的收取都是符合法律规定并受法律保护的。<br />\r\n			p2p信贷既不吸储，也不放贷，作为一个网络信用管理及借贷服务中介机构，其业务范围和经营活动完全符合相关法律和国家的政策规定。			p2p信贷将在国家法律和相关政策的指引下，为广大借款人、出借人提供优质、高效的服务。		</p>\r\n	</div>\r\n</div>', 7, 1359250318, 1359961628, 0, 1, 'u:index|deals&act=about&u=rule', 0, 0, 14, 46, '', '', '', 'rule', '', ''),
(32, '投资小提示', '', '<div style="margin-top:10px;padding:10px;">	<div class="about_title2">不要盲目跟投</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>p2p信贷结合了国内外先进的信用审查及风险控制机制，形成了一整套贯穿于前期咨询、贷前审核、贷后跟进、回款管理的全面而严密的信用服务流程。截至目前为止，p2p信贷上线半年以来，坏账率仅为0.8%，远低于同行业1.7%的平均水平。<br />\r\n			前期审核阶段，p2p信贷将通过对用户的各种材料，以及电话核实的手段，来考查用户的偿还能力，信用习惯和稳定性三方面。审核时依据的材料包括用户的工作证明、银行流水单、个人信用报告、房产证明、结婚证明等。		</p>\r\n	</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;">	<div class="about_title2">不要在投资中夹杂过多感情因素</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			除了前期严格的审核手段之外，若借款人出现逾期还款情况，p2p信贷将在不同的阶段进行不同程度的催收。<br />\r\n			逾期初期，p2p信贷客服将通过电话与借款人进行沟通，做出善意的还款提醒，同时了解用户的逾期原因，并提醒保持良好信用的重要性。  <br />\r\n			如果p2p信贷客服沟通期间，借款人不积极配合，或者在15天以后依然不进行还款，则p2p信贷将尝试与借款人的联系人等其他联系方式进行沟通。<br />\r\n			如果借款用户恶意逃避，或者逾期超过30天，p2p信贷将把借款人的催收委托给第三方全国性催收机构协助催收，同时逐步在借款人的借款详情里公布其逾期信息。		</p>\r\n	</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;">	<div class="about_title2">关注借入者的网络行为</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			p2p信贷平台，为小额资金的分散投资提供了可能，根据经济学原理，每位借款人的还款是独立性极强的事件，这样风险就被大大分散。<br />\r\n			例如，您将10万元借给一个借入者，假设违约率为1％，年利率为12％，一旦出现那1％的机率，该借款人违约不还，那么您所承受的风险将是100%损失。			但是，如果您将10万元分成100元一笔，借出给1000个违约率为1%，年利率为12%的借款人，由于不同的借款人之间有极强的独立性，在这种投资方式下损失本金的概率将会变得非常低，约等于零。		</p>\r\n	</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;">	<div class="about_title2">主动向借入者提问</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			p2p信贷即将推出风险保证金。风险保证金在理财者的出借资金遇到回收问题时，用以补偿其本金的损失，这将在很大程度上保证理财者的资金安全。<br />\r\n			目前p2p信贷的保证金处于试运行阶段，并免费将所有E级以上用户申请的借款纳入风险保证体系。当纳入风险保证体系的借款人逾期后，风险金将向理财者垫付本金，			同时该笔借款本来的本息、罚息等收益权，将规风险保证金所有。			<br />\r\n			风险保证金具体细则，将在正式上线后公布。		</p>\r\n	</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;">	<div class="about_title2">关注借款人信用等级以外的其他信息</div>\r\n	<div style="border-bottom:1px solid #9c9c9c;margin:8px 0px 8px 0px;"></div>\r\n	<div style="font-size:13px;line-height:20px;">		<p>			毋庸置疑，借款人的信用等级在很大程度上说明了借款人的信用情况，但是有时通过借入人是哪个院校毕业的、他/她做过哪些认证、他/她之前的还款情况怎样、			他/她的借款用途是什么、他/她准备如何还款等其他信息也能在一定程度上判断出借款人是否有还款能力和还款意愿。		</p>\r\n	</div>\r\n</div>', 7, 1359250393, 1359961566, 0, 1, 'u:index|deals&act=about&u=clew', 0, 0, 714, 47, '', '', '', 'clew', '', ''),
(35, '隐私保护', '', '<h3>我们有哪些措施保障您的隐私安全</h3>\r\n<ul id="anquanli">   <li>p2p信贷系统严格遵守国家相关法律法规，对用户的隐私信息进行严格的保护。 </li>\r\n   <li>我们采用业界最先进的加密技术，用户的注册信息、账户收支信息都已进行高强度的加密处理，不会被不法分子窃取到。 </li>\r\n   <li>p2p信贷系统设有严格的安全系统，未经允许的员工不可获取您的相关信息。</li>\r\n   <li>p2p信贷系统绝不会将您的账户信息、银行信息以任何形式透露给第三方。 </li>\r\n</ul>\r\n<h3>个人信息安全：</h3>\r\n<p>p2p信贷系统是一个实名认证平台，p2p信贷系统会保证用户信息隐私的安全，用户在平台上交流的过程中，也要时刻注意保护个人隐私，截图注意覆盖个人信息，不要透露真实姓名与住址等，以防个人信息被盗取造成损失。 </p>', 9, 1359307893, 1359961113, 0, 1, '', 0, 0, 493, 50, '', '', '', '', '', '');
INSERT INTO `%DB_PREFIX%article_copy` (`id`, `title`, `icon`, `content`, `cate_id`, `create_time`, `update_time`, `add_admin_id`, `is_effect`, `rel_url`, `update_admin_id`, `is_delete`, `click_count`, `sort`, `seo_title`, `seo_keyword`, `seo_description`, `uname`, `sub_title`, `brief`) VALUES
(34, '账户安全', '', '<h3>第三方资金托管</h3>\r\n<p>p2p信贷目前对客户交易资金的保管完全按照"专户专款专用"的标准模式进行运作，客户在p2p信贷的交易资金是可以完全放心的。</p>\r\n<ul id="anquan_step" class="clearfix"><li><a href="./#zha_stpe1">第 1 步：牢记p2p信贷系统官方网址，警惕欺诈网站</a></li>\r\n<li><a href="./#zha_stpe2">第 2 步：用邮箱注册一个p2p信贷系统账号</a></li>\r\n<li><a href="./#zha_stpe3">第 3 步：设置高强度的"登录密码"</a></li>\r\n<li><a href="./#zha_stpe4">第 4 步：多给电脑杀毒</a></li>\r\n</ul>\r\n<h3 id="zha_stpe1">第 1 步：牢记p2p信贷官方网址，警惕欺诈网站</h3>\r\n<p>请牢记p2p信贷的官方网址是http://www.fanwe.com，不要点击来历不明的链接访问p2p信贷。您可将p2p信贷的官网链接添加到浏览器的收藏夹中，以便您的下次登录。</p>\r\n<h3 id="zha_stpe2">第 2 步：用邮箱注册一个p2p信贷系统账号</h3>\r\n<p>您可以用一个常用的电子邮箱注册一个p2p信贷账号，您将用该邮箱接收来自p2p信贷的验证、提醒等重要通知邮件。</p>\r\n<h3 id="zha_stpe3">第 3 步：设置高强度的"登录密码"</h3>\r\n<p>什么是高强度的登录密码，怎么设置会更安全？您在密码设置时，最好使用数字和字母混合，不要使用纯数字或纯字母。强烈建议不要把"登录密码"设置成生日、姓名拼音或是邮箱名，这些都是容易被他人猜到的形式。</p>\r\n<h3 id="zha_stpe4">第 4 步：多给电脑杀毒</h3>\r\n<p>及时更新操作系统补丁，升级新版浏览器，安装反病毒软件和防火墙并保持更新；避免在网吧等公共场所使用网上银行，不要打开来历不明的电子邮件等。</p>\r\n<p>电脑中毒会怎么样？ 如果电脑一直中毒，病毒会容易获取您的账户信息。</p>\r\n<p>电脑怎么杀毒？ 我们推荐支付宝安全联盟，联盟提供了很多免费的杀毒软件下载。</p>', 9, 1359307670, 1362187429, 0, 1, '', 0, 0, 475, 49, '', '', '', '', '', ''),
(38, '五大重要守则', '', '<h3>安全补丁更新：</h3>\r\n<p>些常用的计算机软件的保安漏洞可被病毒作者和黑客利用，来进入那些未安装安全补丁程序的计算机，盗取资料。一旦发现这种情况，软件出版商便会推出安全补丁程序来堵塞这些漏洞。您可定期浏览软件出版商的网站，对操作系统和应用软件进行安全补丁更新。 </p>\r\n<h3>防病毒软件：</h3>\r\n<p>安装防病毒软件，定期更新软件及安装最新的病毒定义文件，有效保障计算机免受病毒侵袭。 </p>\r\n<h3>个人防火墙：</h3>\r\n<p>安装防火墙，帮助保护您的计算机系统不会在连接互联网时受到侵袭，可阻止资料在未经您授权下传入或传出您的计算机。 </p>\r\n<h3>反间谍程序：</h3>\r\n<p>间谍软件可运行在用户计算机上用以监测及收集用户上网信息的程序，能够监测和搜集用户的上网信息，比如获取您输入的个人信息，包括密码、电话号码、信用卡帐号及身份证号码。间谍软件往往作为某些服务的「免费」下载程序的一部分下载到个人计算机中，或在未经您同意或知晓的情况下被下载到您的计算机中。我们强烈建议您安装并使用较有信誉的反间谍软件产品以保护您的计算机免受间谍软件的侵害。 </p>\r\n<h3>密码设置注意事项：</h3>\r\n<p>密码是取得您的网上户口数据的钥匙，因此您必须紧记将密码妥为保密。密码可以是任何字符，包括数字、字母、特殊字符等。长度在6～16位之间，区分英文字母大小写。密码最好是包含字母、数字、特殊字符的组合，不要设置成常用数字，如：生日、电话号码等，也不要设为一个单词。密码的位数应该超过六位，经常修改密码，并为重要服务例如网上理财服务设置独立的密码。 </p>', 11, 1359308550, 1359316356, 0, 1, '', 0, 0, 586, 53, '', '', '', '', '', ''),
(36, '严格的贷前审核', '', '<div class="lca_coninfo">贷前审核：<br />\r\n在客户提出借款申请后，p2p信贷系统会对客户的基本资料进行分析。通过网络、电话及其他可以掌握的有效渠道进行详实、仔细的调查。避免不良客户的欺诈风险。在资料信息核实完成后，根据个人信用风险分析系统进行评估，由经验丰富的贷款审核人员进行双重审核确认后最终决定批核结果。</div>', 10, 1359308190, 1359960352, 0, 1, '', 0, 0, 664, 51, '', '', '', '', '', ''),
(37, '完善的贷中贷后管理', '', '<div class="lca_coninfo">贷中审查：<br />\r\n贷中审核人员会对借款中客户资料的有效期、资料属性及客户的还款状态进行实时监控，对客户信息变动进行更新。保持与客户的畅通联系，避免失去联系导致借款产生风险。对异常客户转入贷后管理系统。</div>\r\n    <div class="lca_coninfo">贷后管理：<br />\r\n如果用户逾期未归还贷款，贷后管理部门将第一时间通过短信、电话等方式提醒用户进行还款，如果用户在5天内还未归还当期借款，p2p信贷将会联系该用户的紧急联系人、直系亲属、单位等督促用户尽快还款。如果用户仍未还款，交由专业的高级催收团队与第三方专业机构合作进行包括上门等一系列的催收工作，直至采取法律手段。</div>', 10, 1359308334, 1360023834, 0, 1, '', 0, 0, 629, 52, '', '', '', '', '', ''),
(40, '关于p2p信贷', '', '<div class="b">	关于p2p信贷</div>\r\n<div>   p2p信贷(fanwe.com)是中国领先的个人对个人借贷平台(P2P lending)。p2p借贷为有资金需求和理财需求的个人搭建了一个安全、透明、稳定、高效的网络平台，以个人对个人（P2P）的方式解决借贷双方的资金需求及理财需求。用户可以在p2p借贷上获得信用评级、发布贷款请求，满足个人的资金需要；也可以把自己的闲余资金通过p2p借贷出借给信用良好的贷款者，在帮助他人的同时获得良好的资金回报率。 </div>\r\n<div class="b">	p2p信贷的起源</div>\r\n<div>	p2p信贷即p2p借贷，p2p借贷的另一种解释是P2P小额贷款，是一种将小额的资金聚集起来借贷给有资金需求人群的一种商业模式。由2006年“诺贝尔和平奖”得主尤努斯教授（孟加拉国）首创。20世纪90年代以来，小额信贷在世界上很多国家兴起，形成了众多发展模式，并取得了很大成功，目前，世界上比较著名的网络小额贷款服务平台有Prosper、Zopa、Lending CLub等机构。</div>\r\n<div class="b">	p2p信贷如何收费</div>\r\n<div>	<a href="./index.php?ctl=aboutfee" target="_blank">见费用</a>（其它页面）</div>\r\n<div class="b">	在p2p信贷&nbsp;平台上的借贷受法律保护么</div>\r\n<div>	<a href="./index.php?ctl=aboutlaws" target="_blank">见政策法规</a>（其它页面）</div>\r\n<div class="b">p2p信贷的年利率范围是怎么规定的</div>\r\n<div>p2p信贷目前的利率范围为6 %-24%。在p2p信贷平台上借贷的最高年利率设定为同期银行贷款年利率的4倍。且随着银行贷款利率的调整，p2p信贷&nbsp;的利率上限也将随之调整。</div>\r\n<div>	注：</div>\r\n<div>	1.&nbsp;p2p信贷&nbsp;的利率的调整会在商业银行贷款年利率调整后1个月内进行调整。</div>\r\n<div>	2. 在利率调整之前的成功的借款不受调整的影响。</div>\r\n<div class="b">	用户资料的隐私和安全如何保证</div>\r\n<div>   保护用户的隐私和数据安全是p2p信贷&nbsp;最重要的责任之一。在传输层中,我们采用加密数据进行传输以防止网络分包被截获造成数据泄露。用户的所有的信息都储存在由防火墙保护的服务器里，这些安全防护措施都是7*24小时不间断运转的。数据根据敏感性的不同，以128位或256位的形式用SSL加密。另外，p2p信贷&nbsp;还启用了侵扰监测系统来监测那些内部和外部易受侵扰的路径，并运用其他一些人工措施来加强保护用户数据的安全。</div>\r\n<div class="b">	我的借款会不会受p2p信贷&nbsp;运营变动而变动</div>\r\n<div>p2p信贷及其运营公司的任何变动，均不影响已通过p2p信贷&nbsp;所达成的任何贷款协议的合法性、有效性。借款人有义务继续按照贷款协议的约定按时、足额偿还理财人的贷款本金和利息。否则理财人有权依据贷款合同的约定采取必要的法律手段追究借款人的法律责任。</div>', 14, 1359854853, 1359958367, 0, 1, '', 0, 0, 1031, 2, '', '', '', '', '', ''),
(41, '常用名词解释', '', '<div class="b">	借款人：</div>\r\n<div>	也称贷款人，是指已经或准备在网站上进行贷款活动的用户。</div>\r\n<div>   凡22周岁以上的中国大陆地区公民，都可以成为借款人。</div>\r\n<div class="b">	理财人：</div>\r\n<div>	也称投资人，是指已经或准备在网站上进行出借活动的用户。</div>\r\n<div>   凡18周岁以上的中国大陆地区公民，都可以成为理财人。 </div>\r\n<div class="b">	借款列表：</div>\r\n<div>	当借款人成功发布一个借款请求时，我们将包含各种贷款信息的该请求称为一个借款列表。 </div>\r\n<div class="b">	招标：</div>\r\n<div>	是指一个借款人发出一个贷款请求，即创建一个借款列表的行为。 </div>\r\n<div class="b">	投标：</div>\r\n<div>   是指理财人将其账户内指定的金额出借给其指定的借款列表的行为。 </div>\r\n<div class="b" id="b_2">	满标：</div>\r\n<div>	是指一个借款列表在投标期限内足额筹集到所需资金。 </div>\r\n<div class="b">	放款：</div>\r\n<div>	指一个借款列表满标后且已符合放款标准，p2p借贷将把所筹资金打入借款人在p2p借贷的账户中。即成功贷款。</div>\r\n<div class="b">	流标：</div>\r\n<div>	是指一个借款列表的投标期限已过，但是贷款没有足额筹集齐，即贷款失败。 </div>\r\n<div class="b">	投标金额：</div>\r\n<div>	是指理财人对借款列表进行投标的金额。</div>\r\n<div class="b">	帐户总额：</div>\r\n<div>	指用户账户的所有金额（含冻结金额和可用金额）。</div>\r\n<div class="b">	可用金额：</div>\r\n<div>	是指用户可自由支配的金额。</div>\r\n<div class="b">	冻结金额：</div>\r\n<div>	用户对某借款列表进行投标后，在此列表的招标期结束之前，这部分投标金额将被锁定，“冻结金额”是指因这类型锁定金额的总额。如果列表放款，这部分金额将转给该列表的借款人；如果该列表流标，这部分金额将立即变为用户的可用金额。 </div>\r\n<div class="b" id="b_1">	等额本息：</div>\r\n<div>	定义：等额本息还款法是一种被广泛采用的还款方式，在还款期内，每月偿还同等数额的贷款(包括本金和利息)。借款人每月还款额中的本金比重逐月递增、利息比重逐月递减。 </div>\r\n<div>	其计算公式如下：</div>\r\n<div>	每月还款额=[贷款本金×月利率×（1+月利率）^还款总期数]÷[（1+月利率）^还款总期数-1]<br />\r\n因计算中存在四舍五入，最后一期还款金额与之前略有不同。</div>\r\n<div class="b">	什么是加权收益率</div>\r\n<div>	由于借款时间不定，p2p借贷采用加权平均的方式计算借出者的收益率，具体公式如下：</div>\r\n<div>	加权收益率 = (本金1*收益率1+本金2*收益率2+本金3*收益率3 + ......本金n*收益率n-坏账计提+罚息)/(本金1+本金2+本金3 + ......本金n)</div>\r\n<div>	注：</div>\r\n<div>	1. 此公式未计算可能的资金闲置期</div>', 14, 1359854868, 1359855699, 0, 1, '', 0, 0, 786, 1, '', '', '', '', '', ''),
(39, '避免私下交易', '', '<p>p2p信贷系统建议用户避免尝试私下交易。私下交易的约束力极低，不受《合同法》的保护，造成逾期的风险非常高，同时您的个人信息将有可能被泄漏，存在遭遇诈骗甚至受到严重犯罪侵害的隐患。 </p>', 11, 1359308588, 1359960317, 0, 1, '', 0, 0, 691, 54, '', '', '', '', '', ''),
(42, '贷款利率、期限、方式', '', '<div class="b">	贷款金额有限制吗</div>\r\n<div>	信用贷款金额最高为人民币100万元，信用审核员会根据您提交的p2p借贷认证材料情况给予您信用额度（即您可以申请贷款金额的上限）。<br />\r\n机构担保贷款与智能理财标贷款视合作机构资质及实际情况设定贷款金额。</div>\r\n<div class="b">	p2p信贷的贷款期限和还款方式 </div>\r\n<div>	目前信用贷款您可以选择的借款期限3个月、6个月、9个月、12个月、18个月、24个月 。还款方式是按月<a href="./help.html#b_1">等额本息</a>还贷。</div>\r\n<div class="b">	在p2p信贷贷款是否需要抵押、担保</div>\r\n<div>   不需要，在p2p信贷上的贷款都是以借款人的信用评级为基础的，不涉及到抵押物及其他人的担保，免去了繁杂的手续和可能由抵押物引起的纠纷。 </div>\r\n<div class="b">	作为借款人，我的贷款利率是如何确定的</div>\r\n<div>	借款用户可跟据自身情况，参考网站对各信用等级借款人设定的相应贷款利率下限及网站近期的成交贷款利率自行设定可接受的利率。在同等情况下，贷款利率越高的贷款，成功（<a href="./help.html#q2">满标</a>）的概率越大。</div>\r\n<div class="b">	如何查询我的贷款协议</div>\r\n<div>	1.	如果您已在网上成功的贷款贷款，您可以在网站上访问“我的p2p信贷”-“偿还贷款”-“贷款协议”；</div>\r\n<div>	2.	如果您已在网上成功的投标理财，您可以在网站上访问“我的p2p信贷”-“我的投资”-“回收中的贷款”-“贷款协议”；</div>\r\n<div>	3.	您也可以访问“我要贷款”-“工具箱”-查看“<a href="./borrow/toolsPage.action?type=tools_contact" target="_blank">贷款协议范本</a>”。</div>', 15, 1359856085, 1359963173, 0, 1, '', 0, 0, 0, 10, '', '', '', '', '', ''),
(43, '如何申请贷款', '', '<div class="b">	如何在p2p信贷上申请贷款</div>\r\n<div>	第一步：免费注册为p2p信贷用户<br />\r\n	第二步：填写个人信息、发布借款列表<br />\r\n	第三步：上传信用认证材料<br />\r\n	第四步：筹集并获得贷款<br />\r\n</div>', 15, 1359856109, 1359963208, 0, 1, '', 0, 0, 0, 9, '', '', '', '', '', ''),
(44, '发布借款列表', '', '<div class="b">	如何发布借款列表</div>\r\n<div>	借款人访问“我要贷款”，选择“申请贷款”，根据提示填写贷款信息，在确认无误后点击发布即可创建一条<a href="./lend/lendPage.action" target="_blank">借款列表</a>。</div>\r\n<div>	注：您通过p2p信贷认证后发布的相关信息越完整，资料越丰富，获得贷款的机会就会越高。</div>\r\n  <div class="b">	借款列表状态</div>\r\n<div>	借款人发布借款列表后，在未将合格的认证资料上传完毕并获得p2p信贷给出的信用等级和信用额度（全部通过四项必要信用认证）前，借款列表将处于“提交资料”状态，不能被任何理财人投标。在借款人全部通过四项必要信用认证且得到信用等级和信用额度后，借款列表将进入“马上投标”状态，即开始筹集贷款。</div>\r\n<div class="b">	是否可以修改已发布的借款列表</div>\r\n<div>	不可以。在用户发布借款列表之后，不可以对已发布的贷款进行修改。请用户在发布贷款时务必认真填写各项信息。</div>', 15, 1359856131, 1359963250, 0, 1, '', 0, 0, 0, 8, '', '', '', '', '', ''),
(45, '申请信用额度', '', '<div class="b">	什么是信用额度 </div>\r\n<div>	借款人在全部通过四项“必要信用认证”后，可以继续上传材料进行各项“可选信用认证”，在人人贷审核员完成对所提供材料的审核工作后，借款人会从人人贷获得一个相应的信用等级和信用额度。信用额度既是借款人单笔贷款的上限也是借款者累积尚未还清贷款的上限。例如，如果一个借款人信用额度为5万元，则在没有其他贷款的情况下，用户可以发布总额最高为5万元的贷款请求，也可以分多次发布贷款请求，但尚未还清贷款（以整笔贷款金额计算）的总额不得超过5万元。</div>\r\n<div class="b">	什么时候可以申请信用额度、如何申请</div>\r\n<div>	成为借款人后，您在上传认证资料进行各项信用认证后可以先得到一个信用额度暂不发布贷款列表，在您需要贷款的时候，用相应额度发布贷款需求。</div>', 15, 1359856145, 1359856463, 0, 1, '', 0, 0, 0, 7, '', '', '', '', '', ''),
(46, 'p2p信贷认证', '', '<div class="b">	借款人必要信用认证</div>\r\n<div>	贷款必须全部通过的认证项目，不可缺少。（为了保证审核效率，确保贷款用户尽快通过审核，我们将优先为四项必要认证材料上传齐全的用户提供审核服务。）。</div>\r\n<div style="padding-left:0px;"> <div class="b">	身份证认证</div>\r\n<div>	您上传的身份证扫描件需和您绑定的身份证一致，否则将无法通过认证。认证说明：<br />\r\n 1、请您上传您本人第二代身份证正、反两面照片。<br />\r\n 2、请确认您上传的资料是清晰的、未经修改的数码照片（可以是彩色扫描图片）。<br />\r\n<p style="font-weight:bold;">每张图片的尺寸不大于3M。</p>\r\n认证有效期： 永久</div>\r\n <div class="b">	工作认证 </div>\r\n<div>	您的工作状况是p2p信贷评估您信用状况的主要依据。请您填写真实可靠的工作信息。认证说明：<br />\r\n 上传资料说明：<br />\r\n如果您满足以下 1种以上的身份，例如：您有稳定工作，且兼职开淘宝店。我们建议您同时上传两份资料，这将有助于提高您的借款额度和信用等级 <p style="font-weight:bold;">1、 工薪阶层：</p>\r\n请上传以下资料的照片或扫描件：（建议两项或两项以上）<br />\r\na) 劳动合同。 <br />\r\nb) 加盖单位公章的在职证明。<br />\r\n c) 带有姓名及照片的工作证。<br />\r\n <p style="font-weight:bold;">2、 私营企业主:</p>\r\n请上传以下全部三项资料的照片或扫描件：<br />\r\n a) 企业的营业执照。 <br />\r\nb) 企业的税务登记证。 <br />\r\nc) 店面照片（照片内需能看见营业执照）。<br />\r\n <p style="font-weight:bold;">3、网商：</p>\r\n请上传以下资料的照片或扫描件：<br />\r\n a) 请上传网店主页和后台的截屏(需要看清网址）。<br />\r\n b) 支付宝（或其他第三方支付工具）的至少3张最近3个月的商户版成功交易记录的截屏图片。 <br />\r\nc) 营业执照（如果有的话提供，不是必须的）。 <br />\r\nd) 备注：如果是淘宝专职卖家，店铺等级必须为3钻以上（含3钻）。<br />\r\n 认证条件： 工薪阶层需入职满6个月，私营企业主和淘宝商家需经营满一年<br />\r\n 认证有效期： 6个月 <br />\r\n</div>\r\n<div class="b">	个人信用报告认证 </div>\r\n<div>个人信用报告是由中国人民银行出具，全面记录个人信用活动，反映个人信用基本状况的文件。本报告是p2p信贷了解您信用状况的一个重要参考资料。 您信用报告内体现的信用记录，和信用卡额度等数据，将在您发布借款时经p2p信贷工作人员整理，在充分保护您隐私的前提下披露给p2p信贷借出者，作为借出者投标的依据。<br />\r\n        认证说明： <br />\r\n1、上传您的个人信用报告原件的照片，每页信用报告需独立照相，并将整份信用报告按页码先后顺序完整上传。<br />\r\n 2、请确认您上传的资料是清晰的、未经修改的数码照片或扫描图片。 <br />\r\n认证条件： 信用记录良好 <br />\r\n认证有效期： 6个月 <br />\r\n<p style="font-weight:bold;">如何办理个人信用报告？</p>\r\n 办理个人信用报告，可由本人或委托他人到中国人民银行征信中心办理本人的信用报告，其中被委托人称为代理人。 <br />\r\n（一）本人查询信用报告 <br />\r\n携带本人有效身份证件原件及一份复印件（其中复印件留给征信分中心备查），到中国人民银行各地征信分中心查询。 有效身份证件包括：身份证（第二代身份证须复印正反两面）、军官证、士兵证、护照、港澳居民来往内地通行证、 台湾同胞来往内地通行证、外国人居留证等。 <br />\r\n（二）委托他人查询信用报告 <br />\r\n需要携带的材料有委托人及代理人双方的身份证件原件及复印件、授权委托书。其中身份证件复印件和授权委托书留给 征信分中心备查。委托书格式请与当地征信分中心联系取得。<br />\r\n 全国各地征信中心联系方式查询 <br />\r\n<a href="http://www.pbccrc.org.cn/kefuzhongxin_303.html" target="_blank">http://www.pbccrc.org.cn/kefuzhongxin_303.html</a><br />\r\n 认证有效期： 6个月 <br />\r\n</div>\r\n<div class="b">	收入认证 </div>\r\n您的银行流水单以及完税证明，是证明您收入情况的主要文件，也是p2p信贷评估您还款能力的主要依据之一。<br />\r\n认证说明： <br />\r\n上传资料说明：<br />\r\n如果您满足以下 1种以上的身份，例如：您有稳定工作，且兼职开淘宝店。<br />\r\n 我们建议您同时上传两份资料，这将有助于提高您的借款额度和信用等级。<br />\r\n <p style="font-weight:bold;">1、 工薪阶层：</p>\r\n<p>请上传以下一项或多项资料：<br />\r\n a) 最近连续六个月工资卡银行流水单的照片或扫描件，须有银行盖章，或工资卡网银的电脑截屏。<br />\r\n b) 最近连续六个月的个人所得税完税凭证。 <br />\r\nc) 社保卡正反面原件的照片以及最近连续六个月缴费记录（注：可在社保网站查询到为准）。<br />\r\n d) 如果工资用现金形式发放，请提供近半年的常用银行储蓄账户流水单，须有银行盖章，或工资卡网银的电脑截屏。 <br />\r\n</p>\r\n<p style="font-weight:bold;">2、 私营企业主:</p>\r\n请上传以下一项或多项资料的照片或扫描件：<br />\r\n a) 最近连续六个月个人银行卡流水单，须有银行盖章，或网银的电脑截屏。 <br />\r\nb) 最近连续六个月企业银行流水单，须有银行盖章；或近半年企业的纳税证明。<br />\r\n <p style="font-weight:bold;">3、 网商：</p>\r\n请上传以下全部两项资料的照片或扫描件：<br />\r\n a) 最近连续六个月个人银行卡流水单，须有银行盖章，或网银的电脑截屏。<br />\r\nb) 如果是淘宝商家请上传近半年淘宝店支付宝账户明细的网银截图。 <br />\r\n认证条件： 收入需较稳定，如果是私营企业主及淘宝商家月均流水需在20000以上 <br />\r\n认证有效期： 6个月 <br />\r\n如何办理银行流水单？ <br />\r\n银行流水单是银行卡最近一段时间内的资金交易记录，是确认借入者收入状况的重要证明，银行流水单 是p2p借贷用以评价借入者还款能力的重要凭证之一。 <br />\r\n<p style="font-weight:bold;">办理流程</p>\r\n 前往最近的工资卡所在银行，提供工资卡及本人身份证原件，要求银行打印工资卡最近半年的流水单。<br />\r\n 如何办理个人所得税完税证明？<br />\r\n一、委托公司会计代办 <br />\r\n联系所在公司（负责申报个人所得税）会计，委托会计办理需提交纳税人有效身份证件原件及复印件、受托人有效身份证件原件及 复印件及委托协议原件，并填写《开具个人所得税完税证明申请表》即可。<br />\r\n 二、本人办理 <br />\r\n1、向所在公司会计咨询公司进行缴税的税务所。<br />\r\n 2、本人携带有效身份证件原件及复印件，前往公司缴税的税务所，填写《开具个人所得税完税证明申请表》即可领取完税证明。 <br />\r\n<br />\r\n                              </div>\r\n    <div class="b">	可选信用认证 </div>\r\n您可以选择上传的认证项目，只要通过了这些可选信用认证，将会提高您的“信用等级”和“信用额度” 。 <br />\r\n<div style="padding-left:0px;"> <div class="b">房产证明 </div>\r\n房产证明是证明借入者资产及还款能力的重要凭证,p2p信贷会根据借款者提供的房产证明给与借入者一定的信用加分。 <br />\r\n 认证说明： 1、请上传以下任意一项或多项资料。  <br />\r\na) 购房合同。  <br />\r\nb) 银行按揭贷款合同。 <br />\r\n c) 房产局产调单及收据。 <br />\r\n 2、请确认您上传的资料是清晰的、未经修改的数码照片或扫描图片。 <br />\r\n认证条件： 必须是商品房  <br />\r\n每张图片的尺寸不大于1.5M。 <br />\r\n 认证有效期： 永久  <br />\r\n<div class="b">购车证明 </div>\r\n购车证明是证明借入者资产及还款能力的重要凭证之一，p2p信贷会根据借入者提供的购车证明给与借入者一定的信用加分。         <br />\r\n认证说明：  <br />\r\n1、请上传您所购买车辆行驶证原件的照片。  <br />\r\n2、请上传您和您购买车辆的合影（照片须体现车牌号码）。  <br />\r\n3、请确认您上传的资料是清晰的、未经修改的数码照片或扫描图片。  <br />\r\n认证有效期： 永久  <br />\r\n<div class="b">结婚证明</div>\r\n 借入者的婚姻状况的稳定性，是p2p信贷考核借款人信用的评估因素之一，通过p2p信贷结婚认证，您将获得一定的信用加分。  <br />\r\n认证说明： 1、请您上传以下资料  <br />\r\n1) 您结婚证书原件的照片 <br />\r\n 2) 您配偶的身份证原件的照片。如果持有第二代身份证，请上传正反两面  <br />\r\n照片。如果持有第一代身份证，仅需上传正面照片。  <br />\r\n3) 您和配偶的近照合影一张  <br />\r\n2、请确认您上传的资料是清晰的、未经修改的数码照片或扫描图片。  <br />\r\n认证条件： 您的配偶同意您将其个人资料提供给p2p借贷  <br />\r\n认证有效期： 永久  <br />\r\n<div class="b">学历认证 </div>\r\n借出者在选择借款列表投标时，借入者的学历也是一个重要的参考因素。为了让借出者更好、更快地相信您的学历是真实的，强烈建议您对学历进行在线验证。  <br />\r\n学历认证方法：  <br />\r\n一、2001年至今获得学历，需学历证书编号 <br />\r\n1、点击 <a href="http://www.chsi.com.cn/xlcx/" target="_blank">网上学历查询。</a>  <br />\r\n2、选择“零散查询”。  <br />\r\n3、输入证书编号、查询码（通过手机短信获得，为12位学历查询码）、姓名、以及验证码进行查询。  <br />\r\n4、查询成功后，您将查获得《教育部学历证书电子注册备案表》。  <br />\r\n5、将该表右下角的12位在线验证码<a href="./public/images/xueli_1.jpg" target="_blank">（见样本图01）</a>，输入下面的文本框。  <br />\r\n6、点击提交审核。  <br />\r\n二、1991年至今获得学历，无需学历证书编号 <br />\r\n1、点击 <a href="http://www.chsi.com.cn/xlcx/" target="_blank"> 网上学历查询</a>。  <br />\r\n2、选择“本人查询”。  <br />\r\n3、注册学信网账号。  <br />\r\n4、登录学信网，点击“学历信息”。  <br />\r\n5、选择您的最高学历，并点击“申请验证报告”（申请过程中，您需通过手机短信获得12位学历查询码，此查询码与p2p借贷所需验证码不同）。  <br />\r\n6、申请成功后，您将获得12位在线验证码<a href="./public/images/xueli_2.jpg" target="_blank">（见样本图02）</a>  <br />\r\n7、将12位在线验证码输入下面的文本框  <br />\r\n8、点击提交审核  <br />\r\n认证条件： 大专或以上学历（普通全日制）  <br />\r\n认证有效期： 永久  <br />\r\n技术职称认证  <br />\r\n技术职称是经专家评审、反映一个人专业技术水平并作为聘任专业技术职务依据的一种资格，不与工资挂钩，是p2p信贷考核借款人信用的评估因素之一，通过p2p信贷技术职称认证证明，您将获得一定的信用加分。  <br />\r\n认证说明：  <br />\r\n1、请上传您的技术职称证书原件照片。  <br />\r\n2、请确认您上传的资料是清晰的、未经修改的数码照片或扫描图片。 <br />\r\n认证条件： 国家承认的二级及以上等级证书。例如律师证、会计证、工程师证等  <br />\r\n每张图片的尺寸不大于1.5M。  <br />\r\n认证有效期： 永久  <br />\r\n<div class="b">视频认证 </div>\r\n什么是视频认证？只有通过视频认证您才能获得贷款，您只需要在视频认证页面上传您本人的视频，并提交，即可申请视频认证。您也可以选择与p2p信贷客服在线上进行视频认证。&nbsp;</div>\r\n<div style="padding-left:0px;">认证说明：  <br />\r\n1、视频中诵读内容请按如下文字诵读： 我是 ***，我在p2p信贷的用户名是***，我的身份证号是 ***********************，现在我正在做p2p信贷的视频确认。我在此做出以下承诺：我愿意接受p2p信贷的使用条款和借款协议；我提供给p2p信贷的信息及资料均是真实有效的；我愿意对我在p2p信贷上的行为承担全部法律责任；在我未能按时归还借款时，我同意p2p信贷采取法律诉讼、资料曝光等一切必要措施。&nbsp;</div>\r\n<div style="padding-left:0px;"> <span style="color:red;">2、读完声明后，请您将身份证正面(有身份证号)对准摄像头，并保持5秒</span><br />\r\n3、您可以联系右侧的在线客服进行视频确认。如果您选择在线进行视频确认，在做完以上声明后，我们的视频审核员会与您进行几分钟简单的交流。<br />\r\n4、请按上述内容要求录制视频，如不符合要求均不能通过视频认证 <br />\r\n(1)上传视频认证文件大小 不得超过50M<br />\r\n(2)请上传真实有效的本人的视频。<br />\r\n(3)视频文件格式可以是RMVB、WMV 或 AVI类型的文件。<br />\r\n(4).视频认证必须图像清晰，声音清楚<br />\r\n(5).视频认证必须衣冠整洁，禁止出现抽烟，赤裸等形象<br />\r\n只有通过视频认证您才能获得贷款，您只需要在视频认证页面将视频文件发送至与您对应客服的邮箱，并勾选''使用邮件发送''后提交,即可进行视频认证  <br />\r\n认证有效期： 永久  <br />\r\n<div class="b">手机详单认证 </div>\r\n手机流水单是最近一段时间内的详细通话记录，是p2p借贷用以验证借入者真实性的重要凭证之一。您的手机详单不会以任何形式被泄露。   <br />\r\n认证说明：  <br />\r\n1、请您上传您绑定的手机号码最近3个月的手机详单原件的照片。如详单数量较多可分月打印并上传  <br />\r\n每月前5日部分（每月详单均需清晰显示机主手机号码）。  <br />\r\n2、请确认您上传的资料是清晰的、未经修改的数码照片（不可以是扫描图片）。  <br />\r\n每张图片的尺寸不大于1.5M。  <br />\r\n认证有效期： 永久  <br />\r\n如何办理手机详单  <br />\r\n前往最近的手机运营商营业厅，提供手机服务密码或机主身份证明即可打印。 <br />\r\n<div class="b">居住地证明</div>\r\n 居住地的稳定性，是p2p信贷考核借款人的主要评估因素之一，通过p2p信贷居住地证明，您将获得一定的信用加分。&nbsp;</div>\r\n<div style="padding-left:0px;">认证说明：  <br />\r\n1、请上传以下任何一项可证明现居住地址的证明文件原件的照片。  <br />\r\n1) 用您姓名登记的水、电、气最近三期缴费单；  <br />\r\n2) 用您姓名登记固定电话最近三期缴费单；  <br />\r\n3) 您的信用卡最近两期的月结单；  <br />\r\n4) 您的自有房产证明；  <br />\r\n5) 您父母的房产证明，及证明您和父母关系的证明材料。  <br />\r\n2、请确认您上传的资料是清晰的、未经修改的数码照片（不可以是扫描图片）。  <br />\r\n每张图片的尺寸不大于1.5M。  <br />\r\n认证有效期： 6个月  <br />\r\n<!-- <div class="b">实地审核申请</div>\r\n 实地审核申请是p2p借贷了解您信用状况的一个重要参考资料。您的实地审核申请通过审核后，将在您发布借款时经p2p借贷工作人员整理，在充分保护您隐私的前提下披露给p2p借贷借出者，作为借出者投标的依据。  <br/>\r\n申请资格：  <br/>\r\n1、目前实地审核申请仅对经营类客户开放。  <br/>\r\n2、借款申请额在3万以上。  <br/>\r\n3、申请人必须已经提交四项必要信用认证资料。  <br/>\r\n4、申请人名下有固定资产，经营时间满一年。 <br/>\r\n注：目前仅对北京六环以内地区开放  <br/>\r\n借款人认证资料说明  <br/>\r\np2p借贷"对资料的认证仅限于如下方式：  <br/>\r\n1. 对用户提交的书面资料的照片文件进行真实性审查。  <br/>\r\n2. 对用户上传的照片资料的内容与其申报的信息的一致性审查。  <br/>\r\n3. p2p借贷承诺在认证中保持中立、审慎的态度，但p2p借贷不对借款人的行为提供任何保证。  <br/>\r\n4. p2p借贷的认证不能避免出贷款项出现违约的风险，亦不免除借款人应当承担的各种责任。 <br/>\r\n --></div>', 15, 1359856171, 1390850304, 0, 1, '', 0, 0, 0, 6, '', '', '', '', '', ''),
(47, '认证项目说明', '', '<div class="b">p2p信贷对资料的认证仅限于如下方式：</div>\r\n<div>   1. 对用户提交的书面资料的照片文件进行真实性审查。</div>\r\n<div>	2. 对用户上传的照片资料的内容与其申报的信息的一致性审查。 </div>\r\n<div>   3. p2p信贷贷承诺在认证中保持中立、审慎的态度，但P2P借贷不对借款人的行为提供任何保证。</div>\r\n<div>   4. p2p信贷的认证不能避免出贷款项出现违约的风险，亦不免除借款人应当承担的各种责任。</div>', 15, 1359856206, 1359963486, 0, 1, '', 0, 0, 0, 5, '', '', '', '', '', ''),
(48, '信用等级和信用额度', '', '<div class="b">	什么是信用等级 ：</div>\r\n<div>p2p信贷认证体系包括信用等级和信用额度。信用等级是借款人的信用属性，也是理财人判断借款人违约风险的重要依据之一。通常来讲借款人信用等级越高，其违约率越低，相应的其贷款成功率越高。信用等级由认证分数转化而来，具体请参考信用等级的分数区间。目前认证等级的等级由高到低分为：AA、A、B、C、D、E、HR。</div>\r\n<div class="b">	信用等级的分数区间：</div>\r\n<div>	每个信用等级都有一个信用分数的范围，具体可以见下表：</div>\r\n<div>	<table width="692" border="0" cellspacing="1" style="text-align:center;background:#000;">		<tbody><tr style="background:#fff;">			<td width="15%">信用等级</td>\r\n 			<td width="10%">HR</td>\r\n			<td width="10%">E</td>\r\n			<td width="10%">D</td>\r\n			<td width="10%">C</td>\r\n			<td width="10%">B</td>\r\n			<td width="10%">A</td>\r\n			<td width="10%">AA</td>\r\n		</tr>\r\n		<tr style="background:#fff;">			<td>分数区间</td>\r\n			<td>0-99</td>\r\n			<td>100-109</td>\r\n			<td>110-119</td>\r\n			<td>120-129</td>\r\n			<td>130-144</td>\r\n			<td>145-159</td>\r\n			<td>160+</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n<div class="b">	什么是信用额度</div>\r\n<div>	借款人在全部通过四项“必要信用认证”后，可以继续上传材料进行各项“可选信用认证”，在p2p信贷审核员完成对所提供材料的审核工作后，借款人会从p2p信贷获得一个相应的信用等级和信用额度。信用额度既是借款人单笔贷款的上限也是借款者累积尚未还清贷款的上限。例如，如果一个借款人信用额度为5万元，则在没有其他贷款的情况下，用户可以发布总额最高为5万元的贷款请求，也可以分多次发布贷款请求，但尚未还清贷款（以整笔贷款金额计算）的总额不得超过5万元。</div>\r\n<div class="b">	如何获得信用等级及信用额度</div>\r\n<div>	访问“我要贷款”—“p2p信贷认证”，根据提示完成四项“必要信用认证”及用户根据自身情况可自己可完成的“可选信用认证”后，即可获得信用等级及信用额度。</div>\r\n<div class="b">	如何查看我的信用等级</div>\r\n<div>	访问“我的p2p信贷”——“我的p2p信贷”——“p2p信贷认证”，您就可以看到您的信用等级，及您进行的各种信用认证的情况。</div>\r\n<div class="b">	如何提高我的信用等级（分数）</div>\r\n<div>   您可以通过申请“可选信用认证“来提高您的信用分数。另外您在p2p信贷网站上良好的借贷记录也会增加您的信用分数。</div>\r\n<div style="font-style:italic;">	注：提高信用等级可以增加理财人贷款成功的概率，提高贷款成功率，我们建议借款人在贷款前根据实际情况尽量多完成信用认证。</div>\r\n<div class="b">	为什么我获得了信用等级与信用额度，但我无法申请贷款</div>\r\n<div>	您无法申请贷款的原因可能是由于没有全部通过四项“必要信用认证”。<br />\r\n	如果还有问题请在工作时间联系在线客服或拨打网站服务热线：400-888-8888</div>\r\n<div class="b">	我某一项信用认证被驳回，是否可以进行重新认证？</div>\r\n<div>   如果您在某项信用认证中，资料提交发生错误或资料需要更新，您可以重新进行该项信用认证。</div>\r\n   <div class="b">   为什么我提交的附加信用认证，3个工作日后还没有收到结果？</div>\r\n<div>  只有当您通过全部的必要信用认证后，p2p信贷才会认证您的可选信用认证信息。所以您没有收到结果的原因可能是您没有通过全部的必要信用认证。</div>', 15, 1359856220, 1359960209, 0, 1, '', 0, 0, 0, 4, '', '', '', '', '', ''),
(49, '视频确认、贷款成功', '', '<div class="b">	什么是视频确认</div>\r\n<div>	为了保证贷款的真实有效，借款人在发布借款需求后需及时进行视频确认。视频确认的内容包括：借款人对自我身份的认证及宣读贷款承诺书。</div>\r\n<div class="b">	视频确认的时间及形式</div>\r\n<div>	形式1：在贷款列表出于资料审核状态（“等待材料”状态），在借款列表进入筹款阶段（“马上投标”状态），借款人可与对应信用审核员约定视频确认时间，进行时时视频通话进行确认。</div>\r\n<div>	形式2：在借款列表进入筹款阶段（“马上投标”状态），借款人可按网站规定格式、大小及内容自行录制确认视频后上传至该地址，上传后等待信用审核工作人员查看并予以最终确认。</div>\r\n<div class="b">	什么是贷款成功</div>\r\n<div>	理财人发布借款列表后，须至少通过四项必要信用认证并，此后借款人会得到相应的信用等级和信用额度，此时借款人的借款列表可被理财人投标，即开始筹集贷款。当借款列表满标且借款人通过视频确认后，p2p信贷信审工作组会对借款列表做最后的判定，当您的借款列表得到放款批准时即为贷款成功，您所筹集的资金将划入您的p2p信贷账户中。</div>\r\n <div class="b">	贷款成功后如何提取现金</div>\r\n<div>	当一个借款列表得到放款批准即为贷款成功后，p2p信贷将会将您筹集到的资金划入您的p2p借贷账户，您可在网站上点击“我的p2p信贷”—“充值提现”，填写提现信息。资金将在申请提现后1~2个工作日内到达您指定的银行账户。为了保障您的资金尽快到账，请您使用提现页面推荐的全国性银行申请提现。</div>', 15, 1359856230, 1359960125, 0, 1, '', 0, 0, 0, 3, '', '', '', '', '', ''),
(50, '还款', '', '<div class="b">	如何还款</div>\r\n<div>	若账户中余额大于当期还款在还款日系统会代贷款者自动扣缴当期还款，若借款人需要手动还款，请访问“我的p2p信贷”——“贷款管理”——“偿还贷款”。</div>\r\n<div>	若账户余额不足支付当期还款，可以通过网银为<a href="./#q18" target="_self">账户充值</a>。</div>\r\n<div class="b">	借入者能否提前还款</div>\r\n<div>	1.	借款人可以随时进行提前还款。具体的操作方法是访问“我的p2p信贷”——“贷款管理”——“偿还贷款”，点击右上角的“还清此笔贷款”。</div>\r\n<div>	2.	提提前还款的用户需要支付给理财人贷款剩余本金的1%作为违约金，不用再支付后续的利息及管理费用。公式如下： </div>\r\n<div>	提前还款应还金额= 剩余本金+ 当期本息及账户管理费+提前还款违约金</div>\r\n<div>	请用户注意提前归还部分贷款不视为提前还款，仍需支付全部贷款利息及账户管理费。 </div>', 15, 1359856260, 1359960026, 0, 1, '', 0, 0, 0, 2, '', '', '', '', '', ''),
(51, '逾期还款', '', '<div class="b">	如果逾期还款，会有什么惩罚</div>\r\n<div>	如果逾期还款，借款人要承担罚息与逾期后的管理费用，并会被扣去相应的信用分数。所以p2p信贷强烈建议用户避免逾期还款，一旦发生逾期请尽快还清贷款。</div>\r\n<div class="b">	逾期还款超过30天，会造成什么样的后果</div>\r\n<div>	若用户违约逾期还款超过30天，p2p信贷有权将该用户的有关资料正式备案在“不良信用记录”，列入全国个人信用评级体系的黑名单（“不良信用记录”数据将为银行、电信、担保公司、人才中心等有关机构提供个人不良信用信息）此不良记录将保存7年。同时保留对该用户采取法律措施的权利，由此所产生的所有法律后果和费用（包括但不限于律师费）将由该用户来承担。</div>\r\n<div class="b">	贷款逾期后的罚息如何计算</div>\r\n<div>	自逾期开始之后，正常利息停止计算。按照下面公式计算罚息：</div>\r\n<div>	罚息总额 = 逾期本息×对应罚息利率×逾期天数；</div>\r\n<div>	<table width="692" border="0" cellspacing="1" style="text-align:center;background:#000;">		<tbody><tr style="background:#fff;">			<td>逾期天数</td>\r\n			<td>1—30天</td>\r\n			<td>31天以上</td>\r\n		</tr>\r\n		<tr style="background:#fff;">			<td>罚息利率</td>\r\n			<td>0.05%</td>\r\n			<td>0.1%</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n<div class="b">	贷款逾期后的管理费用如何计算</div>\r\n<div>	自逾期开始之后，正常管理费用停止计算。按照下面公式计算：</div>\r\n<div>	逾期后管理费总额=逾期本息×对应逾期管理费率×逾期天数；</div>\r\n<div>	<table width="692" border="0" cellspacing="1" style="text-align:center;background:#000;">		<tbody><tr style="background:#fff;">			<td>逾期天数</td>\r\n			<td>1—30天</td>\r\n			<td>31天以上</td>\r\n		</tr>\r\n		<tr style="background:#fff;">			<td>逾期管理费率</td>\r\n			<td>0.1%</td>\r\n			<td>0.5%</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 15, 1359856279, 1359959972, 0, 1, '', 0, 0, 0, 1, '', '', '', '', '', ''),
(52, '费用、合同、理财金额限', '', '<div class="b">	理财人在p2p信贷上投资需要交哪些费用</div>\r\n<div>	理财人仅需向第三方支付平台（快钱、支付宝等）缴纳账户充值与提现的费用，p2p借贷对理财人不收取任何费用。详情请见“<a href="./index.php?ctl=aboutfee" target="_blank">费用</a>”。</div>\r\n<div class="b">	电子合同有效吗</div>\r\n<div>	我国新合同法第十一条规定: 书面形式合同是指合同书、信件和数据电文(包括电报、电传、传真、电子数据交换和电子邮件)等可以有形地表现所载内容的形式。因此电子合同属于书面形式的合同一种，是受到法律保护的。另外p2p信贷平台中的合同文本都由经济法律师起草的，保证了经过这个平台的交易是具备法律效力的。</div>\r\n<div class="b">	理财人的理财金额是否有限制 </div>\r\n<div>	理财人的理财金额没有上限。</div>\r\n<div class="b">p2p信贷现在是否提供线下借贷服务</div>\r\n<div>	目前p2p信贷暂不提供线下借贷业务，用户需在网上完成交易。</div>', 16, 1359861477, 1359959914, 0, 1, '', 0, 0, 0, 5, '', '', '', '', '', ''),
(53, '开始理财', '', '<div class="b">	如何开始理财</div>\r\n<div>	访问“我要理财”— 根据提示，填写相应的信息。通过“身份证绑定”、“手机绑定”，即可成为理财人。</div>\r\n<div class="b">	理财人为什么要做身份绑定？有什么好处</div>\r\n<div>	为了保障理财人资金的安全性，将p2p信贷账号实名绑定，以及保证理财人是年满18岁的具有完全民事行为能力的中国公民，从而保证借贷合同的有效性，p2p信贷要求所有理财人必须通过身份证认证。身份认证过程简便，且认证信息只用于核实用户身份，P2P借贷对于所有资料将严格保密。</div>', 16, 1359861495, 1359959861, 0, 1, '', 0, 0, 0, 4, '', '', '', '', '', ''),
(54, '投标', '', '<div class="b">	投标前我需要注意的事项：</div>\r\n<div>	1、认真阅读该借款列表的详细信息（包括贷款金额，利息率，贷款期限、贷款者信用等级等），以确定您所要投的标符合您的风险承受能力和所要求的投资回报率。</div>\r\n<div>	2、应知道若您所投标的借款人发生违约，违约损失需要由该标的所有理财人共同承担。</div>\r\n<div>	3、投标前请您核实自己将要理财的金额，确认无误后再进行操作。</div>\r\n<div>	4、您也可以参考网站的“<a href="./index.php?ctl=usagetip" target="_blank">使用技巧</a>”。</div>\r\n<div class="b">	如何分散投资风险</div>\r\n<div>	1.	请尽量分散您的投资，这样可以降低单一借款人违约对您的投资收益的影响。例如您可以把5000元借给10个借款人。</div>\r\n<div>	2.	请在同等收益的情况下投标给<a href="./index.php?ctl=helpcenter#q48">信用等级</a>较高的借款人。</div>\r\n<div>	3.	浏览网站关于<a href="./index.php?ctl=usagetip" target="_blank">使用技巧</a>的文章。</div>\r\n<div class="b">	信用等级的高低代表什么</div>\r\n<div>	一般情况下，用户信用等级越高，表明个人信用越好，借款违约的可能性越小。</div>\r\n<div class="b">	投标后是否可以取消</div>\r\n<div>	您在投标后不允许取消，若此标<a href="./index.php?ctl=helpcenter#q41">满标</a>并放款后，您账户上的冻结金额自动将转入该标借款人账户。若此标<a href="./index.php?ctl=helpcenter#q41">流标</a>，则您账户上的<a href="./index.php?ctl=helpcenter#q41">冻结金额</a>自动转为用户可用金额。</div>', 16, 1359861510, 1359959837, 0, 1, '', 0, 0, 0, 3, '', '', '', '', '', ''),
(55, '收取还款', '', '<div class="b">	如何收取还款</div>\r\n<div>	借款人在规定的还款时间内将钱充值到与p2p信贷合作的第三方支付平台上，p2p信贷系统会发送邮件通知所有理财人。理财人可按个人需求选择<a href="./index.php?ctl=helpcenter#q51">提现</a>，或继续投资（出借）。</div>\r\n<div>	注：借款人也可能提前偿还全部贷款或者在到期日前手动提前偿还贷款，请理财人注意查收p2p信贷发出的通知。</div>\r\n<div class="b">	借款人能否提前还款 </div>\r\n<div>	借款人可以提前偿还贷款，如果借款人提前偿还全部贷款，需要额外支付给理财人贷款剩余本金的1%作为违约金，不用再支付后续的利息及管理费用。公式如下：</div>\r\n<div>	提前还款应还金额= 剩余本金+ 当期本息及账户管理费+提前还款违约金</div>', 16, 1359861523, 1359959819, 0, 1, '', 0, 0, 0, 2, '', '', '', '', '', '');
INSERT INTO `%DB_PREFIX%article_copy` (`id`, `title`, `icon`, `content`, `cate_id`, `create_time`, `update_time`, `add_admin_id`, `is_effect`, `rel_url`, `update_admin_id`, `is_delete`, `click_count`, `sort`, `seo_title`, `seo_keyword`, `seo_description`, `uname`, `sub_title`, `brief`) VALUES
(56, '坏账', '', '<div class="b">	借款人逾期后再还款，理财人可以收到罚息吗</div>\r\n<div>	是的，请参考 “<a href="./index.php?ctl=helpcenter#q51">贷款逾期后的罚息如何计算</a>”。</div>\r\n<div class="b">	借款人逾期还款，p2p信贷将如何帮助理财人催收贷款</div>\r\n<div>p2p信贷有一套完善的催收机制，通过电话短信提醒、上门拜访、法律诉讼等多种方式，有效的保证了平台上绝大部分借款人的及时还款。延迟还款的借款人需按约定交纳罚息和违约金。</div>', 16, 1359861534, 1359959778, 0, 1, '', 0, 0, 0, 1, '', '', '', '', '', ''),
(57, '智能理财标', '', '<div class="b">	什么是智能理财标？</div>\r\n<div>	智能理财标是p2p信贷推出的全新理财产品系列。产品基于高保障的战略合作，精选大量质押、抵押贷款需求和供应链金融服务相关贷款需求供理财人选择。投资智能理财标，理财者的本金与利息将受到保障。回款方式与投资期限均更为灵活，当前智能理财标为每月还息，到期还本，之后还会逐步开发更具灵活性的系列化产品。在安全稳定、灵活便捷的前提下，保证了较高的理财收益。</div>\r\n<div class="b">	为什么智能理财标的额度为百万级别？</div>\r\n<div>	1、精挑渠道，细选借款用户，此类用户信用更优，还款能力更强；2、质押物、抵押物、供应链金融各环节等大幅增进借款人的信用级别，提高违约代价，同时p2p信贷与渠道合作有更强的处理此类贷款逾期的能力；3、日常实时监控更具保障力度。</div>\r\n<div class="b">	为什么说可以提高资金使用率？</div>\r\n<div>   因为智能理财标前期已经通过严格的审核流程，所以智能理财标满标当日即可放款，无需更多等待时间。并且智能理财标的回款方式更为灵活，本金回款更为集中（当前为每月还息，到期还本），省去了循环投标的操作，投资期间无需操心，坐享收益。</div>\r\n<div class="b">	如果智能理财标逾期，p2p信贷如何处理？</div>\r\n<div>	如果智能理财标发生逾期，但借款人在逾期的30天内进行了还款，借款人在偿还理财人应得利息的基础上，将额外支付罚息； 如果逾期30天后贷款人没有进行还款，在第31天时，p2p信贷风险准备金将赔付理财人应得的所有本金及利息，并额外赔偿30天（等待期）的利息予理财人，相应的，该标债权将由理财人转移至p2p信贷风险准备金。之后该债权收回的全部资金将归p2p信贷风险准备金所有。对于智能理财标，p2p信贷将收取年化1%-2%的服务费（不同合作渠道会有所不同）全部存于风险准备金账户用于p2p信贷智能理财本息保障计划。<br />\r\n	例：用户在5月1日获得贷款100万，年化利息为9%，借款期限3个月。理财人全体应在6月1日、7月1日得到利息7,500元，并在8月1日获得7,500+100万元（每月付息，到期还本）。如果贷款人在6月1日未按时还款，并一直没有偿还应还款项，理财人手中债权会在7月1日（逾期后第31天）转移到p2p借贷手中，并获得当月应得利息（7,500元）、额外赔偿的30天利息（7,500元）以及本金（100万元）。获赔的1,015,000元将根据理财人投资比例立即打到理财人的p2p借贷账户中。</div>\r\n<div class="b">	借款期限都有哪些选择？</div>\r\n<div>	经过科学的分析并进一步贴近贷款者及理财人的需求，智能理财标的期限目前最低至1个月，以自然月为单位，最高12个月，具有极强的流动性。后续的，更具灵活性的产品也会针对具体的实际贷款需求和理财人需求相应开发。</div>\r\n<div class="b">   什么是供应链金融？</div>\r\n<div>   供应链金融是指基于对供应链管理程度和核心企业信用资质的掌握，对供应链核心企业和上下游多个环节的企业提供的金融产品和服务。该种灵活的融资模式会根据特定产品供应链上的历史交易数据和贸易特性，以企业间贸易行为所产生的确定未来现金流为直接还款来源。</div>\r\n<div class="b">   应收账款保障产品是什么？</div>\r\n<div>   应收账款保障产品是p2p信贷智能理财标系列的供应链金融产品之一。该产品以供应链上下游企业间历史交易数据为审核依据，以借款企业特定账户中的应收账款作为保障。p2p信贷风险管理部门会严格定期监控该特定应收账款账户的资金流动情况，一旦借款用户逾期，该账户中的届时所有资金及未来待收资金将全部用于偿还所有未清偿本息。</div>\r\n<div class="b">   仓单保障产品是什么？</div>\r\n<div>   仓单保障产品是p2p信贷智能理财标系列的供应链金融产品之一。该产品以供应链上下游企业间物流环节的流通数据为审核依据，以借款企业在p2p信贷委托仓库内的在仓货物作为保障。p2p借贷风险管理部门会严格定期监控委托仓库内在仓货物流通及价格变动情况。一旦借款用户逾期，p2p信贷会在委托仓储方的协助下，对于在仓货物进行处置变卖，变卖后的资金将全部用于偿还所有未清偿本息。</div>', 17, 1359862633, 1359959753, 0, 1, '', 0, 0, 0, 4, '', '', '', '', '', ''),
(58, '机构担保标', '', '<div class="b">	什么是机构担保标？</div>\r\n<div>   是指p2p信贷的合作伙伴为相应的借款提供连带保证，并负有连带保证责任。所谓连带保证责任即连带保证人对债务人负连带责任，无论主债务人的财产是否能够清偿债务，债权人均可向保证人要求其履行保证义务。</div>\r\n<div class="b">p2p信贷如何选择合作或机构？</div>\r\n<div>	通过严格的考察，p2p信贷会选择具备丰富的个人信用审核经验、较长经营历史及雄厚的资金实力的机构合作展开该项业务。</div>\r\n<div class="b">p2p信贷有什么手段防范合作伙伴带来的风险？</div>\r\n<div>p2p信贷与合作伙伴签订了合作协议，一旦合作伙伴违背其应承担的连带保证责任，p2p信贷有权通过法律手段进行追偿，同时p2p信贷会通过自有的严格的审核系统对合作伙伴的相关业务进行双重审核，严控风险。</div>\r\n<div class="b">	机构担保标与网站个人发布的借款的区别是什么？</div>\r\n<div>   由于有合作伙伴为借款人提供担保，机构担保标能够为理财人提供本息保障；筹标时间为四天，缩短借款、理财人双方的资金流转周期；满标后立即放款，可提高审核效率和放款速度。</div>\r\n<div class="b">	如果机构担保标逾期，p2p信贷如何处理？</div>\r\n<div>	合作机构承担借款的连带保证责任，若此类借款逾期，合作机构将代借款人偿付此笔借款的本息及相关费用。</div>\r\n<div class="b">	借款人的资质如何审核？</div>\r\n<div>	借款人通过合作伙伴在全国各地的网点进行借款申请，由合作伙伴对其借款资质进行全面审核，审核内容包括但不限于借款人信用报告、收入、财产的资料审核和实地考察等，p2p信贷负责通过自己的风控手段进行复审。</div>', 17, 1359862671, 1359959612, 0, 1, '', 0, 0, 0, 3, '', '', '', '', '', ''),
(59, '实地认证标', '', '<div class="b">什么是“实地认证标”？</div>\r\n<div>   “实地认证标”是p2p信贷推出的一款全新产品。该产品延续了p2p信贷借贷求真务实的经营理念，在原有严格审核的基础上，增加了p2p信贷前端工作人员对借款人情况的实地走访、审核调查以及后续的贷中、贷后服务环节，进一步加强风险管理控制，达到了双重保障的效果。</div>\r\n<div class="b">“实地认证标”与“信用认证标”的区别是什么？</div>\r\n<div>“实地认证标”相对“信用认证标”增添了实地认证审核，进一步保障了理财用户资金安全；同时采用本息保障的赔付方式，使得您理财更加省心、放心。</div>\r\n<div class="b">   “实地认证标”如果产生坏账，将如何垫付？</div>\r\n<div>p2p信贷风险备用金将对此类产品的本金和利息提供双重保障。一旦该产品借款发生逾期，p2p信贷风险备用金将优先代借款人偿付此笔借款的本息及相关费用。</div>', 17, 1359862713, 1359959520, 0, 1, '', 0, 0, 0, 2, '', '', '', '', '', ''),
(60, '充值方式', '', '<div class="b">	如何给我的账户充值</div>\r\n<div>	<div>1.进入“我的p2p信贷-充值提现页面”，输入要充值的金额，点击充值按钮，将弹出国通付或快钱付款界面。</div>\r\n	<div>2.选择付款银行，点击确认无误按钮，按提示完成付款。</div>\r\n	<div>3.	付款后，显示成功付款后，跳转到p2p信贷充值页面，显示充值成功。</div>\r\n	<div>4.	您可以通过资金记录查看充值的金额及历史记录。</div>\r\n</div>', 18, 1359862775, 1359959426, 0, 1, '', 0, 0, 0, 3, '', '', '', '', '', ''),
(61, '如何充值', '', '<div class="b">	如何给我的账户充值</div>\r\n<div>	<div>1.进入“我的p2p信贷-充值提现页面”，输入要充值的金额，点击充值按钮，将弹出国付通或快钱付款界面。</div>\r\n	<div>2.选择付款银行，点击确认无误按钮，按提示完成付款。</div>\r\n	<div>3.	付款后，显示成功付款后，跳转到p2p信贷充值页面，显示充值成功。</div>\r\n	<div>4.	您可以通过资金记录查看充值的金额及历史记录。</div>\r\n</div>', 18, 1359862815, 1359959394, 0, 1, '', 0, 0, 0, 2, '', '', '', '', '', ''),
(62, '提现', '', '<div class="b">	如何提取现金</div>\r\n<div>	<div>您可以随时将您在“p2p信贷”账号中的可用余额申请提现到您现有的任何一家银行的账号上。 </div>\r\n	<div>注意：请确保您填写的银行账号的开户人姓名和您在p2p信贷上提供的身份证上的真实姓名一致，并提供一张可以申请提现的银行账号，否则提现无法成功。 </div>\r\n</div>\r\n<div class="b">	在申请取现时，如何填写正确的开户行支行名称</div>\r\n<div>	<div>用户在申请取现时，一定要确保自己填写的开户行支行名称正确。 </div>\r\n	<div>一般的开户行支行名称都是由 xx银行+xx分行+xx支行 组成的。 </div>\r\n	<div>如：</div>\r\n	<div>招商银行上海分行新客站支行 </div>\r\n	<div>工商银行四川省攀枝花市分行 </div>\r\n	<div>农业银行深圳分行长城支行 </div>\r\n	<div>交通银行北京崇文门支行 </div>\r\n	<div>如果用户不清楚开户行支行名称，可以打电话到当地所在银行的营业网点询问或者登录该银行网站查找。 </div>\r\n</div>\r\n<div class="b">	为什么我申请取现失败？ </div>\r\n<div>	<div>造成您取现失败的原因可能有以下几种： </div>\r\n	<div> ·&nbsp;p2p信贷账号未绑定本人身份证 </div>\r\n	<div> · 银行开户行信息错误 </div>\r\n	<div> · 银行账号/户名错误，或是账号和户名不符 </div>\r\n	<div> · 使用信用卡提现 </div>\r\n	<div> · 银行账户冻结或正在办理挂失 </div>\r\n	<div>如果遇到以上情况，我们会在收到支付机构转账失败的的通知后解除您的资金冻结（手续费不退还），请您不必担心资金安全。 </div>\r\n</div>', 18, 1359862845, 1359959349, 0, 1, '', 0, 0, 0, 1, '', '', '', '', '', ''),
(63, '注册登录', '', '<div class="b">	如何成为p2p信贷注册用户</div>\r\n<div>	<div>1.	进入p2p信贷首页，点击右上角“免费注册”按钮。</div>\r\n	<div>2.	根据提示信息，填写您的注册邮箱、密码，点击“免费注册”。</div>\r\n	<div>3.	注册邮箱为用户的用户名，为后续接收站内消息及账单的唯一渠道，注册后此邮箱不可修改。</div>\r\n</div>\r\n<div class="b">	如何登录p2p信贷</div>\r\n<div>	<div>注册成为p2p信贷用户后,您就可以使用账号登录p2p借贷了：</div>\r\n	<div>1.	进入p2p信贷首页，点击右上角“登录”按钮。</div>\r\n	<div>2.	输入您的账号(电子邮件)及密码，点击“登录”按钮。</div>\r\n</div>\r\n<div class="b">	如何找回我的密码</div>\r\n<div>	<div>如果您遗忘了密码，可以在网站用户登录页面，点击“忘记密码了”按钮，填写自己的Email地址信息找回密码。</div>\r\n	<div>1.	点击首页“登录”---点击“忘记密码”。</div>\r\n	<div>2.	填写您当时注册的邮箱，点击“发送到我的邮箱”。</div>\r\n	<div>3.	提示邮件发送成功。</div>\r\n	<div>4.	根据提示到您的邮箱中将会收到一封标题为“重设密码”的信件,点击信中的链接。</div>\r\n	<div>5.	根据提示密码重置成功。</div>\r\n</div>\r\n<div class="b">	设置密码</div>\r\n<div>	您注册时输入的密码可以是数字或者英文字母，对于英文字母我们同时设置了大小写的区分。注册后您可以随时在“我的p2p借贷”--“个人设置”—“修改密码”中修改您所设定的密码。</div>\r\n<div class="b">	账户密码安全常识</div>\r\n<div>	<div>请仔细阅读以下常见的安全措施：</div>\r\n	<div>1.	密码要保密，且定期更改。</div>\r\n	<div>2.	请使用较长、复杂的字母数字组合以提高密码强度，不要用生日等容易被别人猜中的密码。</div>\r\n	<div>3.	如果使用了密码取回功能，请您及时删除我们发送给您的载有密码的邮件。</div>\r\n	<div>4.	请记住不要与任何人共享您的密码。如果您已经与他人共享了密码，我们强烈建议您尽快更改。</div>\r\n	<div>5.	您可能在不经意间使计算机受到病毒、木马、间谍软件、广告软件的感染，这些软件也可能记录并盗走您的密码！所以，请安装和使用杀毒软件。</div>\r\n</div>', 19, 1359862891, 1406768764, 0, 1, '', 0, 0, 1, 3, '', '', '', '', '', ''),
(64, '我的p2p信贷', '', '<div class="b">	如何修改个人资料</div>\r\n<div>	访问“我的p2p信贷”— “个人设置”—“修改个人信息”-，即可编辑个人资料。</div>\r\n<div class="b">	如何取消p2p信贷的邮件和站内信的提醒</div>\r\n<div>	访问“我的p2p信贷”— “个人设置”—“通知设置”-，即可修改。</div>', 19, 1359862940, 1359957897, 0, 1, '', 0, 0, 0, 2, '', '', '', '', '', ''),
(65, '意见反馈、举报', '', '<div class="b">	对网站有任何建议或意见，如何反馈</div>\r\n<div>	<div>您可以发站内信给用户“p2p信贷客服”，我们会及时给您回馈。</div>\r\n	<div>发站内信请访问网站上“我的p2p信贷”-“我的p2p信贷”-“站内信”。</div>\r\n</div>\r\n<div class="b">	遇到其他用户恶意骚扰怎么办</div>\r\n<div>	如遇到情况严重的恶意骚扰，请举报该用户给p2p信贷工作人员。我们核实后会尽快采取处理措施。</div>\r\n<div class="b">	遇到别人盗用我的资料假冒我怎么办</div>\r\n<div>	如遇到此类情况，您可以联系p2p借贷的在线客服或拨打我们的客服热线400-888-8888来向我们说明情况，我们会尽快采取处理措施，以确保您信息和资金的安全。</div>\r\n<div class="b">	如何截屏并保存图片</div>\r\n<div>	<div>一、使用PrintScreen键</div>\r\n	<div>1、首先，在出现想要截的画面的时候，按下键盘上的PrintScreen键。</div>\r\n	<div>2、在"开始"→"所有程序"→"附件"选"画图"，这会打开Windows系统自带的画图程序(mspaint.exe)选择"编辑"→"粘贴"(或者直接用Ctrl+V热键)，将截下来的图粘贴到画图程序中。</div>\r\n	<div>3、将图片进行保存，选择"文件"→"另存为"，在出现的另存为对话框中选择保存类型为 JPEG（*.JPG;*.JPEG;*.JPE;*.JFIF），然后输入文件名，点击保存。</div>\r\n	<div>二、使用QQ截屏</div>\r\n	<div>1、打开QQ对话框。</div>\r\n	<div>2、点击Ctrl+Alt+A键，用鼠标选取想截屏的画面。</div>\r\n	<div>3、点击“保存”，在出现的对话框中选择保存类型为 JPEG（*.JPG;*.JPEG;），然后输入文件名，点击保存。</div>\r\n	<div>三、使用其他截屏工具</div>\r\n	<div>说明： 请不要用任何其他图片编辑软件编辑。如果发现用户存在用其他图片编辑软件的情况，您将会被加入系统黑名单。</div>\r\n</div>', 19, 1359862979, 1359958060, 0, 1, '', 0, 0, 0, 1, '', '', '', '', '', ''),
(68, '123', '', '123', 5, 1392410799, 1392410799, 0, 1, '123', 0, 1, 1, 56, '123', '123', '123', '', '123', '123'),
(69, 'test', '', 'testtesttesttest', 13, 1396895320, 1396895320, 0, 1, '', 0, 1, 0, 56, '', '', '', '', '', 'testtesttesttest'),
(70, 'test', '', 'test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;test test&nbsp;', 6, 1397085431, 1397085431, 0, 1, '', 0, 1, 0, 56, '', '', '', '', '', ''),
(72, '公司地址', '', '地址：福建省福州市台江区八一七中路群升国际E区109', 20, 1406768192, 1406768192, 0, 1, '', 0, 1, 1, 56, '', '', '', '', '', ''),
(73, '充值与提现', '', '<p class="ral-title" style="margin-top:20px;margin-bottom:30px;padding:0px;font-size:16px;font-weight:bold;">1.充值</p>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="充值有费用么？是否有充值上限？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">充值有费用么？是否有充值上限？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="如何进行充值？没有第三方支付的账户是否也可以充值？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">如何进行充值？没有第三方支付的账户是否也可以充值？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="网上银行该如何开通办理？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">网上银行该如何开通办理？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="充值时为什么提示限额？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">充值时为什么提示限额？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<p class="ral-title" style="margin-top:20px;margin-bottom:30px;padding:0px;font-size:16px;font-weight:bold;">2.提现</p>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="提现后能否取消？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">提现后能否取消？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="提现有时间规定么？提现资金多久能到银行卡上？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">提现有时间规定么？提现资金多久能到银行卡上？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="如何设置提现绑定的银行卡？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">如何设置提现绑定的银行卡？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="绑定银行卡可以修改么？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">绑定银行卡可以修改么？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="为什么提现申请会失败？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">为什么提现申请会失败？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="提现收费吗？免提现手续费额度是什么？" style="color:#666666;outline:none;font-family:''microsoft yahei'', tahoma, helvetica, arial, 宋体, sans-serif;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;font-family:''microsoft yahei'', tahoma, helvetica, arial, 宋体, sans-serif;background-repeat:no-repeat no-repeat;">提现收费吗？免提现手续费额度是什么？</p>\r\n<br class="Apple-interchange-newline" />\r\n</div>', 20, 1406768662, 1406768662, 0, 1, '', 0, 0, 272, 56, '', '', '', '', '', ''),
(74, '认证与安全', '', '<p class="ral-title" style="margin-top:20px;margin-bottom:30px;padding:0px;font-size:16px;font-weight:bold;">1.认证</p>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="注册后需完成哪些认证？如何操作？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">注册后需完成哪些认证？如何操作？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="为什么手机认证时会收不到验证码短信？如何处理？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">为什么手机认证时会收不到验证码短信？如何处理？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="如何修改实名认证信息？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">如何修改实名认证信息？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="如何修改手机认证信息？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">如何修改手机认证信息？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="如何修改邮箱认证信息？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">如何修改邮箱认证信息？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<p class="ral-title" style="margin-top:20px;margin-bottom:30px;padding:0px;font-size:16px;font-weight:bold;">2.安全</p>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="如何增加密码的安全性？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">如何增加密码的安全性？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="什么是支付密码？忘记支付密码怎么办？" style="color:#666666;outline:none;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;background-repeat:no-repeat no-repeat;">什么是支付密码？忘记支付密码怎么办？</p>\r\n<div class="ral-dashed" style="margin:0px 0px 20px;padding:0px;min-width:650px;max-width:790px;width:790px;height:1px;border-top-width:1px;border-top-style:dashed;border-top-color:#e6e6e6;"></div>\r\n</div>\r\n<div class="ral-qaa" style="margin:0px;padding:0px;"><a id="如何修改爱投资邮件、站内信及短信的提醒？" style="color:#666666;outline:none;font-family:''microsoft yahei'', tahoma, helvetica, arial, 宋体, sans-serif;"></a><p class="ral-question" style="margin-top:0px;margin-bottom:20px;padding:0px 0px 0px 26px;font-size:14px;line-height:15px;background-image:url(http://itzstatic.b0.upaiyun.com/static/img/help/help_ral.jpg);height:15px;font-weight:bold;cursor:pointer;font-family:''microsoft yahei'', tahoma, helvetica, arial, 宋体, sans-serif;background-repeat:no-repeat no-repeat;">如何修改爱投资邮件、站内信及短信的提醒？</p>\r\n<br class="Apple-interchange-newline" />\r\n</div>', 20, 1406768683, 1406768683, 0, 1, '', 0, 0, 288, 57, '', '', '', '', '', ''),
(75, '投资回报', '', '<div style="margin-top:10px;padding:10px;"><div style="font-size:13px;line-height:20px;"><p><b>通过p2p信贷，您可以将手中的富余资金出借给信用良好但缺少资金的大学生、工薪阶层、微小企业主、农民，帮助他们实现教育培训、电脑或家电购买、	 装修、兼职创业、脱贫致富等理想，同时还能通过利息收入为您带来较高的稳定收益，	 实现精神和物质的双重回报。根据p2p信贷的历史经验数据，资金年收益始终保持在10%以上。</b></p>\r\n</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;"><div class="about_title2">各类型投资产品收益及风险对比分析</div>\r\n<div style="border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#9c9c9c;margin:8px 0px;"></div>\r\n<div class="dunDetail" style="font-size:13px;"><table width="480" border="0" cellspacing="1" style="text-align:center;background-color:#d3d4d8;background-position:initial initial;background-repeat:initial initial;"><tbody><tr bgcolor="#e1f0ff" style="font-weight:bold;height:37px;"><td>产品</td>\r\n<td>年收益</td>\r\n<td>风险级别</td>\r\n<td>流动性</td>\r\n</tr>\r\n<tr bgcolor="#ffffff" style="height:37px;"><td>一年期定存</td>\r\n<td>2.6%</td>\r\n<td>★</td>\r\n<td>★</td>\r\n</tr>\r\n<tr bgcolor="#ffffff" style="height:37px;"><td>一年期国债</td>\r\n<td>2.6%</td>\r\n<td>★</td>\r\n<td>★</td>\r\n</tr>\r\n<tr bgcolor="#ffffff" style="height:37px;"><td>银行理财产品</td>\r\n<td>3%—6%</td>\r\n<td>★★</td>\r\n<td>★</td>\r\n</tr>\r\n<tr bgcolor="#ffffff" style="height:37px;"><td>开放式基金</td>\r\n<td>不确定</td>\r\n<td>★★★</td>\r\n<td>★★★★★</td>\r\n</tr>\r\n<tr bgcolor="#ffffff" style="height:37px;"><td>股票</td>\r\n<td>不确定</td>\r\n<td>★★★★★</td>\r\n<td>★★★★</td>\r\n</tr>\r\n<tr bgcolor="#ffffff" style="height:37px;"><td>p2p信贷</td>\r\n<td>10%以上</td>\r\n<td>★</td>\r\n<td>★★</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;"><div class="about_title2">一年期定期存款、国债</div>\r\n<div style="border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#9c9c9c;margin:8px 0px;"></div>\r\n<div style="font-size:13px;line-height:20px;"><p>定期存款与国债的风险，在众多理财途径里面无疑最低的，然而锁定期长，2％左右的回报率，在通过膨胀日益高涨，CPI高于3％的今天，	 却让资金难以抗衡通胀，从长期来看购买力将越来越低。</p>\r\n</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;"><div class="about_title2">银行理财产品</div>\r\n<div style="border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#9c9c9c;margin:8px 0px;"></div>\r\n<div style="font-size:13px;line-height:20px;"><p>在银行里，锁定期1年以上的理财产品，年化回报率一般在在3－6％左右，但是动辄几百万的投资门槛，将很多理财者拒之门外。相比起来，	 通过p2p借贷系统借出，资金的回收情况则要灵活的多。此外，理财产品背后的还款来源则是政府的财政贷款，房地产信托等。这些对象的财务情况并非完全透明，	 对于普通用户来说，往往只能看到表面的情况，难以真正理解其中的风险。</p>\r\n</div>\r\n</div>\r\n<div style="margin-top:20px;padding:10px;"><div class="about_title2">股票、基金</div>\r\n<div style="border-bottom-width:1px;border-bottom-style:solid;border-bottom-color:#9c9c9c;margin:8px 0px;"></div>\r\n<div style="font-size:13px;line-height:20px;"><p>随着中国金融行业的发展，股票和基金已经慢慢地成为了很多人投资理财的选择。然而，股票和激励里那些复杂的概念，创业版，物联网，	 有色板块，明星基金经理，内部消息等等词汇，我们已慢慢耳熟能详，我们也一次次地期望那个暴富的故事发生在我们身上，然而在现实生活中，	 却往往发现并不那么给力，我们面临的更多的总是长期套牢。相比起来，通过分散投资，通过借钱还款这样简单明了的赚钱模式，获得稳定的10%以上收益，	 也许更适合普通的投资者。</p>\r\n</div>\r\n</div>', 3, 1406769240, 1411517730, 0, 1, '', 0, 0, 415, 58, '', '', '', '', '', ''),
(76, 'test', '', 'test', 22, 1415724864, 1415724864, 0, 1, '', 0, 1, 0, 59, '', '', '', '', '', ''),
(77, '授权服务机构', '', '', 20, 1423072295, 1423072295, 0, 1, 'http://p2p.fanwe.net/index.php?ctl=authorized&act=login', 0, 0, 0, 60, '', '', '', '', '', ''),
(78, 'youaresb', '', 'sbsbsbsb', 20, 1423619060, 1423619060, 0, 1, '', 0, 1, 0, 61, '', '', '', '', '', ''),
(79, '什么叫债权转让', '', '什么叫债权转让', 24, 1426899571, 1426899571, 0, 1, '', 0, 0, 0, 61, '', '', '', '', '', ''),
(80, '我是媒体报道哦', './public/attachment/201503/27/17/5515293646451.png', '我是媒体报道哦我是媒体报道哦我是媒体报道哦我是媒体报道哦我是媒体报道哦我是媒体报道哦', 25, 1427421377, 1427421377, 0, 1, '', 0, 0, 0, 62, '', '', '', '', '我是媒体报道哦我是', '我是媒体报道哦我是媒体报道哦我是媒体报道哦');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%auto_cache`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%auto_cache` (
  `cache_key` varchar(100) NOT NULL,
  `cache_type` varchar(100) NOT NULL,
  `cache_data` text NOT NULL,
  `cache_time` int(11) NOT NULL,
  PRIMARY KEY (`cache_key`,`cache_type`),
  KEY `cache_type` (`cache_type`),
  KEY `cache_key` (`cache_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%auto_cache_copy`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%auto_cache_copy` (
  `cache_key` varchar(100) NOT NULL,
  `cache_type` varchar(100) NOT NULL,
  `cache_data` text NOT NULL,
  `cache_time` int(11) NOT NULL,
  PRIMARY KEY (`cache_key`,`cache_type`),
  KEY `cache_type` (`cache_type`),
  KEY `cache_key` (`cache_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%bank`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '银行名称',
  `is_rec` tinyint(1) NOT NULL COMMENT '是否推荐',
  `day` int(11) NOT NULL COMMENT '处理时间',
  `sort` int(11) NOT NULL COMMENT '银行排序',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- 转存表中的数据 `%DB_PREFIX%bank`
--

INSERT INTO `%DB_PREFIX%bank` (`id`, `name`, `is_rec`, `day`, `sort`, `icon`) VALUES
(1, '中国工商银行', 1, 3, 0, './public/bank/1.jpg'),
(2, '中国农业银行', 1, 3, 0, './public/bank/2.jpg'),
(3, '中国建设银行', 1, 3, 0, './public/bank/3.jpg'),
(4, '招商银行', 1, 3, 0, './public/bank/4.jpg'),
(5, '中国光大银行', 1, 3, 0, './public/bank/5.jpg'),
(6, '中国邮政储蓄银行', 1, 3, 0, './public/bank/6.jpg'),
(7, '兴业银行', 1, 3, 0, './public/bank/7.jpg'),
(8, '中国银行', 0, 3, 0, './public/bank/8.jpg'),
(9, '交通银行', 0, 3, 3, './public/bank/9.jpg'),
(10, '中信银行', 0, 3, 0, './public/bank/10.jpg'),
(11, '华夏银行', 0, 3, 0, './public/bank/11.jpg'),
(12, '上海浦东发展银行', 0, 3, 1, './public/bank/12.jpg'),
(13, '城市信用社', 0, 3, 0, './public/bank/13.jpg'),
(14, '恒丰银行', 0, 3, 0, './public/bank/14.jpg'),
(15, '广东发展银行', 0, 3, 0, './public/bank/15.jpg'),
(16, '深圳发展银行', 0, 3, 2, './public/bank/16.jpg'),
(17, '中国民生银行', 0, 3, 0, './public/bank/17.jpg'),
(18, '中国农业发展银行', 0, 3, 0, './public/bank/18.jpg'),
(19, '农村商业银行', 0, 3, 0, './public/bank/19.jpg'),
(20, '农村信用社', 0, 3, 0, './public/bank/20.jpg'),
(21, '城市商业银行', 0, 3, 0, './public/bank/21.jpg'),
(22, '农村合作银行', 0, 3, 0, './public/bank/22.jpg'),
(23, '浙商银行', 0, 3, 0, './public/bank/23.jpg'),
(24, '上海农商银行', 0, 3, 0, './public/bank/24.jpg'),
(25, '中国进出口银行', 0, 3, 0, './public/bank/25.jpg'),
(26, '渤海银行', 0, 3, 0, './public/bank/26.jpg'),
(27, '国家开发银行', 0, 3, 0, './public/bank/27.jpg'),
(28, '村镇银行', 0, 3, 0, './public/bank/28.jpg'),
(29, '徽商银行股份有限公司', 0, 3, 0, './public/bank/29.jpg'),
(30, '南洋商业银行', 0, 3, 0, './public/bank/30.jpg'),
(31, '韩亚银行', 0, 3, 0, './public/bank/31.jpg'),
(32, '花旗银行', 0, 3, 0, './public/bank/32.jpg'),
(33, '渣打银行', 0, 3, 0, './public/bank/33.jpg'),
(34, '华一银行', 0, 3, 0, './public/bank/34.jpg'),
(35, '东亚银行', 0, 3, 0, './public/bank/35.jpg'),
(36, '苏格兰皇家银行', 1, 1, 26, './public/bank/36.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%bank_copy`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%bank_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '银行名称',
  `is_rec` tinyint(1) NOT NULL COMMENT '是否推荐',
  `day` int(11) NOT NULL COMMENT '处理时间',
  `sort` int(11) NOT NULL COMMENT '银行排序',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- 转存表中的数据 `%DB_PREFIX%bank_copy`
--

INSERT INTO `%DB_PREFIX%bank_copy` (`id`, `name`, `is_rec`, `day`, `sort`, `icon`) VALUES
(1, '中国工商银行', 1, 3, 0, './public/bank/1.jpg'),
(2, '中国农业银行', 1, 3, 0, './public/bank/2.jpg'),
(3, '中国建设银行', 1, 3, 0, './public/bank/3.jpg'),
(4, '招商银行', 1, 3, 0, './public/bank/4.jpg'),
(5, '中国光大银行', 1, 3, 0, './public/bank/5.jpg'),
(6, '中国邮政储蓄银行', 1, 3, 0, './public/bank/6.jpg'),
(7, '兴业银行', 1, 3, 0, './public/bank/7.jpg'),
(8, '中国银行', 0, 3, 0, './public/bank/8.jpg'),
(9, '交通银行', 0, 3, 3, './public/bank/9.jpg'),
(10, '中信银行', 0, 3, 0, './public/bank/10.jpg'),
(11, '华夏银行', 0, 3, 0, './public/bank/11.jpg'),
(12, '上海浦东发展银行', 0, 3, 1, './public/bank/12.jpg'),
(13, '城市信用社', 0, 3, 0, './public/bank/13.jpg'),
(14, '恒丰银行', 0, 3, 0, './public/bank/14.jpg'),
(15, '广东发展银行', 0, 3, 0, './public/bank/15.jpg'),
(16, '深圳发展银行', 0, 3, 2, './public/bank/16.jpg'),
(17, '中国民生银行', 0, 3, 0, './public/bank/17.jpg'),
(18, '中国农业发展银行', 0, 3, 0, './public/bank/18.jpg'),
(19, '农村商业银行', 0, 3, 0, './public/bank/19.jpg'),
(20, '农村信用社', 0, 3, 0, './public/bank/20.jpg'),
(21, '城市商业银行', 0, 3, 0, './public/bank/21.jpg'),
(22, '农村合作银行', 0, 3, 0, './public/bank/22.jpg'),
(23, '浙商银行', 0, 3, 0, './public/bank/23.jpg'),
(24, '上海农商银行', 0, 3, 0, './public/bank/24.jpg'),
(25, '中国进出口银行', 0, 3, 0, './public/bank/25.jpg'),
(26, '渤海银行', 0, 3, 0, './public/bank/26.jpg'),
(27, '国家开发银行', 0, 3, 0, './public/bank/27.jpg'),
(28, '村镇银行', 0, 3, 0, './public/bank/28.jpg'),
(29, '徽商银行股份有限公司', 0, 3, 0, './public/bank/29.jpg'),
(30, '南洋商业银行', 0, 3, 0, './public/bank/30.jpg'),
(31, '韩亚银行', 0, 3, 0, './public/bank/31.jpg'),
(32, '花旗银行', 0, 3, 0, './public/bank/32.jpg'),
(33, '渣打银行', 0, 3, 0, './public/bank/33.jpg'),
(34, '华一银行', 0, 3, 0, './public/bank/34.jpg'),
(35, '东亚银行', 0, 3, 0, './public/bank/35.jpg'),
(36, '苏格兰皇家银行', 1, 1, 26, './public/bank/36.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%baofoo_acct_trans`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%baofoo_acct_trans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` varchar(20) NOT NULL COMMENT '商户号',
  `terminal_id` varchar(20) NOT NULL COMMENT '终端号',
  `order_id` int(11) NOT NULL COMMENT '订单号 (唯一不可重复)',
  `ref_id` int(11) NOT NULL DEFAULT '0' COMMENT '转发类型关联的id;ref_type=1时%DB_PREFIX%deal_load_transfer.id',
  `ref_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '转帐类型;1:债权转让',
  `payer_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '付款方帐号',
  `payee_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '收款方帐号',
  `payer_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '付款方帐号类型;0为普通用户(平台的user_id) 1为商户号',
  `payee_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '收款方帐号类型 0为普通用户(平台的user_id) 1为商户号',
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额，单位：元',
  `fee_taken_on` tinyint(1) DEFAULT '1' COMMENT '费用承担方(平台收取的费用),0付款方1收款方',
  `fee` decimal(20,2) DEFAULT '0.00' COMMENT '该费用将会从指定费用方账户收取到平台可用账户',
  `req_time` varchar(20) DEFAULT '0' COMMENT '请求时间',
  `code` varchar(20) DEFAULT NULL COMMENT '结果代码',
  `msg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22023 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%baofoo_acct_trans_copy`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%baofoo_acct_trans_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` varchar(20) NOT NULL COMMENT '商户号',
  `terminal_id` varchar(20) NOT NULL COMMENT '终端号',
  `order_id` int(11) NOT NULL COMMENT '订单号 (唯一不可重复)',
  `ref_id` int(11) NOT NULL DEFAULT '0' COMMENT '转发类型关联的id;ref_type=1时%DB_PREFIX%deal_load_transfer.id',
  `ref_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '转帐类型;1:债权转让',
  `payer_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '付款方帐号',
  `payee_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '收款方帐号',
  `payer_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '付款方帐号类型;0为普通用户(平台的user_id) 1为商户号',
  `payee_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '收款方帐号类型 0为普通用户(平台的user_id) 1为商户号',
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额，单位：元',
  `fee_taken_on` tinyint(1) DEFAULT '1' COMMENT '费用承担方(平台收取的费用),0付款方1收款方',
  `fee` decimal(20,2) DEFAULT '0.00' COMMENT '该费用将会从指定费用方账户收取到平台可用账户',
  `req_time` varchar(20) DEFAULT '0' COMMENT '请求时间',
  `code` varchar(20) DEFAULT NULL COMMENT '结果代码',
  `msg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22023 ;

--
-- 转存表中的数据 `%DB_PREFIX%baofoo_acct_trans_copy`
--

INSERT INTO `%DB_PREFIX%baofoo_acct_trans_copy` (`id`, `merchant_id`, `terminal_id`, `order_id`, `ref_id`, `ref_type`, `payer_user_id`, `payee_user_id`, `payer_type`, `payee_type`, `amount`, `fee_taken_on`, `fee`, `req_time`, `code`, `msg`) VALUES
(22022, '100000675', '', 0, 111, 1, 440030, 440031, 0, 0, '4000.00', 1, '40.00', '1427702721781', 'CSD000', '处理成功');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%baofoo_bind_state`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%baofoo_bind_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` varchar(20) NOT NULL COMMENT '商户号',
  `terminal_id` varchar(20) NOT NULL COMMENT '终端号',
  `bf_account` varchar(20) NOT NULL COMMENT '手机号，快速注册时候的宝付帐号',
  `name` varchar(50) NOT NULL COMMENT '用户真实姓名',
  `id_card` varchar(50) NOT NULL COMMENT '用户身份证号',
  `user_id` int(11) NOT NULL COMMENT '用户编号(唯一做)',
  `sign` varchar(50) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL COMMENT '结果代码',
  `msg` varchar(255) DEFAULT NULL COMMENT '绑定结果信息',
  `is_callback` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%baofoo_business`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%baofoo_business` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` varchar(20) NOT NULL COMMENT '商户号',
  `terminal_id` varchar(20) NOT NULL COMMENT '终端号',
  `action_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '请求类型，投标为1，满标为2，流标为3，还标为4',
  `order_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单号 （唯一不允许重复）',
  `cus_id` int(11) NOT NULL DEFAULT '0' COMMENT '标id',
  `cus_name` varchar(255) NOT NULL COMMENT '标名称',
  `brw_id` int(11) NOT NULL DEFAULT '0' COMMENT '借款人user_id用户编号(唯一)',
  `req_time` varchar(20) NOT NULL DEFAULT '0' COMMENT '请求时间	例如 1405668253874  （当前时间转换毫秒）',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户编号',
  `amount` decimal(20,2) DEFAULT '0.00' COMMENT '金额，单位：元',
  `special` int(11) DEFAULT '0' COMMENT '特殊标识(还标专用), 该编号对应的用户，为还款人。如20140374',
  `fee` decimal(20,2) DEFAULT '0.00' COMMENT '手续费(涉及到满标、还款接口)',
  `load_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '记录：投标人',
  `load_amount` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '投标金额；投标时使用',
  `repay_start_time` int(11) NOT NULL DEFAULT '0' COMMENT '开始还款日期;满标放款时使用',
  `bids_msg` varchar(255) DEFAULT NULL COMMENT '流标原因',
  `deal_repay_id` int(11) NOT NULL DEFAULT '0' COMMENT '还款时使用,还款计划id',
  `code` varchar(20) DEFAULT NULL COMMENT '结果代码',
  `msg` varchar(255) DEFAULT NULL COMMENT '绑定结果信息',
  `is_callback` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  `ecv_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`cus_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17086 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%baofoo_business_detail`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%baofoo_business_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户编号',
  `amount` decimal(20,2) DEFAULT '0.00' COMMENT '金额，单位：元',
  `fee` decimal(20,2) DEFAULT '0.00' COMMENT '手续费(涉及到满标、还款接口)',
  `deal_load_id` int(11) NOT NULL DEFAULT '0' COMMENT '投标ID',
  `deal_load_repay_id` int(11) NOT NULL DEFAULT '0' COMMENT '回款计划id',
  `repay_manage_impose_money` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '平台收取 借款者 的管理费逾期罚息',
  `impose_money` decimal(20,2) NOT NULL COMMENT '投资者收取 借款者 的逾期罚息',
  `repay_status` tinyint(1) DEFAULT NULL COMMENT '还款状态',
  `true_repay_time` int(11) DEFAULT NULL COMMENT '还款时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=155 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%baofoo_fo_charge`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%baofoo_fo_charge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` varchar(20) NOT NULL COMMENT '商户号',
  `terminal_id` varchar(20) NOT NULL COMMENT '终端号',
  `order_id` int(11) NOT NULL COMMENT '订单号 (唯一不可重复)',
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额，单位：元',
  `amount_fee` decimal(20,0) DEFAULT '0' COMMENT '平台收取用户的手续费',
  `mer_fee` decimal(20,2) DEFAULT '0.00' COMMENT '商户收取的手续费',
  `user_id` int(11) NOT NULL COMMENT '用户编号',
  `fee_taken_on` tinyint(1) DEFAULT NULL COMMENT '费用承担方(宝付收取的费用),1平台2用户自担 ',
  `fee` decimal(20,2) DEFAULT '0.00' COMMENT '宝付收取的手续费',
  `code` varchar(20) DEFAULT NULL COMMENT '结果代码',
  `succ_time` varchar(20) DEFAULT NULL COMMENT '成功时间   年月日十分秒',
  `is_callback` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22022 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%baofoo_log`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%baofoo_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `create_date` datetime NOT NULL,
  `strxml` text,
  `html` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=463 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%baofoo_recharge`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%baofoo_recharge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` varchar(20) NOT NULL COMMENT '商户号',
  `terminal_id` varchar(20) NOT NULL COMMENT '终端号',
  `order_id` int(11) NOT NULL COMMENT '订单号 (唯一不可重复)',
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额，单位：元',
  `mer_fee` decimal(20,2) DEFAULT '0.00' COMMENT '商户收取的手续费',
  `user_id` int(11) NOT NULL COMMENT '用户编号',
  `fee_taken_on` tinyint(1) DEFAULT NULL COMMENT '费用承担方(宝付收取的费用),1平台2用户自担 ',
  `additional_info` varchar(255) DEFAULT NULL COMMENT '其它信息',
  `incash_money` decimal(20,2) DEFAULT NULL,
  `fee` decimal(20,2) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL COMMENT '结果代码',
  `succ_time` varchar(20) DEFAULT NULL COMMENT '成功时间   年月日十分秒',
  `is_callback` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35055 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%bfrz_bank`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%bfrz_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `bankcode` varchar(10) NOT NULL,
  `bankcard` varchar(50) NOT NULL,
  `create_time` int(11) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `%DB_PREFIX%bfrz_bank`
--

INSERT INTO `%DB_PREFIX%bfrz_bank` (`id`, `user_id`, `bankcode`, `bankcard`, `create_time`, `mobile`) VALUES
(1, 440020, 'CCB', '6217001820008011540', 1437592132, '13675022851'),
(7, 440020, 'CCB', '6227001823710105492', 1437507267, '15280036218'),
(8, 440029, 'CCB', '6217001820008011540', 1437673715, '13675022851'),
(9, 440100, 'CCB', '6217001820008011540', 1452650521, '13675022851');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%collocation`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%collocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `config` text NOT NULL,
  `fee_type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- 转存表中的数据 `%DB_PREFIX%collocation`
--

INSERT INTO `%DB_PREFIX%collocation` (`id`, `class_name`, `is_effect`, `name`, `config`, `fee_type`) VALUES
(30, 'Baofoo', 0, '宝付资金托管', 'a:6:{s:11:"merchant_id";s:9:"100000675";s:11:"terminal_id";s:9:"100000701";s:7:"md5_key";s:16:"n725d5gsb7mlyzzw";s:6:"aes_iv";s:16:"n725d5gsb7mlyzzw";s:12:"fee_taken_on";s:1:"2";s:8:"is_debug";s:1:"1";}', 0),
(31, 'Ips', 0, '环讯资金托管', 'a:6:{s:8:"mer_code";s:6:"808801";s:8:"cert_md5";s:128:"GPhKt7sh4dxQQZZkINGFtefRKNPyAj8S00cgAwtRyy0ufD7alNC28xCBKpa6IU7u54zzWSAv4PqUDKMgpOnM7fucO1wuwMi4RgPAnietmqYIhHXZ3TqTGKNzkxA55qYH";s:8:"3des_key";s:24:"ICHuQplJ0YR9l7XeVNKi6FMn";s:7:"3des_iv";s:8:"2EDxsEfp";s:8:"fee_type";s:1:"1";s:8:"is_debug";s:1:"1";}', 0),
(32, 'Yeepay', 0, '易宝资金托管', 'a:3:{s:11:"platform_no";s:11:"10040011137";s:9:"check_url";s:26:"http://p2p.fanwe.net:8088/";s:8:"is_debug";s:1:"1";}', 0);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%conf`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `group_id` int(11) NOT NULL,
  `input_type` tinyint(1) NOT NULL COMMENT '配置输入的类型 0:文本输入 1:下拉框输入 2:图片上传 3:编辑器',
  `value_scope` text NOT NULL COMMENT '取值范围',
  `is_effect` tinyint(1) NOT NULL,
  `is_conf` tinyint(1) NOT NULL COMMENT '是否可配置 0: 可配置  1:不可配置',
  `sort` int(11) NOT NULL,
  `tip` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='系统配置表' AUTO_INCREMENT=283 ;

--
-- 转存表中的数据 `%DB_PREFIX%conf`
--

INSERT INTO `%DB_PREFIX%conf` (`id`, `name`, `value`, `group_id`, `input_type`, `value_scope`, `is_effect`, `is_conf`, `sort`, `tip`) VALUES
(1, 'DEFAULT_ADMIN', 'admin', 1, 0, '', 1, 0, 0, ''),
(2, 'URL_MODEL', '0', 1, 1, '0,1', 1, 1, 3, ''),
(3, 'AUTH_KEY', 'fanwedk', 1, 0, '', 1, 1, 4, ''),
(4, 'TIME_ZONE', '8', 1, 1, '0,8', 1, 1, 1, ''),
(5, 'ADMIN_LOG', '1', 1, 1, '0,1', 0, 1, 0, ''),
(6, 'DB_VERSION', '3.6', 0, 0, '', 1, 0, 0, ''),
(7, 'DB_VOL_MAXSIZE', '8000000', 1, 0, '', 1, 1, 11, ''),
(8, 'WATER_MARK', './public/attachment/201011/4cdd501dc023b.png', 2, 2, '', 1, 1, 48, ''),
(24, 'CURRENCY_UNIT', '￥', 3, 0, '', 1, 1, 21, ''),
(10, 'BIG_WIDTH', '500', 2, 0, '', 0, 0, 49, ''),
(11, 'BIG_HEIGHT', '500', 2, 0, '', 0, 0, 50, ''),
(12, 'SMALL_WIDTH', '200', 2, 0, '', 0, 0, 51, ''),
(13, 'SMALL_HEIGHT', '200', 2, 0, '', 0, 0, 52, ''),
(14, 'WATER_ALPHA', '75', 2, 0, '', 1, 1, 53, ''),
(15, 'WATER_POSITION', '4', 2, 1, '1,2,3,4,5', 1, 1, 54, ''),
(16, 'MAX_IMAGE_SIZE', '3000000', 2, 0, '', 1, 1, 55, ''),
(17, 'ALLOW_IMAGE_EXT', 'jpg,gif,png', 2, 0, '', 1, 1, 56, ''),
(18, 'MAX_FILE_SIZE', '1', 1, 0, '', 0, 1, 0, ''),
(19, 'ALLOW_FILE_EXT', '1', 1, 0, '', 0, 1, 0, ''),
(20, 'BG_COLOR', '#ffffff', 2, 0, '', 0, 0, 57, ''),
(21, 'IS_WATER_MARK', '1', 2, 1, '0,1', 1, 1, 58, ''),
(22, 'TEMPLATE', 'new', 3, 0, '', 1, 1, 17, ''),
(25, 'SCORE_UNIT', '积分', 3, 0, '', 1, 1, 22, ''),
(26, 'USER_VERIFY', '0', 4, 1, '0,1,2,3,4', 1, 1, 63, ''),
(27, 'SHOP_LOGO', './public/attachment/201602/14/20/56c0772ceba0b.png', 3, 2, '', 1, 1, 19, ''),
(28, 'SHOP_LANG', 'zh-cn', 3, 1, 'zh-cn,zh-tw,en-us', 1, 1, 18, ''),
(29, 'SHOP_TITLE', 'p2p信贷', 3, 0, '', 1, 1, 13, ''),
(30, 'SHOP_KEYWORD', 'p2p信贷—最大、最安全的网络借贷平台', 3, 0, '', 1, 1, 15, ''),
(31, 'SHOP_DESCRIPTION', 'p2p信贷—最大、最安全的网络借贷平台', 3, 0, '', 1, 1, 15, ''),
(32, 'SHOP_TEL', '0591-83119192', 3, 0, '', 1, 1, 23, ''),
(35, 'INVITE_REFERRALS', '1', 0, 1, '0,1', 1, 0, 1, ''),
(38, 'ONLINE_QQ', 'a:2:{i:0;a:2:{s:4:"name";s:13:"MS00";s:2:"qq";s:9:"2545025033";}i:1;a:2:{s:4:"name";s:13:"MS00";s:2:"qq";s:9:"2545025033";}}', 0, 0, '', 1, 0, 25, ''),
(39, 'ONLINE_TIME', '周一至周六 9:00-18:00', 3, 0, '', 1, 1, 26, ''),
(40, 'DEAL_PAGE_SIZE', '10', 3, 0, '', 1, 1, 31, ''),
(41, 'PAGE_SIZE', '20', 3, 0, '', 1, 1, 32, ''),
(42, 'HELP_CATE_LIMIT', '4', 3, 0, '', 1, 1, 34, ''),
(43, 'HELP_ITEM_LIMIT', '4', 3, 0, '', 1, 1, 35, ''),
(44, 'SHOP_FOOTER', '<div style="text-align:right;">\r\n	联系我们：info@fanwe.com &nbsp; 福州方维信息科技有限公司\r\n</div>\r\n<div style="text-align:right;">\r\n	&copy; 2017 p2p信贷 All rights reserved<br />\r\n	<p style="color:#666666;font-family:''Microsoft YaHei'';text-align:right;background-color:#F6F6F6;">\r\n		<a href="http://www.ms00.cc/" target="_blank">QQ：2545025033</a>\r\n	</p>\r\n	<p style="color:#666666;font-family:''Microsoft YaHei'';text-align:right;background-color:#F6F6F6;">\r\n		<a href="http://www.ms00.cc/" target="_blank">http://www.ms00.cc</a>\r\n	</p>\r\n<br />\r\n</div>', 3, 3, '', 1, 1, 37, ''),
(193, 'CUSTOM_SERVICE', ',', 6, 0, '', 1, 1, 1, '客服会员ID，多个用英文逗号（,）隔开，前台自动回复时使用！'),
(194, 'SMS_SEND_REPAY', '1', 5, 1, '0,1', 1, 1, 80, ''),
(45, 'USER_MESSAGE_AUTO_EFFECT', '1', 4, 1, '0,1', 1, 1, 64, ''),
(50, 'MAIL_SEND_PAYMENT', '1', 5, 1, '0,1', 1, 1, 75, ''),
(51, 'SMS_SEND_PAYMENT', '0', 5, 1, '0,1', 1, 1, 81, ''),
(62, 'REPLY_ADDRESS', 'info@fanwe.com', 5, 0, '', 1, 1, 77, ''),
(56, 'MAIL_ON', '1', 5, 1, '0,1', 1, 1, 72, ''),
(57, 'SMS_ON', '1', 5, 1, '0,1', 1, 1, 78, ''),
(63, 'BATCH_PAGE_SIZE', '500', 3, 0, '', 1, 1, 33, ''),
(65, 'PUBLIC_DOMAIN_ROOT', '', 2, 0, '', 1, 1, 59, ''),
(70, 'REFERRALS_DELAY', '1', 4, 0, '', 1, 0, 70, ''),
(71, 'SUBMIT_DELAY', '5', 1, 0, '', 1, 1, 13, ''),
(72, 'APP_MSG_SENDER_OPEN', '0', 1, 1, '0,1', 1, 1, 9, ''),
(73, 'ADMIN_MSG_SENDER_OPEN', '0', 1, 1, '0,1', 1, 1, 10, ''),
(74, 'SHOP_OPEN', '1', 3, 1, '0,1', 1, 1, 46, ''),
(75, 'SHOP_CLOSE_HTML', '', 3, 3, '', 1, 1, 47, ''),
(76, 'FOOTER_LOGO', './public/attachment/201011/4cdd501dc023b.png', 3, 2, '', 1, 1, 20, ''),
(77, 'GZIP_ON', '0', 1, 1, '0,1', 1, 1, 2, ''),
(78, 'INTEGRATE_CODE', '', 0, 0, '', 1, 0, 0, ''),
(79, 'INTEGRATE_CFG', '', 0, 0, '', 1, 0, 0, ''),
(80, 'SHOP_SEO_TITLE', 'p2p信贷—最大、最安全的网络借贷平台', 3, 0, '', 1, 1, 14, ''),
(67, 'REFERRAL_IP_LIMIT', '0', 0, 1, '0,1', 1, 0, 71, ''),
(81, 'CACHE_ON', '0', 1, 1, '0,1', 1, 1, 7, ''),
(82, 'EXPIRED_TIME', '0', 1, 0, '', 1, 1, 5, ''),
(120, 'FILTER_WORD', '', 1, 0, '', 1, 1, 100, ''),
(84, 'STYLE_OPEN', '0', 3, 1, '0,1', 0, 0, 44, ''),
(85, 'STYLE_DEFAULT', '1', 3, 1, '0,1', 0, 0, 45, ''),
(86, 'TMPL_DOMAIN_ROOT', '', 2, 0, '0', 0, 0, 62, ''),
(245, 'INVITE_REFERRALS_TYPE', '1', 0, 1, '0,1', 1, 0, 5, ''),
(88, 'MEMCACHE_HOST', '127.0.0.1:11211', 1, 0, '', 1, 1, 8, ''),
(90, 'IMAGE_USERNAME', '', 2, 0, '', 1, 1, 60, ''),
(91, 'IMAGE_PASSWORD', '', 2, 4, '', 1, 1, 61, ''),
(92, 'REGISTER_TYPE', '1', 4, 1, '0,1,2', 1, 1, 66, ''),
(93, 'ATTR_SELECT', '0', 3, 1, '0,1', 0, 0, 43, ''),
(94, 'ICP_LICENSE', '', 3, 0, '', 1, 1, 27, ''),
(95, 'COUNT_CODE', '', 3, 0, '', 1, 1, 28, ''),
(96, 'DEAL_MSG_LOCK', '0', 0, 0, '', 0, 0, 1454867819, ''),
(97, 'PROMOTE_MSG_LOCK', '0', 0, 0, '', 0, 0, 0, ''),
(103, 'SEND_SPAN', '2', 1, 0, '', 1, 1, 85, ''),
(227, 'USER_LOAN_INTEREST_MANAGE_FEE', '15', 6, 0, '', 1, 1, 24, '管理费 = 实际得到的利息×管理费率 0即不收取'),
(228, 'INVESTORS_COMMISSION_RATIO', '10', 4, 0, '', 1, 0, 72, '投资者佣金比例'),
(229, 'BORROWER_COMMISSION_RATIO', '10', 4, 0, '', 1, 0, 72, '借款者佣金比例'),
(230, 'GENERATION_REPAY_FEE', '0.1', 6, 0, '', 1, 1, 28, '垫付后的罚息 =  垫付总额×垫付罚息费率×垫付天数 0即不收取'),
(232, 'USER_BID_SCORE_FEE', '1', 7, 0, '', 1, 1, 71, '投标返还积分 = 投标金额 ×返还比率'),
(111, 'SHOP_SEARCH_KEYWORD', '贷款,借贷，网贷', 3, 0, '', 1, 1, 15, ''),
(117, 'INDEX_NOTICE_COUNT', '5', 3, 0, '', 1, 1, 35, ''),
(119, 'TMPL_CACHE_ON', '0', 1, 1, '0,1', 1, 1, 6, ''),
(125, 'DOMAIN_ROOT', '', 1, 0, '', 1, 1, 10, ''),
(127, 'MAIN_APP', 'shop', 1, 1, 'shop,tuan,youhui', 1, 0, 10, ''),
(128, 'VERIFY_IMAGE', '1', 1, 1, '0,1', 1, 1, 10, ''),
(131, 'APNS_MSG_LOCK', '1', 0, 0, '', 0, 0, 0, ''),
(132, 'PROMOTE_MSG_PAGE', '440180', 0, 0, '', 0, 0, 0, ''),
(133, 'APNS_MSG_PAGE', '0', 0, 0, '', 0, 0, 0, ''),
(216, 'APPLE_DOWLOAD_URL', 'itms-services://?action=download-manifest&url=https://app.fanwe.cn/ios/superp2p/superp2p.plist', 3, 0, '0', 1, 1, 35, ''),
(217, 'ANDROID_DOWLOAD_URL', 'http://t2.fanwe.net/%DB_PREFIX%p2p_wap_1.0.apk', 3, 0, '0', 1, 1, 35, ''),
(215, 'BORROW_AGREEMENT', '11', 6, 0, '0', 1, 1, 1, '帮助类文章编号，在我要借款填写资料处显示'),
(121, 'USER_LOGIN_SCORE', '100', 7, 0, '', 1, 0, 2, ''),
(167, 'COMPANY', '福建p2p信贷金融信息服务有限公司', 6, 0, '', 1, 1, 1, ''),
(168, 'COMPANY_ADDRESS', '福州台江区', 6, 0, '', 1, 1, 2, ''),
(169, 'COMPANY_REG_ADDRESS', '福州市', 6, 0, '', 1, 1, 3, ''),
(175, 'MANAGE_FEE', '0.3', 6, 0, '', 1, 1, 21, '管理费 = 本金总额×管理费率'),
(176, 'MANAGE_IMPOSE_FEE_DAY1', '0.1', 6, 0, '', 1, 1, 22, ''),
(177, 'MANAGE_IMPOSE_FEE_DAY2', '0.5', 6, 0, '', 1, 1, 23, '逾期管理费总额 = 逾期本息总额×对应逾期管理费率×逾期天数'),
(178, 'IMPOSE_FEE_DAY1', '0.05', 6, 0, '', 1, 1, 24, ''),
(179, 'IMPOSE_FEE_DAY2', '0.1', 6, 0, '', 1, 1, 25, '罚息总额 = 逾期本息总额×对应罚息利率×逾期天数'),
(180, 'COMPENSATE_FEE', '1.0', 6, 0, '', 1, 1, 25, '补偿金额 = 剩余本金×补偿利率'),
(181, 'IMPOSE_POINT', '-1', 7, 0, '', 1, 1, 14, ''),
(182, 'YZ_IMPOSE_POINT', '-10', 7, 0, '', 1, 1, 15, ''),
(183, 'YZ_IMPSE_DAY', '31', 6, 0, '', 1, 1, 15, '超过该天数为严重逾期'),
(184, 'REPAY_SUCCESS_POINT', '1', 7, 0, '', 1, 1, 13, ''),
(185, 'REPAY_SUCCESS_DAY', '28', 7, 0, '', 1, 1, 13, ''),
(186, 'REPAY_SUCCESS_LIMIT', '20', 7, 0, '', 1, 1, 13, ''),
(187, 'USER_REGISTER_POINT', '20', 7, 0, '', 1, 1, 0, ''),
(188, 'USER_REGISTER_MONEY', '1000', 7, 0, '', 1, 1, 0, ''),
(189, 'USER_REGISTER_SCORE', '100', 7, 0, '', 1, 1, 0, ''),
(192, 'MAX_BORROW_QUOTA', '1000000', 6, 0, '', 1, 1, 27, ''),
(191, 'MIN_BORROW_QUOTA', '3000', 6, 0, '', 1, 1, 26, ''),
(195, 'USER_REPAY_QUOTA', '5000', 7, 0, '', 1, 1, 26, ''),
(196, 'USER_LOAN_MANAGE_FEE', '0.1', 6, 0, '', 1, 1, 24, '管理费 = 投资总额×管理费率 0即不收取'),
(197, 'SMS_REPAY_TOUSER_ON', '0', 5, 1, '0,1', 1, 1, 80, ''),
(200, 'MAIL_SEND_CONTRACT_ON', '1', 5, 1, '0,1', 1, 1, 78, ''),
(201, 'DEAL_BID_MULTIPLE', '50', 6, 0, '', 1, 1, 12, '0为不限制'),
(202, 'USER_LOCK_MONEY', '0', 7, 0, '', 1, 1, 64, '需管理员手动解冻'),
(203, 'USER_BID_REBATE', '1', 7, 0, '', 1, 1, 65, '返利金额=投标金额×返利百分比【需满标】'),
(204, 'AGREEMENT', '1', 4, 0, '', 1, 1, 66, '请输入帮助类文章编号'),
(205, 'PRIVACY', '2', 4, 0, '', 1, 1, 67, '请输入帮助类文章编号'),
(206, 'USER_LOAD_TRANSFER_FEE', '1', 6, 0, '', 1, 1, 24, '管理费 = 转让金额×管理费率'),
(208, 'VIRTUAL_MONEY_1', '11102.88', 1, 0, '', 1, 1, 41, '虚拟的累计成交额'),
(209, 'VIRTUAL_MONEY_2', '66788.32', 1, 0, '', 1, 1, 42, '虚拟的累计创造收益'),
(210, 'VIRTUAL_MONEY_3', '56788.23', 1, 0, '', 1, 1, 43, '虚拟的本息保障金'),
(211, 'OPEN_AUTOBID', '1', 4, 1, '0,1', 1, 1, 68, '开启关闭前台自动投标功能'),
(212, 'OPEN_IPS', '0', 4, 1, '0,1', 1, 0, 69, '开启关闭自己托管功能'),
(213, 'IPS_MERCODE', 'GPhKt7sh4dxQQZZkINGFtefRKNPyAj8S00cgAwtRyy0ufD7alNC28xCBKpa6IU7u54zzWSAv4PqUDKMgpOnM7fucO1wuwMi4RgPAnietmqYIhHXZ3TqTGKNzkxA55qYH', 4, 0, '', 1, 0, 71, '资金托管签约号'),
(214, 'IPS_KEY', '808801', 4, 0, '', 1, 0, 71, '资金托管的KEY'),
(222, 'IPS_3DES_KEY', '2EDxsEfp', 4, 0, '', 1, 0, 71, ''),
(221, 'IPS_3DES_IV', 'ICHuQplJ0YR9l7XeVNKi6FMn', 4, 0, '', 1, 0, 71, ''),
(223, 'IPS_FEE_TYPE', '1', 4, 1, '1,2', 1, 0, 71, '谁付IPS手续费'),
(224, 'INVITE_REFERRALS_MIN', '10', 0, 0, '', 1, 0, 2, ''),
(225, 'INVITE_REFERRALS_MAX', '20', 0, 0, '', 1, 0, 3, ''),
(226, 'INVITE_REFERRALS_RATE', '0.1', 0, 0, '', 1, 0, 4, ''),
(243, 'INVITE_REFERRALS_AUTO', '0', 0, 1, '0,1', 1, 0, 5, ''),
(244, 'INVITE_REFERRALS_DATE', '12', 0, 0, '', 1, 0, 6, '0表示一直有效'),
(122, 'USER_LOGIN_MONEY', '0', 7, 0, '', 1, 0, 1, ''),
(123, 'USER_LOGIN_POINT', '0', 7, 0, '', 1, 0, 8, ''),
(231, 'OPEN_QUOTA', '1', 6, 1, '0,1', 1, 1, 29, '开启授信额度申请'),
(233, 'OPEN_POINT', '1', 6, 1, '0,1', 1, 1, 30, '开启信用额度申请'),
(137, 'USER_LOGIN_KEEP_MONEY', '0', 7, 0, '', 1, 0, 4, ''),
(138, 'USER_LOGIN_KEEP_SCORE', '0', 7, 0, '', 1, 0, 5, ''),
(139, 'USER_LOGIN_KEEP_POINT', '50', 7, 0, '', 1, 0, 6, ''),
(246, 'SMS_SEND_IP_NOALLOW', '', 5, 5, '', 1, 1, 81, '一行一个IP，此列表为不允许发送短信的IP地址'),
(247, 'USER_REGISTER_REDBAG', '0', 7, 0, '', 1, 1, 0, ''),
(248, 'MOBILE_HEAD', '15|18|13|17', 1, 0, '', 1, 1, 101, ''),
(250, 'SHOW_EXPRIE_DEAL', '1', 6, 1, '0,1', 1, 1, 30, ''),
(251, 'SCORE_PAGE_SIZE', '12', 3, 0, '', 1, 1, 31, ''),
(252, 'USER_LOGIN_NMC_MONEY', '0', 7, 0, '', 1, 0, 2, ''),
(253, 'USER_LOGIN_KEEP_NMC_MONEY', '0', 7, 0, '', 1, 0, 10, ''),
(270, 'USER_LOGIN_MONEY_TYPE', '0', 7, 1, '0,1', 1, 0, 0, ''),
(271, 'USER_LOGIN_KEEP_MONEY_TYPE', '0', 7, 1, '0,1', 1, 0, 3, ''),
(272, 'LICAI_OPEN', '1', 3, 1, '0,1', 1, 1, 36, ''),
(274, 'PAY_RADIO', '0.5', 8, 0, '', 1, 0, 1, ''),
(275, 'BUY_PRESEND_POINT_MULTIPLE', '0.3', 8, 0, '', 1, 0, 1, '如0.5、1'),
(276, 'REPAY_MAKE', '0', 8, 0, '', 1, 0, 1, ''),
(277, 'SCORE_TRADE_NUMBER', '20', 8, 0, '', 1, 0, 3, '填10的倍数'),
(278, 'BUY_PRESEND_SCORE_MULTIPLE', '0.1', 8, 0, '', 1, 0, 4, '如0.5、1'),
(279, 'BUY_INVITE_REFERRALS', '0', 8, 0, '', 1, 0, 5, ''),
(280, 'REFERRAL_LIMIT', '1', 8, 0, '', 1, 0, 6, ''),
(281, 'INTERESTRATE_TIME', '1', 6, 0, '', 1, 1, 40, '0为不限制'),
(282, 'WEIXIN_MSG', '1', 1, 1, '0,1', 1, 1, 83, '');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%contract`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%contract` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '范本标题',
  `content` text NOT NULL COMMENT '范本内容',
  `is_effect` tinyint(1) NOT NULL COMMENT '0无效 1有效',
  `is_delete` tinyint(1) NOT NULL COMMENT '0正常 1删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='合同范本' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `%DB_PREFIX%contract`
--

INSERT INTO `%DB_PREFIX%contract` (`id`, `title`, `content`, `is_effect`, `is_delete`) VALUES
(1, '等额本息合同范本【普通】', '<div style="width: 98%;text-align: right;">编号：<span>{$deal.deal_sn}</span></div>\r\n<h2 align="center">借款协议</h2>\r\n<br/>\r\n<div style="text-align: left;font-weight: 600;">甲方（出借人）：</div>\r\n<table border="1" style="margin: 0px auto; border-collapse: collapse; border: 1px solid rgb(0, 0, 0); width: 70%; ">\r\n    <tr>\r\n	<td style="text-align:center;"> {$SITE_TITLE}用户名</td>\r\n	<td style="text-align:center;"> 借出金额</td>\r\n	<td style="text-align:center;">借款期限</td>\r\n	<td style="text-align:center;"> 每月应收本息</td>\r\n    </tr>\r\n    {foreach from="$loan_list" item="loan"}\r\n    <tr>\r\n	<td style="text-align:center;">{$loan.user_name}</td>\r\n	<td style="text-align:right;padding-right:10px">{$CURRENCY_UNIT}{function name="number_format" v=$loan.money f=2}</td>\r\n	<td style="text-align:center;">{$deal.repay_time}个月</td>\r\n	<td style="text-align:right;padding-right:10px">\r\n	{$CURRENCY_UNIT}{function name="number_format" v=$loan.get_repay_money f=2}\r\n	</td>\r\n    </tr>\r\n    {/foreach}\r\n    <tr>\r\n	<td style="text-align:center;">总计</td>\r\n	<td style="text-align:right;padding-right:10px">{$CURRENCY_UNIT}{function name="number_format" v=$deal.load_money f=2}</td>\r\n	<td> </td>\r\n	<td> </td>\r\n    </tr>\r\n</table>\r\n<p>注：因计算中存在四舍五入，最后一期应收本息与之前略有不同</p>\r\n<br/>\r\n<div>\r\n	<p style="text-align: left;font-weight: 600;">乙方（借款人）：</p>\r\n	<p style="text-align: left;font-weight: 600;">{$SITE_TITLE}用户名：<span>{$deal.user.user_name}</span></p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;"> 丙方（见证人）：{function name="app_conf" v="COMPANY"} </p>\r\n	<p style="text-align: left;font-weight: 600;">联系方式：{function name="app_conf" v="COMPANY_ADDRESS"}</p>\r\n</div>\r\n<br/>\r\n<p><strong>鉴于：</strong></p>\r\n<p>1、丙方是一家在{function name="app_conf" v="COMPANY_REG_ADDRESS"}合法成立并有效存续的有限责任公司，拥有{$SITE_URL} 网站（以下简称“该网站”）的经营权，提供信用咨询，为交易提供信息服务；</p>\r\n<p>2、乙方已在该网站注册，并承诺其提供给丙方的信息是完全真实的；</p>\r\n<p>3、甲方承诺对本协议涉及的借款具有完全的支配能力，是其自有闲散资金，为其合法所得；并承诺其提供给丙方的信息是完全真实的；</p>\r\n<p>4、乙方有借款需求，甲方亦同意借款，双方有意成立借贷关系；</p>\r\n<br/>\r\n<p style="text-align: left;font-weight: 600;">各方经协商一致，于<span> {function name="to_date" v="$deal.repay_start_time" f="Y年m月d日"}</span>签订如下协议，共同遵照履行：</p>\r\n<br/>\r\n<p style="text-align: left;font-weight: 600;"> 第一条 借款基本信息</p>\r\n<br/>\r\n<table border="1" style="margin: 0px auto; border-collapse: collapse; border: 1px solid rgb(0, 0, 0); width: 70%; ">\r\n	<tr>\r\n		<td width="20%" style="padding-left:10px"> 借款详细用途</td>\r\n		<td style="padding-left:10px"> {$deal.type_info.name}</td>\r\n	</tr>\r\n	<tr>\r\n		<td style="padding-left:10px">借款本金数额</td>\r\n		<td style="padding-left:10px">\r\n			{$CURRENCY_UNIT}{function name="number_format" v=$deal.borrow_amount f=2}（各出借人借款本金数额详见本协议文首表格）\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td style="padding-left:10px"> 月偿还本息数额\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$deal.month_repay_money_format}（因计算中存在四舍五入，最后一期应还金额与之前可能有所不同，为{$CURRENCY_UNIT}{function name="number_format" v=$deal.last_month_repay_money f=2}）\r\n		</td>\r\n	</tr>\r\n	\r\n	<tr>\r\n		<td style="padding-left:10px"> 还款分期月数\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$deal.repay_time}个月\r\n		</td>\r\n	</tr>\r\n	\r\n	<tr>\r\n		<td style="padding-left:10px">\r\n			还款日\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			 自{function name="to_date" v="$deal.repay_start_time" f="Y年m月d日"}起，每月 {function name="to_date" v="$deal.repay_start_time" f="d"}日（24:00前，节假日不顺延）\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td style="padding-left:10px"> 借款期限\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$deal.repay_time}个月，{function name="to_date" v="$deal.repay_start_time" f="Y年m月d日"}起，至  {function name="to_date" v="$deal.end_repay_time" f="Y年m月d日"}日止\r\n		</td>\r\n	</tr>\r\n</table>\r\n<br/>\r\n<div>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第二条 各方权利和义务\r\n	</p>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		<u>甲方的权利和义务</u>\r\n	</p>\r\n	<p> 1、	甲方应按合同约定的借款期限起始日期将足额的借款本金支付给乙方。\r\n	</p>\r\n	<p> 2、	甲方享有其所出借款项所带来的利息收益。\r\n	</p>\r\n	<p>3、	如乙方违约，甲方有权要求丙方提供其已获得的乙方信息，丙方应当提供。\r\n	</p>\r\n	<p>4、	无须通知乙方，甲方可以根据自己的意愿进行本协议下其对乙方债权的转让。在甲方的债权转让后，乙方需对债权受让人继续履行本协议下其对甲方的还款义务，不得以未接到债权转让通知为由拒绝履行还款义务。\r\n	</p>\r\n	<p> 5、	甲方应主动缴纳由利息所得带来的可能的税费。\r\n	</p>\r\n	<p>6、	如乙方实际还款金额少于本协议约定的本金、利息及违约金的，甲方各出借人同意各自按照其于本协议文首约定的借款比例收取还款。\r\n	</p>\r\n	<p> 7、	甲方应确保其提供信息和资料的真实性，不得提供虚假信息或隐瞒重要事实。\r\n	</p>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		<u>乙方权利和义务</u>\r\n	</p>\r\n	<p> 1、	乙方必须按期足额向甲方偿还本金和利息。\r\n	</p>\r\n	<p> 2、    乙方必须按期足额向丙方支付借款管理费用。\r\n	</p>\r\n	<p>3、	乙方承诺所借款项不用于任何违法用途。\r\n	</p>\r\n	<p>4、	乙方应确保其提供的信息和资料的真实性，不得提供虚假信息或隐瞒重要事实。\r\n	</p>\r\n	<p>5、	乙方有权了解其在丙方的信用评审进度及结果。\r\n	</p>\r\n	<p> 6、	乙方不得将本协议项下的任何权利义务转让给任何其他方。\r\n	</p>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		<u>丙方的权利和义务</u>\r\n	</p>\r\n	<p>1、甲方授权并委托丙方代其收取本协议文首所约定的出借人每月应收本息，代收后按照甲方的要求进行处置，乙方对此表示认可。\r\n	</p>\r\n	<p>2、甲方授权并委托丙方将其支付的出借本金直接划付至乙方账户，乙方对此表示认可。\r\n	</p>\r\n	<p> 3、甲、乙双方一致同意，在有必要时，丙方有权代甲方对乙方进行关于本协议借款的违约提醒及催收工作，包括但不限于：电话通知、上门催收提醒、发律师函、对乙方提起诉讼等。甲方在此确认委托丙方为其进行以上工作，并授权丙方可以将此工作委托给本协议外的其他方进行。乙方对前述委托的提醒、催收事项已明确知晓并应积极配合。\r\n	</p>\r\n	<p>4、丙方有权按月向乙方收取双方约定的借款管理费，并在有必要时对乙方进行违约提醒及催收工作，包括但不限于电话通知、发律师函、对乙方提起诉讼等。丙方有权将此违约提醒及催收工作委托给本协议外的其他方进行。\r\n	</p>\r\n	<p> 5、丙方接受甲乙双方的委托行为所产生的法律后果由相应委托方承担。如因乙方或甲方或其他方（包括但不限于技术问题）造成的延误或错误，丙方不承担任何责任。\r\n	</p>\r\n	<p> 6、丙方应对甲方和乙方的信息及本协议内容保密；如任何一方违约，或因相关权力部门要求（包括但不限于法院、仲裁机构、金融监管机构等），丙方有权披露。\r\n	</p>\r\n	<p>7、丙方根据本协议对乙方进行违约提醒及催收工作时，可在其认为必要时进行上门催收提醒，即丙方派出人员（至少2名）至乙方披露的住所地或经常居住地（联系地址）处催收和进行违约提醒，同时向乙方发送催收通知单，乙方应当签收，乙方不签收的，不影响上门催收提醒的进行。丙方采取上门催收提醒的，乙方应当向丙方支付上门提醒费用，收费标准为每次人民币1000.00元，此外，乙方还应向丙方支付进行上门催收提醒服务的差旅费（包括但不限于交通费、食宿费等）。\r\n	</p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第三条 借款管理费及居间服务费\r\n	</p>\r\n	<p>1、	在本协议中，“借款管理费”和“居间服务费”是指因丙方为乙方提供信用咨询、评估、还款提醒、账户管理、还款特殊情况沟通、本金保障等系列信用相关服务（统称“信用服务”）而由乙方支付给丙方的报酬。\r\n	</p>\r\n	<p>2、	对于丙方向乙方提供的一系列信用服务，乙方同意在借款成功时向丙方支付本协议第一条约定借款本金总额的{function name="number_format" v=$deal.services_fee f=1}%(即人民币<?php echo number_format(floatval($this->_var[''deal''][''services_fee''])*$this->_var[''deal''][''borrow_amount'']/100,2); ?>元)作为居间服务费，该“居间服务费”由乙方授权并委托丙方在丙方根据本协议规定的“丙方的权利和义务”第2款规定向乙方划付出借本金时从本金中予以扣除，即视为乙方已缴纳。在本协议约定的借款期限内，乙方应每月向丙方支付本协议第一条约定借款本金总额的{$deal.manage_fee}% (即人民币{function name="number_format" v="$deal.month_manage_money" f=2}元)，作为借款管理费用，共需支付{$deal.repay_time}期，共计人民币{function name="number_format" v="$deal.all_manage_money" f=2} 元，借款管理费的缴纳时间与本协议第一条约定的还款日一致。</p>\r\n	<p> 本条所称的“借款成功时”系指本协议签署日。</p>\r\n	<p> 3、    如乙方和丙方协商一致调整借款管理费和居间服务费时，无需经过甲方同意。 </p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第四条 违约责任\r\n	</p>\r\n	<p> 1、协议各方均应严格履行合同义务，非经各方协商一致或依照本协议约定，任何一方不得解除本协议。\r\n	</p>\r\n	<p>2、任何一方违约，违约方应承担因违约使得其他各方产生的费用和损失，包括但不限于调查、诉讼费、律师费等，应由违约方承担。如违约方为乙方的，甲方有权立即解除本协议，并要求乙方立即偿还未偿还的本金、利息、罚息、违约金。此时，乙方还应向丙方支付所有应付的借款管理费。如本协议提前解除时，乙方在{$SITE_URL}网站的账户里有任何余款的，丙方有权按照本协议第四条第3项的清偿顺序将乙方的余款用于清偿，并要求乙方支付因此产生的相关费用。</p>\r\n	<p>3、乙方的每期还款均应按照如下顺序清偿：</p>\r\n	<p>（1）根据本协议产生的其他全部费用；</p>\r\n	<p>（2）本协议第四条第4款约定的罚息； </p>\r\n	<p>（3）本协议第四条第5款约定的逾期管理费；</p>\r\n	<p>（4）拖欠的利息； </p>\r\n	<p>（5）拖欠的本金； </p>\r\n	<p>（6）拖欠丙方的借款管理费；\r\n	</p>\r\n	<p>（7）正常的利息； </p>\r\n	<p>（8）正常的本金； </p>\r\n	<p>（9）丙方的借款管理费；</p>\r\n	<p> 4、乙方应严格履行还款义务，如乙方逾期还款，则应按照下述条款向甲方支付逾期罚息，自逾期开始之后，逾期本金的正常利息停止计算。 </p>\r\n	<p>罚息总额 = 逾期本息总额×对应罚息利率×逾期天数；</p>\r\n</div>\r\n<div>\r\n	<br/>\r\n	<table border="1" style="margin: 0px auto; border-collapse: collapse; border: 1px solid rgb(0, 0, 0); width: 70%; ">\r\n		<tr>\r\n			<td style="padding-left:10px">\r\n				逾期天数\r\n			</td>\r\n			<td style="padding-left:10px">\r\n				1—<?php echo (int)app_conf("YZ_IMPSE_DAY")-1; ?>天\r\n			</td>\r\n			<td style="padding-left:10px">\r\n				{function name="app_conf" v="YZ_IMPSE_DAY"}天及以上\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="padding-left:10px">\r\n				罚息利率\r\n			</td>\r\n			<td style="padding-left:10px">\r\n				{$deal.impose_fee_day1}%\r\n			</td>\r\n			<td style="padding-left:10px">\r\n				{$deal.impose_fee_day2}%\r\n			</td>\r\n		</tr>\r\n	</table>\r\n	<br/>\r\n	<p>\r\n		5、乙方应严格履行还款义务，如乙方逾期还款，则应按照下述条款向丙方支付逾期管理费：\r\n	</p>\r\n	<p>\r\n		逾期管理费总额 = 逾期本息总额×对应逾期管理费率×逾期天数；\r\n	</p>\r\n</div>\r\n<br/>\r\n<table border="1" style="margin: 0px auto; border-collapse: collapse; border: 1px solid rgb(0, 0, 0); width: 70%; ">\r\n	<tr>\r\n		<td style="padding-left:10px">\r\n			逾期天数\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			1—<?php echo (int)app_conf("YZ_IMPSE_DAY")-1; ?>天\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{function name="app_conf" v="YZ_IMPSE_DAY"}天及以上\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td style="padding-left:10px">\r\n			逾期管理费费率\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$deal.manage_impose_fee_day1}%\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$deal.manage_impose_fee_day2}%\r\n		</td>\r\n	</tr>\r\n</table>\r\n<br/>\r\n<div>\r\n	<p>\r\n		6、如果乙方逾期支付任何一期还款超过30天，或乙方在逾期后出现逃避、拒绝沟通或拒绝承认欠款事实等恶意行为，本协议项下的全部借款本息及借款管理费均提前到期，乙方应立即清偿本协议下尚未偿付的全部本金、利息、罚息、借款管理费及根据本协议产生的其他全部费用。\r\n	</p>\r\n	<p>\r\n		7、如果乙方逾期支付任何一期还款超过30天，或乙方在逾期后出现逃避、拒绝沟通或拒绝承认欠款事实等恶意行为，丙方有权将乙方的“逾期记录”记入人民银行公民征信系统，丙方不承担任何法律责任。\r\n	</p>\r\n	<p>\r\n		8、如果乙方逾期支付任何一期还款超过30天，或乙方在逾期后出现逃避、拒绝沟通或拒绝承认欠款事实等恶意行为，丙方有权将乙方违约失信的相关信息及乙方其他信息向媒体、用人单位、公安机关、检查机关、法律机关披露，丙方不承担任何责任。\r\n	</p>\r\n	<p>\r\n		9、在乙方还清全部本金、利息、借款管理费、罚息、逾期管理费之前，罚息及逾期管理费的计算不停止。\r\n	</p>\r\n	<p>\r\n		10、本协议中的所有甲方与乙方之间的借款均是相互独立的，一旦乙方逾期未归还借款本息，甲方中的任何一个出借人均有权单独向乙方追索或者提起诉讼。如乙方逾期支付借款管理费或提供虚假信息的，丙方亦可单独向乙方追索或者提起诉讼。\r\n	</p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第五条 提前还款\r\n	</p>\r\n	<p>\r\n		1、乙方可在借款期间任何时候提前偿还剩余借款。\r\n	</p>\r\n	<p>\r\n		2、提前偿还全部剩余借款\r\n	</p>\r\n	<p style="padding-left: 15px">\r\n		1）乙方提前清偿全部剩余借款时，应向甲方支付当期应还本息，剩余本金及提前还款补偿（补偿金额为剩余本金的{$deal.compensate_fee}%）。\r\n	</p>\r\n	<p style="padding-left: 15px">\r\n		2）乙方提前清偿全部剩余借款时，应向丙方支付当期借款管理费，乙方无需支付剩余还款期的借款管理费。\r\n	</p>\r\n	<p>\r\n		3、提前偿还部分借款\r\n	</p>\r\n	<p style="padding-left: 15px">\r\n		1）乙方提前偿还部分借款，仍应向甲方支付全部借款利息。\r\n	</p>\r\n	<p style="padding-left: 15px">\r\n		2）乙方提前偿还部分借款，仍应向丙方支付全部应付的借款管理费。\r\n	</p>\r\n	<p>\r\n		4、任何形式的提前还款不影响丙方向乙方收取在本协议第三条中说明的居间服务费。\r\n	</p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第六条	法律及争议解决\r\n	</p>\r\n	 <p>\r\n		 本协议的签订、履行、终止、解释均适用中华人民共和国法律，并由丙方所在地{function name="app_conf" v=''COMPANY_REG_ADDRESS''}人民法院管辖。\r\n	</p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第七条	附则\r\n	</p>\r\n	<p>\r\n		1、本协议采用电子文本形式制成，并永久保存在丙方为此设立的专用服务器上备查，各方均认可该形式的协议效力。\r\n	</p>\r\n	<p>\r\n		2、本协议自文本最终生成之日生效。\r\n	</p>\r\n	<p>\r\n		3、本协议签订之日起至借款全部清偿之日止，乙方或甲方有义务在下列信息变更三日内提供更新后的信息给丙方：本人、本人的家庭联系人及紧急联系人、工作单位、居住地址、住所电话、手机号码、电子邮箱、银行账户的变更。若因任何一方不及时提供上述变更信息而带来的损失或额外费用应由该方承担。\r\n	</p>\r\n	<p>\r\n		4、如果本协议中的任何一条或多条违反适用的法律法规，则该条将被视为无效，但该无效条款并不影响本协议其他条款的效力。\r\n	</p>\r\n        <br>\r\n	{if $deal.attachment}\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第八条	附件\r\n	</p>\r\n	<p>\r\n		{$deal.attachment}\r\n	</p>\r\n	{/if}\r\n</div>\r\n<br/>\r\n<div style="width: 98%;text-align: right;">\r\n	<p>\r\n		{function name="to_date" v="$deal.repay_start_time" f="Y年m月d日"}\r\n	</p>\r\n</div>', 1, 0),
(2, '等额本息合同范本【担保】', '<div style="width: 98%;text-align: right;">编号：<span>{$deal.deal_sn}</span></div>\r\n<h2 align="center">借款协议</h2>\r\n<br/>\r\n<div style="text-align: left;font-weight: 600;">甲方（出借人）：</div>\r\n<table border="1" style="margin: 0px auto; border-collapse: collapse; border: 1px solid rgb(0, 0, 0); width: 70%; ">\r\n    <tr>\r\n	<td style="text-align:center;"> {$SITE_TITLE}用户名</td>\r\n	<td style="text-align:center;"> 借出金额</td>\r\n	<td style="text-align:center;">借款期限</td>\r\n	<td style="text-align:center;"> 每月应收本息</td>\r\n    </tr>\r\n    {foreach from="$loan_list" item="loan"}\r\n    <tr>\r\n	<td style="text-align:center;">{$loan.user_name}</td>\r\n	<td style="text-align:right;padding-right:10px">{$CURRENCY_UNIT}{function name="number_format" v=$loan.money f=2}</td>\r\n	<td style="text-align:center;">{$deal.repay_time}个月</td>\r\n	<td style="text-align:right;padding-right:10px">\r\n	{$CURRENCY_UNIT}{function name="number_format" v=$loan.get_repay_money f=2}\r\n	</td>\r\n    </tr>\r\n    {/foreach}\r\n    <tr>\r\n	<td style="text-align:center;">总计</td>\r\n	<td style="text-align:right;padding-right:10px">{$CURRENCY_UNIT}{function name="number_format" v=$deal.load_money f=2}</td>\r\n	<td> </td>\r\n	<td> </td>\r\n    </tr>\r\n</table>\r\n<p>注：因计算中存在四舍五入，最后一期应收本息与之前略有不同</p>\r\n<br/>\r\n<div>\r\n	<p style="text-align: left;font-weight: 600;">乙方（借款人）：</p>\r\n	<p style="text-align: left;font-weight: 600;">{$SITE_TITLE}用户名：<span>{$deal.user.user_name}</span></p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;"> 丙方（见证人）：{function name="app_conf" v="COMPANY"} </p>\r\n	<p style="text-align: left;font-weight: 600;">联系方式：{function name="app_conf" v="COMPANY_ADDRESS"}</p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;"> 丁方（担保方）：{$deal.agency_info.name} </p>\r\n	<p style="text-align: left;font-weight: 600;">联系方式：{$deal.agency_info.address}</p>\r\n</div>\r\n<br/>\r\n<p><strong>鉴于：</strong></p>\r\n<p>1、丙方是一家在{function name="app_conf" v="COMPANY_REG_ADDRESS"}合法成立并有效存续的有限责任公司，拥有{$SITE_URL} 网站（以下简称“该网站”）的经营权，提供信用咨询，为交易提供信息服务；</p>\r\n<p>2、乙方已在该网站注册，并承诺其提供给丙方的信息是完全真实的；</p>\r\n<p>3、甲方承诺对本协议涉及的借款具有完全的支配能力，是其自有闲散资金，为其合法所得；并承诺其提供给丙方的信息是完全真实的；</p>\r\n<p>4、乙方有借款需求，甲方亦同意借款，双方有意成立借贷关系；</p>\r\n<p>5、丁方愿意作为甲方借款提供保障。当乙方逾期3天仍未清偿借款本息，则甲方本协议项下的债权（逾期本息）自动转让给丁方，丁方将在第4天垫付该标的的未清偿借款本息给甲方；</p>\r\n<br/>\r\n<p style="text-align: left;font-weight: 600;">各方经协商一致，于<span> {function name="to_date" v="$deal.repay_start_time" f="Y年m月d日"}</span>签订如下协议，共同遵照履行：</p>\r\n<br/>\r\n<p style="text-align: left;font-weight: 600;"> 第一条 借款基本信息</p>\r\n<br/>\r\n<table border="1" style="margin: 0px auto; border-collapse: collapse; border: 1px solid rgb(0, 0, 0); width: 70%; ">\r\n	<tr>\r\n		<td width="20%" style="padding-left:10px"> 借款详细用途</td>\r\n		<td style="padding-left:10px"> {$deal.type_info.name}</td>\r\n	</tr>\r\n	<tr>\r\n		<td style="padding-left:10px">借款本金数额</td>\r\n		<td style="padding-left:10px">\r\n			{$CURRENCY_UNIT}{function name="number_format" v=$deal.borrow_amount f=2}（各出借人借款本金数额详见本协议文首表格）\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td style="padding-left:10px">月偿还本息数额\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$deal.month_repay_money_format}（因计算中存在四舍五入，最后一期应还金额与之前可能有所不同，为{$CURRENCY_UNIT}{function name="number_format" v=$deal.last_month_repay_money f=2}）\r\n		</td>\r\n	</tr>\r\n	\r\n	<tr>\r\n		<td style="padding-left:10px"> 还款分期月数\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$deal.repay_time}个月\r\n		</td>\r\n	</tr>\r\n	\r\n	<tr>\r\n		<td style="padding-left:10px">\r\n			还款日\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			 自{function name="to_date" v="$deal.repay_start_time" f="Y年m月d日"}起，每月 {function name="to_date" v="$deal.end_repay_time" f="Y年m月d日"}日（24:00前，节假日不顺延）\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td style="padding-left:10px"> 借款期限\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$deal.repay_time}个月，{function name="to_date" v="$deal.repay_start_time" f="Y年m月d日"}起，至  {function name="to_date" v="$deal.end_repay_time" f="Y年m月d日"}日止\r\n		</td>\r\n	</tr>\r\n</table>\r\n<br/>\r\n<div>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第二条 各方权利和义务\r\n	</p>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		<u>甲方的权利和义务</u>\r\n	</p>\r\n	<p> 1、	甲方应按合同约定的借款期限起始日期将足额的借款本金支付给乙方。\r\n	</p>\r\n	<p> 2、	甲方享有其所出借款项所带来的利息收益。\r\n	</p>\r\n	<p>3、	如乙方违约，甲方有权要求丙方提供其已获得的乙方信息，丙方应当提供。\r\n	</p>\r\n	<p>4、	无须通知乙方，甲方可以根据自己的意愿进行本协议下其对乙方债权的转让。在甲方的债权转让后，乙方需对债权受让人继续履行本协议下其对甲方的还款义务，不得以未接到债权转让通知为由拒绝履行还款义务。\r\n	</p>\r\n	<p> 5、	甲方应主动缴纳由利息所得带来的可能的税费。\r\n	</p>\r\n	<p>6、	如乙方实际还款金额少于本协议约定的本金、利息及违约金的，甲方各出借人同意各自按照其于本协议文首约定的借款比例收取还款。\r\n	</p>\r\n	<p> 7、	甲方应确保其提供信息和资料的真实性，不得提供虚假信息或隐瞒重要事实。\r\n	</p>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		<u>乙方权利和义务</u>\r\n	</p>\r\n	<p> 1、	乙方必须按期足额向甲方偿还本金和利息。\r\n	</p>\r\n	<p> 2、    乙方必须按期足额向丙方支付借款管理费用。\r\n	</p>\r\n	<p>3、	乙方承诺所借款项不用于任何违法用途。\r\n	</p>\r\n	<p>4、	乙方应确保其提供的信息和资料的真实性，不得提供虚假信息或隐瞒重要事实。\r\n	</p>\r\n	<p>5、	乙方有权了解其在丙方的信用评审进度及结果。\r\n	</p>\r\n	<p> 6、	乙方不得将本协议项下的任何权利义务转让给任何其他方。\r\n	</p>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		<u>丙方的权利和义务</u>\r\n	</p>\r\n	<p>1、甲方授权并委托丙方代其收取本协议文首所约定的出借人每月应收本息，代收后按照甲方的要求进行处置，乙方对此表示认可。\r\n	</p>\r\n	<p>2、甲方授权并委托丙方将其支付的出借本金直接划付至乙方账户，乙方对此表示认可。\r\n	</p>\r\n	<p> 3、甲、乙双方一致同意，在有必要时，丙方有权代甲方对乙方进行关于本协议借款的违约提醒及催收工作，包括但不限于：电话通知、上门催收提醒、发律师函、对乙方提起诉讼等。甲方在此确认委托丙方为其进行以上工作，并授权丙方可以将此工作委托给本协议外的其他方进行。乙方对前述委托的提醒、催收事项已明确知晓并应积极配合。\r\n	</p>\r\n	<p>4、丙方有权按月向乙方收取双方约定的借款管理费，并在有必要时对乙方进行违约提醒及催收工作，包括但不限于电话通知、发律师函、对乙方提起诉讼等。丙方有权将此违约提醒及催收工作委托给本协议外的其他方进行。\r\n	</p>\r\n	<p> 5、丙方接受甲乙双方的委托行为所产生的法律后果由相应委托方承担。如因乙方或甲方或其他方（包括但不限于技术问题）造成的延误或错误，丙方不承担任何责任。\r\n	</p>\r\n	<p> 6、丙方应对甲方和乙方的信息及本协议内容保密；如任何一方违约，或因相关权力部门要求（包括但不限于法院、仲裁机构、金融监管机构等），丙方有权披露。\r\n	</p>\r\n	<p>7、丙方根据本协议对乙方进行违约提醒及催收工作时，可在其认为必要时进行上门催收提醒，即丙方派出人员（至少2名）至乙方披露的住所地或经常居住地（联系地址）处催收和进行违约提醒，同时向乙方发送催收通知单，乙方应当签收，乙方不签收的，不影响上门催收提醒的进行。丙方采取上门催收提醒的，乙方应当向丙方支付上门提醒费用，收费标准为每次人民币1000.00元，此外，乙方还应向丙方支付进行上门催收提醒服务的差旅费（包括但不限于交通费、食宿费等）。\r\n	</p>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		<u>丁方的权利和义务</u>\r\n	</p>\r\n	<p>1、出借人和借款人均同意，丁方取得出借人在本协议项下的债权后，可依法向借款人追收借款本金、利息、逾期罚息等，清收费用，坏账风险均由丁方承担。\r\n	</p>\r\n	<p>2、款人逾期本网站对逾期仍未还款的借款人收取逾期罚息作为催收费用、采取多种方式进行催收、将借款人的相关信息对外公开或列入“不良信用记录”或采取法律措施等各项行为，该等服务的法律后果均由借款人自行承担，如债权转让给丁方后，对借款人造成的一切责任与本网站无关，均由借款人自行承担。\r\n	</p>\r\n	<p> 3、若借款人的任何一期还款不足以偿还应还本金、利息和违约金，且出借人为多人时，则出借人同意按照各自出借金额在出借金额总额中的比例收取还款，不足偿还本金时直接由丁方垫付后债权直接转让给丁方再进行追讨。\r\n	</p>\r\n	\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第三条 借款管理费及居间服务费\r\n	</p>\r\n	<p>1、	在本协议中，“借款管理费”和“居间服务费”是指因丙方为乙方提供信用咨询、评估、还款提醒、账户管理、还款特殊情况沟通、本金保障等系列信用相关服务（统称“信用服务”）而由乙方支付给丙方的报酬。\r\n	</p>\r\n	<p>2、	对于丙方向乙方提供的一系列信用服务，乙方同意在借款成功时向丙方支付本协议第一条约定借款本金总额的{function name="number_format" v=$deal.services_fee f=1}%(即人民币<?php echo number_format(floatval($this->_var[''deal''][''services_fee''])*$this->_var[''deal''][''borrow_amount'']/100,2); ?>元)作为居间服务费，该“居间服务费”由乙方授权并委托丙方在丙方根据本协议规定的“丙方的权利和义务”第2款规定向乙方划付出借本金时从本金中予以扣除，即视为乙方已缴纳。在本协议约定的借款期限内，乙方应每月向丙方支付本协议第一条约定借款本金总额的{$deal.manage_fee}% (即人民币{function name="number_format" v="$deal.month_manage_money" f=2}元)，作为借款管理费用，共需支付{$deal.repay_time}期，共计人民币{function name="number_format" v="$deal.all_manage_money" f=2} 元，借款管理费的缴纳时间与本协议第一条约定的还款日一致。</p>\r\n	<p> 本条所称的“借款成功时”系指本协议签署日。</p>\r\n	<p> 3、    如乙方和丙方协商一致调整借款管理费和居间服务费时，无需经过甲方同意。 </p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第四条 违约责任\r\n	</p>\r\n	<p> 1、协议各方均应严格履行合同义务，非经各方协商一致或依照本协议约定，任何一方不得解除本协议。\r\n	</p>\r\n	<p>2、任何一方违约，违约方应承担因违约使得其他各方产生的费用和损失，包括但不限于调查、诉讼费、律师费等，应由违约方承担。如违约方为乙方的，甲方有权立即解除本协议，并要求乙方立即偿还未偿还的本金、利息、罚息、违约金。此时，乙方还应向丙方支付所有应付的借款管理费。如本协议提前解除时，乙方在{$SITE_URL}网站的账户里有任何余款的，丙方有权按照本协议第四条第3项的清偿顺序将乙方的余款用于清偿，并要求乙方支付因此产生的相关费用。</p>\r\n	<p>3、乙方的每期还款均应按照如下顺序清偿：</p>\r\n	<p>（1）根据本协议产生的其他全部费用；</p>\r\n	<p>（2）本协议第四条第4款约定的罚息； </p>\r\n	<p>（3）本协议第四条第5款约定的逾期管理费；</p>\r\n	<p>（4）拖欠的利息； </p>\r\n	<p>（5）拖欠的本金； </p>\r\n	<p>（6）拖欠丙方的借款管理费；\r\n	</p>\r\n	<p>（7）正常的利息； </p>\r\n	<p>（8）正常的本金； </p>\r\n	<p>（9）丙方的借款管理费；</p>\r\n	<p> 4、乙方应严格履行还款义务，如乙方逾期还款，则应按照下述条款向甲方支付逾期罚息，自逾期开始之后，逾期本金的正常利息停止计算。 </p>\r\n	<p>罚息总额 = 逾期本息总额×对应罚息利率×逾期天数；</p>\r\n</div>\r\n<div>\r\n	<br/>\r\n<table border="1" style="margin: 0px auto; border-collapse: collapse; border: 1px solid rgb(0, 0, 0); width: 70%; ">\r\n		<tr>\r\n			<td style="padding-left:10px">\r\n				逾期天数\r\n			</td>\r\n			<td style="padding-left:10px">\r\n				1—<?php echo (int)app_conf("YZ_IMPSE_DAY")-1; ?>天\r\n			</td>\r\n			<td style="padding-left:10px">\r\n				{function name="app_conf" v="YZ_IMPSE_DAY"}天及以上\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="padding-left:10px">\r\n				罚息利率\r\n			</td>\r\n			<td style="padding-left:10px">\r\n				{$deal.impose_fee_day1}%\r\n			</td>\r\n			<td style="padding-left:10px">\r\n				{$deal.impose_fee_day2}%\r\n			</td>\r\n		</tr>\r\n	</table>\r\n	<br/>\r\n	<p>\r\n		5、乙方应严格履行还款义务，如乙方逾期还款，则应按照下述条款向丙方支付逾期管理费：\r\n	</p>\r\n	<p>\r\n		逾期管理费总额 = 逾期本息总额×对应逾期管理费率×逾期天数；\r\n	</p>\r\n</div>\r\n<br/>\r\n<table border="1" style="margin: 0px auto; border-collapse: collapse; border: 1px solid rgb(0, 0, 0); width: 70%; ">\r\n	<tr>\r\n		<td style="padding-left:10px">\r\n			逾期天数\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			1—<?php echo (int)app_conf("YZ_IMPSE_DAY")-1; ?>天\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{function name="app_conf" v="YZ_IMPSE_DAY"}天及以上\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td style="padding-left:10px">\r\n			逾期管理费费率\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$deal.manage_impose_fee_day1}%\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$deal.manage_impose_fee_day2}%\r\n		</td>\r\n	</tr>\r\n</table>\r\n<br/>\r\n<div>\r\n	<p>\r\n		6、如果乙方逾期支付任何一期还款超过30天，或乙方在逾期后出现逃避、拒绝沟通或拒绝承认欠款事实等恶意行为，本协议项下的全部借款本息及借款管理费均提前到期，乙方应立即清偿本协议下尚未偿付的全部本金、利息、罚息、借款管理费及根据本协议产生的其他全部费用。\r\n	</p>\r\n	<p>\r\n		7、如果乙方逾期支付任何一期还款超过30天，或乙方在逾期后出现逃避、拒绝沟通或拒绝承认欠款事实等恶意行为，丙方有权将乙方的“逾期记录”记入人民银行公民征信系统，丙方不承担任何法律责任。\r\n	</p>\r\n	<p>\r\n		8、如果乙方逾期支付任何一期还款超过30天，或乙方在逾期后出现逃避、拒绝沟通或拒绝承认欠款事实等恶意行为，丙方有权将乙方违约失信的相关信息及乙方其他信息向媒体、用人单位、公安机关、检查机关、法律机关披露，丙方不承担任何责任。\r\n	</p>\r\n	<p>\r\n		9、在乙方还清全部本金、利息、借款管理费、罚息、逾期管理费之前，罚息及逾期管理费的计算不停止。\r\n	</p>\r\n	<p>\r\n		10、本协议中的所有甲方与乙方之间的借款均是相互独立的，一旦乙方逾期未归还借款本息，甲方中的任何一个出借人均有权单独向乙方追索或者提起诉讼。如乙方逾期支付借款管理费或提供虚假信息的，丙方亦可单独向乙方追索或者提起诉讼。\r\n	</p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第五条 提前还款\r\n	</p>\r\n	<p>\r\n		1、乙方可在借款期间任何时候提前偿还剩余借款。\r\n	</p>\r\n	<p>\r\n		2、提前偿还全部剩余借款\r\n	</p>\r\n	<p style="padding-left: 15px">\r\n		1）乙方提前清偿全部剩余借款时，应向甲方支付当期应还本息，剩余本金及提前还款补偿（补偿金额为剩余本金的{$deal.compensate_fee}%）。\r\n	</p>\r\n	<p style="padding-left: 15px">\r\n		2）乙方提前清偿全部剩余借款时，应向丙方支付当期借款管理费，乙方无需支付剩余还款期的借款管理费。\r\n	</p>\r\n	<p>\r\n		3、提前偿还部分借款\r\n	</p>\r\n	<p style="padding-left: 15px">\r\n		1）乙方提前偿还部分借款，仍应向甲方支付全部借款利息。\r\n	</p>\r\n	<p style="padding-left: 15px">\r\n		2）乙方提前偿还部分借款，仍应向丙方支付全部应付的借款管理费。\r\n	</p>\r\n	<p>\r\n		4、任何形式的提前还款不影响丙方向乙方收取在本协议第三条中说明的居间服务费。\r\n	</p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第六条	法律及争议解决\r\n	</p>\r\n	 <p>\r\n		 本协议的签订、履行、终止、解释均适用中华人民共和国法律，并由丙方所在地{function name="app_conf" v=''COMPANY_REG_ADDRESS''}人民法院管辖。\r\n	</p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第七条	附则\r\n	</p>\r\n	<p>\r\n		1、本协议采用电子文本形式制成，并永久保存在丙方为此设立的专用服务器上备查，各方均认可该形式的协议效力。\r\n	</p>\r\n	<p>\r\n		2、本协议自文本最终生成之日生效。\r\n	</p>\r\n	<p>\r\n		3、本协议签订之日起至借款全部清偿之日止，乙方或甲方有义务在下列信息变更三日内提供更新后的信息给丙方：本人、本人的家庭联系人及紧急联系人、工作单位、居住地址、住所电话、手机号码、电子邮箱、银行账户的变更。若因任何一方不及时提供上述变更信息而带来的损失或额外费用应由该方承担。\r\n	</p>\r\n	<p>\r\n		4、如果本协议中的任何一条或多条违反适用的法律法规，则该条将被视为无效，但该无效条款并不影响本协议其他条款的效力。\r\n	</p>\r\n        <br>\r\n	{if $deal.attachment}\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第八条	附件\r\n	</p>\r\n	<p>\r\n		{$deal.attachment}\r\n	</p>\r\n	{/if}\r\n</div>\r\n<br/>\r\n<div style="width: 98%;text-align: right;">\r\n	<p>\r\n		{function name="to_date" v="$deal.repay_start_time" f="Y年m月d日"}\r\n	</p>\r\n</div>', 1, 0);
INSERT INTO `%DB_PREFIX%contract` (`id`, `title`, `content`, `is_effect`, `is_delete`) VALUES
(3, '付息还本合同范本【普通】', '<div style="width: 98%;text-align: right;">编号：<span>{$deal.deal_sn}</span></div>\r\n<h2 align="center">借款协议</h2>\r\n<br/>\r\n<div style="text-align: left;font-weight: 600;">甲方（出借人）：</div>\r\n<table border="1" style="margin: 0px auto; border-collapse: collapse; border: 1px solid rgb(0, 0, 0); width: 70%; ">\r\n    <tr>\r\n	<td style="text-align:center;"> {$SITE_TITLE}用户名</td>\r\n	<td style="text-align:center;"> 借出金额</td>\r\n	<td style="text-align:center;">借款期限</td>\r\n	<td style="text-align:center;"> 每月应收利息</td>\r\n	<td style="text-align:center;"> 到期还本金</td>\r\n    </tr>\r\n    {foreach from="$loan_list" item="loan"}\r\n    <tr>\r\n	<td style="text-align:center;">{$loan.user_name}</td>\r\n	<td style="text-align:right;padding-right:10px">{$CURRENCY_UNIT}{function name="number_format" v=$loan.money f=2}</td>\r\n	<td style="text-align:center;">{$deal.repay_time}个月</td>\r\n	<td style="text-align:right;padding-right:10px">\r\n	{$CURRENCY_UNIT}{function name="number_format" v=$loan.get_repay_money f=2}\r\n	</td>\r\n	<td style="text-align:right;padding-right:10px">{$CURRENCY_UNIT}{function name="number_format" v=$loan.money f=2}</td>\r\n    </tr>\r\n    {/foreach}\r\n    <tr>\r\n	<td style="text-align:center;">总计</td>\r\n	<td style="text-align:right;padding-right:10px">{$CURRENCY_UNIT}{function name="number_format" v=$deal.load_money f=2}</td>\r\n	<td> </td>\r\n	<td> </td>\r\n	<td> </td>\r\n    </tr>\r\n</table>\r\n<p>注：因计算中存在四舍五入，最后一期应收本息与之前略有不同</p>\r\n<br/>\r\n<div>\r\n	<p style="text-align: left;font-weight: 600;">乙方（借款人）：</p>\r\n	<p style="text-align: left;font-weight: 600;">{$SITE_TITLE}用户名：<span>{$deal.user.user_name}</span></p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;"> 丙方（见证人）：{function name="app_conf" v="COMPANY"} </p>\r\n	<p style="text-align: left;font-weight: 600;">联系方式：{function name="app_conf" v="COMPANY_ADDRESS"}</p>\r\n</div>\r\n<br/>\r\n<p><strong>鉴于：</strong></p>\r\n<p>1、丙方是一家在{function name="app_conf" v="COMPANY_REG_ADDRESS"}合法成立并有效存续的有限责任公司，拥有{$SITE_URL} 网站（以下简称“该网站”）的经营权，提供信用咨询，为交易提供信息服务；</p>\r\n<p>2、乙方已在该网站注册，并承诺其提供给丙方的信息是完全真实的；</p>\r\n<p>3、甲方承诺对本协议涉及的借款具有完全的支配能力，是其自有闲散资金，为其合法所得；并承诺其提供给丙方的信息是完全真实的；</p>\r\n<p>4、乙方有借款需求，甲方亦同意借款，双方有意成立借贷关系；</p>\r\n<br/>\r\n<p style="text-align: left;font-weight: 600;">各方经协商一致，于<span> {function name="to_date" v="$deal.repay_start_time" f="Y年m月d日"}</span>签订如下协议，共同遵照履行：</p>\r\n<br/>\r\n<p style="text-align: left;font-weight: 600;"> 第一条 借款基本信息</p>\r\n<br/>\r\n<table border="1" style="margin: 0px auto; border-collapse: collapse; border: 1px solid rgb(0, 0, 0); width: 70%; ">\r\n	<tr>\r\n		<td width="20%" style="padding-left:10px"> 借款详细用途</td>\r\n		<td style="padding-left:10px"> {$deal.type_info.name}</td>\r\n	</tr>\r\n	<tr>\r\n		<td style="padding-left:10px">借款本金数额</td>\r\n		<td style="padding-left:10px">\r\n			{$CURRENCY_UNIT}{function name="number_format" v=$deal.borrow_amount f=2}（各出借人借款本金数额详见本协议文首表格）\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td style="padding-left:10px"> 月偿还利息数额\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$deal.month_repay_money_format}（因计算中存在四舍五入，最后一期应还金额与之前可能有所不同，为{$CURRENCY_UNIT}<?php echo number_format($this->_var[''deal''][''last_month_repay_money''] -  $this->_var[''deal''][''borrow_amount''],2);?>）\r\n		</td>\r\n	</tr>\r\n\r\n       <tr>\r\n		<td style="padding-left:10px"> 到期本金\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$CURRENCY_UNIT}{function name="number_format" v=$deal.borrow_amount f=2}\r\n		</td>\r\n	</tr>\r\n	\r\n	<tr>\r\n		<td style="padding-left:10px"> 还款分期月数\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$deal.repay_time}个月\r\n		</td>\r\n	</tr>\r\n	\r\n	<tr>\r\n		<td style="padding-left:10px">\r\n			还款日\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			 自{function name="to_date" v="$deal.repay_start_time" f="Y年m月d日"}起，每月{function name="to_date" v="$deal.repay_start_time" f="d"}日（24:00前，节假日不顺延）\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td style="padding-left:10px"> 借款期限\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$deal.repay_time}个月，{function name="to_date" v="$deal.repay_start_time" f="Y年m月d日"}起，至  {function name="to_date" v="$deal.end_repay_time" f="Y年m月d日"}日止\r\n		</td>\r\n	</tr>\r\n</table>\r\n<br/>\r\n<div>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第二条 各方权利和义务\r\n	</p>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		<u>甲方的权利和义务</u>\r\n	</p>\r\n	<p> 1、	甲方应按合同约定的借款期限起始日期将足额的借款本金支付给乙方。\r\n	</p>\r\n	<p> 2、	甲方享有其所出借款项所带来的利息收益。\r\n	</p>\r\n	<p>3、	如乙方违约，甲方有权要求丙方提供其已获得的乙方信息，丙方应当提供。\r\n	</p>\r\n	<p>4、	无须通知乙方，甲方可以根据自己的意愿进行本协议下其对乙方债权的转让。在甲方的债权转让后，乙方需对债权受让人继续履行本协议下其对甲方的还款义务，不得以未接到债权转让通知为由拒绝履行还款义务。\r\n	</p>\r\n	<p> 5、	甲方应主动缴纳由利息所得带来的可能的税费。\r\n	</p>\r\n	<p>6、	如乙方实际还款金额少于本协议约定的本金、利息及违约金的，甲方各出借人同意各自按照其于本协议文首约定的借款比例收取还款。\r\n	</p>\r\n	<p> 7、	甲方应确保其提供信息和资料的真实性，不得提供虚假信息或隐瞒重要事实。\r\n	</p>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		<u>乙方权利和义务</u>\r\n	</p>\r\n	<p> 1、	乙方必须按期足额向甲方偿还本金和利息。\r\n	</p>\r\n	<p> 2、    乙方必须按期足额向丙方支付借款管理费用。\r\n	</p>\r\n	<p>3、	乙方承诺所借款项不用于任何违法用途。\r\n	</p>\r\n	<p>4、	乙方应确保其提供的信息和资料的真实性，不得提供虚假信息或隐瞒重要事实。\r\n	</p>\r\n	<p>5、	乙方有权了解其在丙方的信用评审进度及结果。\r\n	</p>\r\n	<p> 6、	乙方不得将本协议项下的任何权利义务转让给任何其他方。\r\n	</p>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		<u>丙方的权利和义务</u>\r\n	</p>\r\n	<p>1、甲方授权并委托丙方代其收取本协议文首所约定的出借人每月应收本息，代收后按照甲方的要求进行处置，乙方对此表示认可。\r\n	</p>\r\n	<p>2、甲方授权并委托丙方将其支付的出借本金直接划付至乙方账户，乙方对此表示认可。\r\n	</p>\r\n	<p> 3、甲、乙双方一致同意，在有必要时，丙方有权代甲方对乙方进行关于本协议借款的违约提醒及催收工作，包括但不限于：电话通知、上门催收提醒、发律师函、对乙方提起诉讼等。甲方在此确认委托丙方为其进行以上工作，并授权丙方可以将此工作委托给本协议外的其他方进行。乙方对前述委托的提醒、催收事项已明确知晓并应积极配合。\r\n	</p>\r\n	<p>4、丙方有权按月向乙方收取双方约定的借款管理费，并在有必要时对乙方进行违约提醒及催收工作，包括但不限于电话通知、发律师函、对乙方提起诉讼等。丙方有权将此违约提醒及催收工作委托给本协议外的其他方进行。\r\n	</p>\r\n	<p> 5、丙方接受甲乙双方的委托行为所产生的法律后果由相应委托方承担。如因乙方或甲方或其他方（包括但不限于技术问题）造成的延误或错误，丙方不承担任何责任。\r\n	</p>\r\n	<p> 6、丙方应对甲方和乙方的信息及本协议内容保密；如任何一方违约，或因相关权力部门要求（包括但不限于法院、仲裁机构、金融监管机构等），丙方有权披露。\r\n	</p>\r\n	<p>7、丙方根据本协议对乙方进行违约提醒及催收工作时，可在其认为必要时进行上门催收提醒，即丙方派出人员（至少2名）至乙方披露的住所地或经常居住地（联系地址）处催收和进行违约提醒，同时向乙方发送催收通知单，乙方应当签收，乙方不签收的，不影响上门催收提醒的进行。丙方采取上门催收提醒的，乙方应当向丙方支付上门提醒费用，收费标准为每次人民币1000.00元，此外，乙方还应向丙方支付进行上门催收提醒服务的差旅费（包括但不限于交通费、食宿费等）。\r\n	</p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第三条 借款管理费及居间服务费\r\n	</p>\r\n	<p>1、	在本协议中，“借款管理费”和“居间服务费”是指因丙方为乙方提供信用咨询、评估、还款提醒、账户管理、还款特殊情况沟通、本金保障等系列信用相关服务（统称“信用服务”）而由乙方支付给丙方的报酬。\r\n	</p>\r\n	<p>2、	对于丙方向乙方提供的一系列信用服务，乙方同意在借款成功时向丙方支付本协议第一条约定借款本金总额的{function name="number_format" v=$deal.services_fee f=1}%(即人民币<?php echo number_format(floatval($this->_var[''deal''][''services_fee''])*$this->_var[''deal''][''borrow_amount'']/100,2); ?>元)作为居间服务费，该“居间服务费”由乙方授权并委托丙方在丙方根据本协议规定的“丙方的权利和义务”第2款规定向乙方划付出借本金时从本金中予以扣除，即视为乙方已缴纳。在本协议约定的借款期限内，乙方应每月向丙方支付本协议第一条约定借款本金总额的{$deal.manage_fee}% (即人民币{function name="number_format" v="$deal.month_manage_money" f=2}元)，作为借款管理费用，共需支付{$deal.repay_time}期，共计人民币{function name="number_format" v="$deal.all_manage_money" f=2} 元，借款管理费的缴纳时间与本协议第一条约定的还款日一致。</p>\r\n	<p> 本条所称的“借款成功时”系指本协议签署日。</p>\r\n	<p> 3、    如乙方和丙方协商一致调整借款管理费和居间服务费时，无需经过甲方同意。 </p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第四条 违约责任\r\n	</p>\r\n	<p> 1、协议各方均应严格履行合同义务，非经各方协商一致或依照本协议约定，任何一方不得解除本协议。\r\n	</p>\r\n	<p>2、任何一方违约，违约方应承担因违约使得其他各方产生的费用和损失，包括但不限于调查、诉讼费、律师费等，应由违约方承担。如违约方为乙方的，甲方有权立即解除本协议，并要求乙方立即偿还未偿还的本金、利息、罚息、违约金。此时，乙方还应向丙方支付所有应付的借款管理费。如本协议提前解除时，乙方在{$SITE_URL}网站的账户里有任何余款的，丙方有权按照本协议第四条第3项的清偿顺序将乙方的余款用于清偿，并要求乙方支付因此产生的相关费用。</p>\r\n	<p>3、乙方的每期还款均应按照如下顺序清偿：</p>\r\n	<p>（1）根据本协议产生的其他全部费用；</p>\r\n	<p>（2）本协议第四条第4款约定的罚息； </p>\r\n	<p>（3）本协议第四条第5款约定的逾期管理费；</p>\r\n	<p>（4）拖欠的利息； </p>\r\n	<p>（5）拖欠的本金； </p>\r\n	<p>（6）拖欠丙方的借款管理费；\r\n	</p>\r\n	<p>（7）正常的利息； </p>\r\n	<p>（8）正常的本金； </p>\r\n	<p>（9）丙方的借款管理费；</p>\r\n	<p> 4、乙方应严格履行还款义务，如乙方逾期还款，则应按照下述条款向甲方支付逾期罚息，自逾期开始之后，逾期本金的正常利息停止计算。 </p>\r\n	<p>罚息总额 = 逾期本息总额×对应罚息利率×逾期天数；</p>\r\n</div>\r\n<div>\r\n	<br/>\r\n	<table border="1" style="margin: 0px auto; border-collapse: collapse; border: 1px solid rgb(0, 0, 0); width: 70%; ">\r\n		<tr>\r\n			<td style="padding-left:10px">\r\n				逾期天数\r\n			</td>\r\n			<td style="padding-left:10px">\r\n				1—<?php echo (int)app_conf("YZ_IMPSE_DAY")-1; ?>天\r\n			</td>\r\n			<td style="padding-left:10px">\r\n				{function name="app_conf" v="YZ_IMPSE_DAY"}天及以上\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="padding-left:10px">\r\n				罚息利率\r\n			</td>\r\n			<td style="padding-left:10px">\r\n				{$deal.impose_fee_day1}%\r\n			</td>\r\n			<td style="padding-left:10px">\r\n				{$deal.impose_fee_day2}%\r\n			</td>\r\n		</tr>\r\n	</table>\r\n	<br/>\r\n	<p>\r\n		5、乙方应严格履行还款义务，如乙方逾期还款，则应按照下述条款向丙方支付逾期管理费：\r\n	</p>\r\n	<p>\r\n		逾期管理费总额 = 逾期本息总额×对应逾期管理费率×逾期天数；\r\n	</p>\r\n</div>\r\n<br/>\r\n<table border="1" style="margin: 0px auto; border-collapse: collapse; border: 1px solid rgb(0, 0, 0); width: 70%; ">\r\n	<tr>\r\n		<td style="padding-left:10px">\r\n			逾期天数\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			1—<?php echo (int)app_conf("YZ_IMPSE_DAY")-1; ?>天\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{function name="app_conf" v="YZ_IMPSE_DAY"}天及以上\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td style="padding-left:10px">\r\n			逾期管理费费率\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$deal.manage_impose_fee_day1}%\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$deal.manage_impose_fee_day2}%\r\n		</td>\r\n	</tr>\r\n</table>\r\n<br/>\r\n<div>\r\n	<p>\r\n		6、如果乙方逾期支付任何一期还款超过30天，或乙方在逾期后出现逃避、拒绝沟通或拒绝承认欠款事实等恶意行为，本协议项下的全部借款本息及借款管理费均提前到期，乙方应立即清偿本协议下尚未偿付的全部本金、利息、罚息、借款管理费及根据本协议产生的其他全部费用。\r\n	</p>\r\n	<p>\r\n		7、如果乙方逾期支付任何一期还款超过30天，或乙方在逾期后出现逃避、拒绝沟通或拒绝承认欠款事实等恶意行为，丙方有权将乙方的“逾期记录”记入人民银行公民征信系统，丙方不承担任何法律责任。\r\n	</p>\r\n	<p>\r\n		8、如果乙方逾期支付任何一期还款超过30天，或乙方在逾期后出现逃避、拒绝沟通或拒绝承认欠款事实等恶意行为，丙方有权将乙方违约失信的相关信息及乙方其他信息向媒体、用人单位、公安机关、检查机关、法律机关披露，丙方不承担任何责任。\r\n	</p>\r\n	<p>\r\n		9、在乙方还清全部本金、利息、借款管理费、罚息、逾期管理费之前，罚息及逾期管理费的计算不停止。\r\n	</p>\r\n	<p>\r\n		10、本协议中的所有甲方与乙方之间的借款均是相互独立的，一旦乙方逾期未归还借款本息，甲方中的任何一个出借人均有权单独向乙方追索或者提起诉讼。如乙方逾期支付借款管理费或提供虚假信息的，丙方亦可单独向乙方追索或者提起诉讼。\r\n	</p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第五条 提前还款\r\n	</p>\r\n	<p>\r\n		1、乙方可在借款期间任何时候提前偿还剩余借款。\r\n	</p>\r\n	<p>\r\n		2、提前偿还全部剩余借款\r\n	</p>\r\n	<p style="padding-left: 15px">\r\n		1）乙方提前清偿全部剩余借款时，应向甲方支付当期应还本息，剩余本金及提前还款补偿（补偿金额为剩余本金的{$deal.compensate_fee}%）。\r\n	</p>\r\n	<p style="padding-left: 15px">\r\n		2）乙方提前清偿全部剩余借款时，应向丙方支付当期借款管理费，乙方无需支付剩余还款期的借款管理费。\r\n	</p>\r\n	<p>\r\n		3、提前偿还部分借款\r\n	</p>\r\n	<p style="padding-left: 15px">\r\n		1）乙方提前偿还部分借款，仍应向甲方支付全部借款利息。\r\n	</p>\r\n	<p style="padding-left: 15px">\r\n		2）乙方提前偿还部分借款，仍应向丙方支付全部应付的借款管理费。\r\n	</p>\r\n	<p>\r\n		4、任何形式的提前还款不影响丙方向乙方收取在本协议第三条中说明的居间服务费。\r\n	</p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第六条	法律及争议解决\r\n	</p>\r\n	 <p>\r\n		 本协议的签订、履行、终止、解释均适用中华人民共和国法律，并由丙方所在地{function name="app_conf" v=''COMPANY_REG_ADDRESS''}人民法院管辖。\r\n	</p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第七条	附则\r\n	</p>\r\n	<p>\r\n		1、本协议采用电子文本形式制成，并永久保存在丙方为此设立的专用服务器上备查，各方均认可该形式的协议效力。\r\n	</p>\r\n	<p>\r\n		2、本协议自文本最终生成之日生效。\r\n	</p>\r\n	<p>\r\n		3、本协议签订之日起至借款全部清偿之日止，乙方或甲方有义务在下列信息变更三日内提供更新后的信息给丙方：本人、本人的家庭联系人及紧急联系人、工作单位、居住地址、住所电话、手机号码、电子邮箱、银行账户的变更。若因任何一方不及时提供上述变更信息而带来的损失或额外费用应由该方承担。\r\n	</p>\r\n	<p>\r\n		4、如果本协议中的任何一条或多条违反适用的法律法规，则该条将被视为无效，但该无效条款并不影响本协议其他条款的效力。\r\n	</p>\r\n        <br>\r\n	{if $deal.attachment}\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第八条	附件\r\n	</p>\r\n	<p>\r\n		{$deal.attachment}\r\n	</p>\r\n	{/if}\r\n</div>\r\n<br/>\r\n<div style="width: 98%;text-align: right;">\r\n	<p>\r\n		{function name="to_date" v="$deal.repay_start_time" f="Y年m月d日"}\r\n	</p>\r\n</div>', 1, 0),
(4, '付息还本合同范本【担保】', '<div style="width: 98%;text-align: right;">编号：<span>{$deal.deal_sn}</span></div>\r\n<h2 align="center">借款协议</h2>\r\n<br/>\r\n<div style="text-align: left;font-weight: 600;">甲方（出借人）：</div>\r\n<table border="1" style="margin: 0px auto; border-collapse: collapse; border: 1px solid rgb(0, 0, 0); width: 70%; ">\r\n    <tr>\r\n	<td style="text-align:center;"> {$SITE_TITLE}用户名</td>\r\n	<td style="text-align:center;"> 借出金额</td>\r\n	<td style="text-align:center;">借款期限</td>\r\n	<td style="text-align:center;"> 每月应收利息</td>\r\n	<td style="text-align:center;"> 到期还本金</td>\r\n    </tr>\r\n    {foreach from="$loan_list" item="loan"}\r\n    <tr>\r\n	<td style="text-align:center;">{$loan.user_name}</td>\r\n	<td style="text-align:right;padding-right:10px">{$CURRENCY_UNIT}{function name="number_format" v=$loan.money f=2}</td>\r\n	<td style="text-align:center;">{$deal.repay_time}个月</td>\r\n	<td style="text-align:right;padding-right:10px">\r\n	{$CURRENCY_UNIT}{function name="number_format" v=$loan.get_repay_money f=2}\r\n	</td>\r\n	<td style="text-align:right;padding-right:10px">{$CURRENCY_UNIT}{function name="number_format" v=$loan.money f=2}</td>\r\n	</tr>\r\n    {/foreach}\r\n    <tr>\r\n	<td style="text-align:center;">总计</td>\r\n	<td style="text-align:right;padding-right:10px">{$CURRENCY_UNIT}{function name="number_format" v=$deal.load_money f=2}</td>\r\n	<td> </td>\r\n	<td> </td>\r\n	<td> </td>\r\n    </tr>\r\n</table>\r\n<p>注：因计算中存在四舍五入，最后一期应收本息与之前略有不同</p>\r\n<br/>\r\n<div>\r\n	<p style="text-align: left;font-weight: 600;">乙方（借款人）：</p>\r\n	<p style="text-align: left;font-weight: 600;">{$SITE_TITLE}用户名：<span>{$deal.user.user_name}</span></p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;"> 丙方（见证人）：{function name="app_conf" v="COMPANY"} </p>\r\n	<p style="text-align: left;font-weight: 600;">联系方式：{function name="app_conf" v="COMPANY_ADDRESS"}</p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;"> 丁方（担保方）：{$deal.agency_info.name} </p>\r\n	<p style="text-align: left;font-weight: 600;">联系方式：{$deal.agency_info.address}</p>\r\n</div>\r\n<br/>\r\n<p><strong>鉴于：</strong></p>\r\n<p>1、丙方是一家在{function name="app_conf" v="COMPANY_REG_ADDRESS"}合法成立并有效存续的有限责任公司，拥有{$SITE_URL} 网站（以下简称“该网站”）的经营权，提供信用咨询，为交易提供信息服务；</p>\r\n<p>2、乙方已在该网站注册，并承诺其提供给丙方的信息是完全真实的；</p>\r\n<p>3、甲方承诺对本协议涉及的借款具有完全的支配能力，是其自有闲散资金，为其合法所得；并承诺其提供给丙方的信息是完全真实的；</p>\r\n<p>4、乙方有借款需求，甲方亦同意借款，双方有意成立借贷关系；</p>\r\n<p>5、丁方愿意作为甲方借款提供保障。当乙方逾期3天仍未清偿借款本息，则甲方本协议项下的债权（逾期本息）自动转让给丁方，丁方将在第4天垫付该标的的未清偿借款本息给甲方；</p>\r\n<br/>\r\n<p style="text-align: left;font-weight: 600;">各方经协商一致，于<span> {function name="to_date" v="$deal.repay_start_time" f="Y年m月d日"}</span>签订如下协议，共同遵照履行：</p>\r\n<br/>\r\n<p style="text-align: left;font-weight: 600;"> 第一条 借款基本信息</p>\r\n<br/>\r\n<table border="1" style="margin: 0px auto; border-collapse: collapse; border: 1px solid rgb(0, 0, 0); width: 70%; ">\r\n	<tr>\r\n		<td width="20%" style="padding-left:10px"> 借款详细用途</td>\r\n		<td style="padding-left:10px"> {$deal.type_info.name}</td>\r\n	</tr>\r\n	<tr>\r\n		<td style="padding-left:10px">借款本金数额</td>\r\n		<td style="padding-left:10px">\r\n			{$CURRENCY_UNIT}{function name="number_format" v=$deal.borrow_amount f=2}（各出借人借款本金数额详见本协议文首表格）\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td style="padding-left:10px">月偿还利息数额\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$deal.month_repay_money_format}（因计算中存在四舍五入，最后一期应还金额与之前可能有所不同，为{$CURRENCY_UNIT}<?php echo number_format($this->_var[''deal''][''last_month_repay_money''] -  $this->_var[''deal''][''borrow_amount''],2);?>）\r\n		</td>\r\n	</tr>\r\n	 <tr>\r\n		<td style="padding-left:10px"> 到期本金\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$CURRENCY_UNIT}{function name="number_format" v=$deal.borrow_amount f=2}\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td style="padding-left:10px"> 还款分期月数\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$deal.repay_time}个月\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td style="padding-left:10px">\r\n			还款日\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			 自{function name="to_date" v="$deal.repay_start_time" f="Y年m月d日"}起，每月{function name="to_date" v="$deal.repay_start_time" f="d"}日（24:00前，节假日不顺延）\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td style="padding-left:10px"> 借款期限\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$deal.repay_time}个月，{function name="to_date" v="$deal.repay_start_time" f="Y年m月d日"}起，至  {function name="to_date" v="$deal.end_repay_time" f="Y年m月d日"}日止\r\n		</td>\r\n	</tr>\r\n</table>\r\n<br/>\r\n<div>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第二条 各方权利和义务\r\n	</p>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		<u>甲方的权利和义务</u>\r\n	</p>\r\n	<p> 1、	甲方应按合同约定的借款期限起始日期将足额的借款本金支付给乙方。\r\n	</p>\r\n	<p> 2、	甲方享有其所出借款项所带来的利息收益。\r\n	</p>\r\n	<p>3、	如乙方违约，甲方有权要求丙方提供其已获得的乙方信息，丙方应当提供。\r\n	</p>\r\n	<p>4、	无须通知乙方，甲方可以根据自己的意愿进行本协议下其对乙方债权的转让。在甲方的债权转让后，乙方需对债权受让人继续履行本协议下其对甲方的还款义务，不得以未接到债权转让通知为由拒绝履行还款义务。\r\n	</p>\r\n	<p> 5、	甲方应主动缴纳由利息所得带来的可能的税费。\r\n	</p>\r\n	<p>6、	如乙方实际还款金额少于本协议约定的本金、利息及违约金的，甲方各出借人同意各自按照其于本协议文首约定的借款比例收取还款。\r\n	</p>\r\n	<p> 7、	甲方应确保其提供信息和资料的真实性，不得提供虚假信息或隐瞒重要事实。\r\n	</p>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		<u>乙方权利和义务</u>\r\n	</p>\r\n	<p> 1、	乙方必须按期足额向甲方偿还本金和利息。\r\n	</p>\r\n	<p> 2、    乙方必须按期足额向丙方支付借款管理费用。\r\n	</p>\r\n	<p>3、	乙方承诺所借款项不用于任何违法用途。\r\n	</p>\r\n	<p>4、	乙方应确保其提供的信息和资料的真实性，不得提供虚假信息或隐瞒重要事实。\r\n	</p>\r\n	<p>5、	乙方有权了解其在丙方的信用评审进度及结果。\r\n	</p>\r\n	<p> 6、	乙方不得将本协议项下的任何权利义务转让给任何其他方。\r\n	</p>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		<u>丙方的权利和义务</u>\r\n	</p>\r\n	<p>1、甲方授权并委托丙方代其收取本协议文首所约定的出借人每月应收本息，代收后按照甲方的要求进行处置，乙方对此表示认可。\r\n	</p>\r\n	<p>2、甲方授权并委托丙方将其支付的出借本金直接划付至乙方账户，乙方对此表示认可。\r\n	</p>\r\n	<p> 3、甲、乙双方一致同意，在有必要时，丙方有权代甲方对乙方进行关于本协议借款的违约提醒及催收工作，包括但不限于：电话通知、上门催收提醒、发律师函、对乙方提起诉讼等。甲方在此确认委托丙方为其进行以上工作，并授权丙方可以将此工作委托给本协议外的其他方进行。乙方对前述委托的提醒、催收事项已明确知晓并应积极配合。\r\n	</p>\r\n	<p>4、丙方有权按月向乙方收取双方约定的借款管理费，并在有必要时对乙方进行违约提醒及催收工作，包括但不限于电话通知、发律师函、对乙方提起诉讼等。丙方有权将此违约提醒及催收工作委托给本协议外的其他方进行。\r\n	</p>\r\n	<p> 5、丙方接受甲乙双方的委托行为所产生的法律后果由相应委托方承担。如因乙方或甲方或其他方（包括但不限于技术问题）造成的延误或错误，丙方不承担任何责任。\r\n	</p>\r\n	<p> 6、丙方应对甲方和乙方的信息及本协议内容保密；如任何一方违约，或因相关权力部门要求（包括但不限于法院、仲裁机构、金融监管机构等），丙方有权披露。\r\n	</p>\r\n	<p>7、丙方根据本协议对乙方进行违约提醒及催收工作时，可在其认为必要时进行上门催收提醒，即丙方派出人员（至少2名）至乙方披露的住所地或经常居住地（联系地址）处催收和进行违约提醒，同时向乙方发送催收通知单，乙方应当签收，乙方不签收的，不影响上门催收提醒的进行。丙方采取上门催收提醒的，乙方应当向丙方支付上门提醒费用，收费标准为每次人民币1000.00元，此外，乙方还应向丙方支付进行上门催收提醒服务的差旅费（包括但不限于交通费、食宿费等）。\r\n	</p>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		<u>丁方的权利和义务</u>\r\n	</p>\r\n	<p>1、出借人和借款人均同意，丁方取得出借人在本协议项下的债权后，可依法向借款人追收借款本金、利息、逾期罚息等，清收费用，坏账风险均由丁方承担。\r\n	</p>\r\n	<p>2、款人逾期本网站对逾期仍未还款的借款人收取逾期罚息作为催收费用、采取多种方式进行催收、将借款人的相关信息对外公开或列入“不良信用记录”或采取法律措施等各项行为，该等服务的法律后果均由借款人自行承担，如债权转让给丁方后，对借款人造成的一切责任与本网站无关，均由借款人自行承担。\r\n	</p>\r\n	<p> 3、若借款人的任何一期还款不足以偿还应还本金、利息和违约金，且出借人为多人时，则出借人同意按照各自出借金额在出借金额总额中的比例收取还款，不足偿还本金时直接由丁方垫付后债权直接转让给丁方再进行追讨。\r\n	</p>\r\n	\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第三条 借款管理费及居间服务费\r\n	</p>\r\n	<p>1、	在本协议中，“借款管理费”和“居间服务费”是指因丙方为乙方提供信用咨询、评估、还款提醒、账户管理、还款特殊情况沟通、本金保障等系列信用相关服务（统称“信用服务”）而由乙方支付给丙方的报酬。\r\n	</p>\r\n	<p>2、	对于丙方向乙方提供的一系列信用服务，乙方同意在借款成功时向丙方支付本协议第一条约定借款本金总额的{function name="number_format" v=$deal.services_fee f=1}%(即人民币<?php echo number_format(floatval($this->_var[''deal''][''services_fee''])*$this->_var[''deal''][''borrow_amount'']/100,2); ?>元)作为居间服务费，该“居间服务费”由乙方授权并委托丙方在丙方根据本协议规定的“丙方的权利和义务”第2款规定向乙方划付出借本金时从本金中予以扣除，即视为乙方已缴纳。在本协议约定的借款期限内，乙方应每月向丙方支付本协议第一条约定借款本金总额的{$deal.manage_fee}% (即人民币{function name="number_format" v="$deal.month_manage_money" f=2}元)，作为借款管理费用，共需支付{$deal.repay_time}期，共计人民币{function name="number_format" v="$deal.all_manage_money" f=2} 元，借款管理费的缴纳时间与本协议第一条约定的还款日一致。</p>\r\n	<p> 本条所称的“借款成功时”系指本协议签署日。</p>\r\n	<p> 3、    如乙方和丙方协商一致调整借款管理费和居间服务费时，无需经过甲方同意。 </p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第四条 违约责任\r\n	</p>\r\n	<p> 1、协议各方均应严格履行合同义务，非经各方协商一致或依照本协议约定，任何一方不得解除本协议。\r\n	</p>\r\n	<p>2、任何一方违约，违约方应承担因违约使得其他各方产生的费用和损失，包括但不限于调查、诉讼费、律师费等，应由违约方承担。如违约方为乙方的，甲方有权立即解除本协议，并要求乙方立即偿还未偿还的本金、利息、罚息、违约金。此时，乙方还应向丙方支付所有应付的借款管理费。如本协议提前解除时，乙方在{$SITE_URL}网站的账户里有任何余款的，丙方有权按照本协议第四条第3项的清偿顺序将乙方的余款用于清偿，并要求乙方支付因此产生的相关费用。</p>\r\n	<p>3、乙方的每期还款均应按照如下顺序清偿：</p>\r\n	<p>（1）根据本协议产生的其他全部费用；</p>\r\n	<p>（2）本协议第四条第4款约定的罚息； </p>\r\n	<p>（3）本协议第四条第5款约定的逾期管理费；</p>\r\n	<p>（4）拖欠的利息； </p>\r\n	<p>（5）拖欠的本金； </p>\r\n	<p>（6）拖欠丙方的借款管理费；\r\n	</p>\r\n	<p>（7）正常的利息； </p>\r\n	<p>（8）正常的本金； </p>\r\n	<p>（9）丙方的借款管理费；</p>\r\n	<p> 4、乙方应严格履行还款义务，如乙方逾期还款，则应按照下述条款向甲方支付逾期罚息，自逾期开始之后，逾期本金的正常利息停止计算。 </p>\r\n	<p>罚息总额 = 逾期本息总额×对应罚息利率×逾期天数；</p>\r\n</div>\r\n<div>\r\n	<br/>\r\n	<table border="1" style="margin: 0px auto; border-collapse: collapse; border: 1px solid rgb(0, 0, 0); width: 70%; ">\r\n		<tr>\r\n			<td style="padding-left:10px">\r\n				逾期天数\r\n			</td>\r\n			<td style="padding-left:10px">\r\n				1—<?php echo (int)app_conf("YZ_IMPSE_DAY")-1; ?>天\r\n			</td>\r\n			<td style="padding-left:10px">\r\n				{function name="app_conf" v="YZ_IMPSE_DAY"}天及以上\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="padding-left:10px">\r\n				罚息利率\r\n			</td>\r\n			<td style="padding-left:10px">\r\n				{$deal.impose_fee_day1}%\r\n			</td>\r\n			<td style="padding-left:10px">\r\n				{$deal.impose_fee_day2}%\r\n			</td>\r\n		</tr>\r\n	</table>\r\n	<br/>\r\n	<p>\r\n		5、乙方应严格履行还款义务，如乙方逾期还款，则应按照下述条款向丙方支付逾期管理费：\r\n	</p>\r\n	<p>\r\n		逾期管理费总额 = 逾期本息总额×对应逾期管理费率×逾期天数；\r\n	</p>\r\n</div>\r\n<br/>\r\n<table border="1" style="margin: 0px auto; border-collapse: collapse; border: 1px solid rgb(0, 0, 0); width: 70%; ">\r\n	<tr>\r\n		<td style="padding-left:10px">\r\n			逾期天数\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			1—<?php echo (int)app_conf("YZ_IMPSE_DAY")-1; ?>天\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{function name="app_conf" v="YZ_IMPSE_DAY"}天及以上\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td style="padding-left:10px">\r\n			逾期管理费费率\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$deal.manage_impose_fee_day1}%\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$deal.manage_impose_fee_day2}%\r\n		</td>\r\n	</tr>\r\n</table>\r\n<br/>\r\n<div>\r\n	<p>\r\n		6、如果乙方逾期支付任何一期还款超过30天，或乙方在逾期后出现逃避、拒绝沟通或拒绝承认欠款事实等恶意行为，本协议项下的全部借款本息及借款管理费均提前到期，乙方应立即清偿本协议下尚未偿付的全部本金、利息、罚息、借款管理费及根据本协议产生的其他全部费用。\r\n	</p>\r\n	<p>\r\n		7、如果乙方逾期支付任何一期还款超过30天，或乙方在逾期后出现逃避、拒绝沟通或拒绝承认欠款事实等恶意行为，丙方有权将乙方的“逾期记录”记入人民银行公民征信系统，丙方不承担任何法律责任。\r\n	</p>\r\n	<p>\r\n		8、如果乙方逾期支付任何一期还款超过30天，或乙方在逾期后出现逃避、拒绝沟通或拒绝承认欠款事实等恶意行为，丙方有权将乙方违约失信的相关信息及乙方其他信息向媒体、用人单位、公安机关、检查机关、法律机关披露，丙方不承担任何责任。\r\n	</p>\r\n	<p>\r\n		9、在乙方还清全部本金、利息、借款管理费、罚息、逾期管理费之前，罚息及逾期管理费的计算不停止。\r\n	</p>\r\n	<p>\r\n		10、本协议中的所有甲方与乙方之间的借款均是相互独立的，一旦乙方逾期未归还借款本息，甲方中的任何一个出借人均有权单独向乙方追索或者提起诉讼。如乙方逾期支付借款管理费或提供虚假信息的，丙方亦可单独向乙方追索或者提起诉讼。\r\n	</p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第五条 提前还款\r\n	</p>\r\n	<p>\r\n		1、乙方可在借款期间任何时候提前偿还剩余借款。\r\n	</p>\r\n	<p>\r\n		2、提前偿还全部剩余借款\r\n	</p>\r\n	<p style="padding-left: 15px">\r\n		1）乙方提前清偿全部剩余借款时，应向甲方支付当期应还本息，剩余本金及提前还款补偿（补偿金额为剩余本金的{$deal.compensate_fee}%）。\r\n	</p>\r\n	<p style="padding-left: 15px">\r\n		2）乙方提前清偿全部剩余借款时，应向丙方支付当期借款管理费，乙方无需支付剩余还款期的借款管理费。\r\n	</p>\r\n	<p>\r\n		3、提前偿还部分借款\r\n	</p>\r\n	<p style="padding-left: 15px">\r\n		1）乙方提前偿还部分借款，仍应向甲方支付全部借款利息。\r\n	</p>\r\n	<p style="padding-left: 15px">\r\n		2）乙方提前偿还部分借款，仍应向丙方支付全部应付的借款管理费。\r\n	</p>\r\n	<p>\r\n		4、任何形式的提前还款不影响丙方向乙方收取在本协议第三条中说明的居间服务费。\r\n	</p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第六条	法律及争议解决\r\n	</p>\r\n	 <p>\r\n		 本协议的签订、履行、终止、解释均适用中华人民共和国法律，并由丙方所在地{function name="app_conf" v=''COMPANY_REG_ADDRESS''}人民法院管辖。\r\n	</p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第七条	附则\r\n	</p>\r\n	<p>\r\n		1、本协议采用电子文本形式制成，并永久保存在丙方为此设立的专用服务器上备查，各方均认可该形式的协议效力。\r\n	</p>\r\n	<p>\r\n		2、本协议自文本最终生成之日生效。\r\n	</p>\r\n	<p>\r\n		3、本协议签订之日起至借款全部清偿之日止，乙方或甲方有义务在下列信息变更三日内提供更新后的信息给丙方：本人、本人的家庭联系人及紧急联系人、工作单位、居住地址、住所电话、手机号码、电子邮箱、银行账户的变更。若因任何一方不及时提供上述变更信息而带来的损失或额外费用应由该方承担。\r\n	</p>\r\n	<p>\r\n		4、如果本协议中的任何一条或多条违反适用的法律法规，则该条将被视为无效，但该无效条款并不影响本协议其他条款的效力。\r\n	</p>\r\n        <br>\r\n	{if $deal.attachment}\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第八条	附件\r\n	</p>\r\n	<p>\r\n		{$deal.attachment}\r\n	</p>\r\n	{/if}\r\n</div>\r\n<br/>\r\n<div style="width: 98%;text-align: right;">\r\n	<p>\r\n		{function name="to_date" v="$deal.repay_start_time" f="Y年m月d日"}\r\n	</p>\r\n</div>', 1, 0);
INSERT INTO `%DB_PREFIX%contract` (`id`, `title`, `content`, `is_effect`, `is_delete`) VALUES
(5, '到期本息合同范本【普通】', '<div style="width: 98%;text-align: right;">编号：<span>{$deal.deal_sn}</span></div>\r\n<h2 align="center">借款协议</h2>\r\n<br/>\r\n<div style="text-align: left;font-weight: 600;">甲方（出借人）：</div>\r\n<table border="1" style="margin: 0px auto; border-collapse: collapse; border: 1px solid rgb(0, 0, 0); width: 70%; ">\r\n    <tr>\r\n	<td style="text-align:center;"> {$SITE_TITLE}用户名</td>\r\n	<td style="text-align:center;"> 借出金额</td>\r\n	<td style="text-align:center;">借款期限</td>\r\n	<td style="text-align:center;"> 到期还本息</td>\r\n    </tr>\r\n    {foreach from="$loan_list" item="loan"}\r\n    <tr>\r\n	<td style="text-align:center;">{$loan.user_name}</td>\r\n	<td style="text-align:right;padding-right:10px">{$CURRENCY_UNIT}{function name="number_format" v=$loan.money f=2}</td>\r\n	<td style="text-align:center;">{$deal.repay_time}{if $deal.repay_time_type eq 0}天{else}个月{/if}</td>\r\n	<td style="text-align:right;padding-right:10px">\r\n	{$CURRENCY_UNIT}{function name="number_format" v=$loan.get_repay_money f=2}\r\n	</td>\r\n    </tr>\r\n    {/foreach}\r\n    <tr>\r\n	<td style="text-align:center;">总计</td>\r\n	<td style="text-align:right;padding-right:10px">{$CURRENCY_UNIT}{function name="number_format" v=$deal.load_money f=2}</td>\r\n	<td> </td>\r\n	<td> </td>\r\n    </tr>\r\n</table>\r\n<p>注：因计算中存在四舍五入，最后一期应收本息与之前略有不同</p>\r\n<br/>\r\n<div>\r\n	<p style="text-align: left;font-weight: 600;">乙方（借款人）：</p>\r\n	<p style="text-align: left;font-weight: 600;">{$SITE_TITLE}用户名：<span>{$deal.user.user_name}</span></p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;"> 丙方（见证人）：{function name="app_conf" v="COMPANY"} </p>\r\n	<p style="text-align: left;font-weight: 600;">联系方式：{function name="app_conf" v="COMPANY_ADDRESS"}</p>\r\n</div>\r\n<br/>\r\n<p><strong>鉴于：</strong></p>\r\n<p>1、丙方是一家在{function name="app_conf" v="COMPANY_REG_ADDRESS"}合法成立并有效存续的有限责任公司，拥有{$SITE_URL} 网站（以下简称“该网站”）的经营权，提供信用咨询，为交易提供信息服务；</p>\r\n<p>2、乙方已在该网站注册，并承诺其提供给丙方的信息是完全真实的；</p>\r\n<p>3、甲方承诺对本协议涉及的借款具有完全的支配能力，是其自有闲散资金，为其合法所得；并承诺其提供给丙方的信息是完全真实的；</p>\r\n<p>4、乙方有借款需求，甲方亦同意借款，双方有意成立借贷关系；</p>\r\n<br/>\r\n<p style="text-align: left;font-weight: 600;">各方经协商一致，于<span> {function name="to_date" v="$deal.repay_start_time" f="Y年m月d日"}</span>签订如下协议，共同遵照履行：</p>\r\n<br/>\r\n<p style="text-align: left;font-weight: 600;"> 第一条 借款基本信息</p>\r\n<br/>\r\n<table border="1" style="margin: 0px auto; border-collapse: collapse; border: 1px solid rgb(0, 0, 0); width: 70%; ">\r\n	<tr>\r\n		<td width="20%" style="padding-left:10px"> 借款详细用途</td>\r\n		<td style="padding-left:10px"> {$deal.type_info.name}</td>\r\n	</tr>\r\n	<tr>\r\n		<td style="padding-left:10px">借款本金数额</td>\r\n		<td style="padding-left:10px">\r\n			{$CURRENCY_UNIT}{function name="number_format" v=$deal.borrow_amount f=2}（各出借人借款本金数额详见本协议文首表格）\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td style="padding-left:10px">到期还本息\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$CURRENCY_UNIT}{function name="number_format" v=$deal.last_month_repay_money f=2}\r\n		</td>\r\n	</tr>\r\n	\r\n	<tr>\r\n		<td style="padding-left:10px">\r\n			还款日\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			 自{function name="to_date" v="$deal.repay_start_time" f="Y年m月d日"}起，{function name="to_date" v="$deal.end_repay_time" f="Y年m月d日"}（24:00前，节假日不顺延）\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td style="padding-left:10px"> 借款期限\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$deal.repay_time}{if $deal.repay_time_type eq 0}天{else}个月{/if}，{function name="to_date" v="$deal.repay_start_time" f="Y年m月d日"}起，至  {function name="to_date" v="$deal.end_repay_time" f="Y年m月d日"}日止\r\n		</td>\r\n	</tr>\r\n</table>\r\n<br/>\r\n<div>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第二条 各方权利和义务\r\n	</p>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		<u>甲方的权利和义务</u>\r\n	</p>\r\n	<p> 1、	甲方应按合同约定的借款期限起始日期将足额的借款本金支付给乙方。\r\n	</p>\r\n	<p> 2、	甲方享有其所出借款项所带来的利息收益。\r\n	</p>\r\n	<p>3、	如乙方违约，甲方有权要求丙方提供其已获得的乙方信息，丙方应当提供。\r\n	</p>\r\n	<p>4、	无须通知乙方，甲方可以根据自己的意愿进行本协议下其对乙方债权的转让。在甲方的债权转让后，乙方需对债权受让人继续履行本协议下其对甲方的还款义务，不得以未接到债权转让通知为由拒绝履行还款义务。\r\n	</p>\r\n	<p> 5、	甲方应主动缴纳由利息所得带来的可能的税费。\r\n	</p>\r\n	<p>6、	如乙方实际还款金额少于本协议约定的本金、利息及违约金的，甲方各出借人同意各自按照其于本协议文首约定的借款比例收取还款。\r\n	</p>\r\n	<p> 7、	甲方应确保其提供信息和资料的真实性，不得提供虚假信息或隐瞒重要事实。\r\n	</p>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		<u>乙方权利和义务</u>\r\n	</p>\r\n	<p> 1、	乙方必须按期足额向甲方偿还本金和利息。\r\n	</p>\r\n	<p> 2、    乙方必须按期足额向丙方支付借款管理费用。\r\n	</p>\r\n	<p>3、	乙方承诺所借款项不用于任何违法用途。\r\n	</p>\r\n	<p>4、	乙方应确保其提供的信息和资料的真实性，不得提供虚假信息或隐瞒重要事实。\r\n	</p>\r\n	<p>5、	乙方有权了解其在丙方的信用评审进度及结果。\r\n	</p>\r\n	<p> 6、	乙方不得将本协议项下的任何权利义务转让给任何其他方。\r\n	</p>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		<u>丙方的权利和义务</u>\r\n	</p>\r\n	<p>1、甲方授权并委托丙方代其收取本协议文首所约定的出借人每月应收本息，代收后按照甲方的要求进行处置，乙方对此表示认可。\r\n	</p>\r\n	<p>2、甲方授权并委托丙方将其支付的出借本金直接划付至乙方账户，乙方对此表示认可。\r\n	</p>\r\n	<p> 3、甲、乙双方一致同意，在有必要时，丙方有权代甲方对乙方进行关于本协议借款的违约提醒及催收工作，包括但不限于：电话通知、上门催收提醒、发律师函、对乙方提起诉讼等。甲方在此确认委托丙方为其进行以上工作，并授权丙方可以将此工作委托给本协议外的其他方进行。乙方对前述委托的提醒、催收事项已明确知晓并应积极配合。\r\n	</p>\r\n	<p>4、丙方有权按月向乙方收取双方约定的借款管理费，并在有必要时对乙方进行违约提醒及催收工作，包括但不限于电话通知、发律师函、对乙方提起诉讼等。丙方有权将此违约提醒及催收工作委托给本协议外的其他方进行。\r\n	</p>\r\n	<p> 5、丙方接受甲乙双方的委托行为所产生的法律后果由相应委托方承担。如因乙方或甲方或其他方（包括但不限于技术问题）造成的延误或错误，丙方不承担任何责任。\r\n	</p>\r\n	<p> 6、丙方应对甲方和乙方的信息及本协议内容保密；如任何一方违约，或因相关权力部门要求（包括但不限于法院、仲裁机构、金融监管机构等），丙方有权披露。\r\n	</p>\r\n	<p>7、丙方根据本协议对乙方进行违约提醒及催收工作时，可在其认为必要时进行上门催收提醒，即丙方派出人员（至少2名）至乙方披露的住所地或经常居住地（联系地址）处催收和进行违约提醒，同时向乙方发送催收通知单，乙方应当签收，乙方不签收的，不影响上门催收提醒的进行。丙方采取上门催收提醒的，乙方应当向丙方支付上门提醒费用，收费标准为每次人民币1000.00元，此外，乙方还应向丙方支付进行上门催收提醒服务的差旅费（包括但不限于交通费、食宿费等）。\r\n	</p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第三条 借款管理费及居间服务费\r\n	</p>\r\n	<p>1、	在本协议中，“借款管理费”和“居间服务费”是指因丙方为乙方提供信用咨询、评估、还款提醒、账户管理、还款特殊情况沟通、本金保障等系列信用相关服务（统称“信用服务”）而由乙方支付给丙方的报酬。\r\n	</p>\r\n	<p>2、	对于丙方向乙方提供的一系列信用服务，乙方同意在借款成功时向丙方支付本协议第一条约定借款本金总额的{function name="number_format" v=$deal.services_fee f=1}%(即人民币<?php echo number_format(floatval($this->_var[''deal''][''services_fee''])*$this->_var[''deal''][''borrow_amount'']/100,2); ?>元)作为居间服务费，该“居间服务费”由乙方授权并委托丙方在丙方根据本协议规定的“丙方的权利和义务”第2款规定向乙方划付出借本金时从本金中予以扣除，即视为乙方已缴纳。在本协议约定的借款期限内，乙方应每月向丙方支付本协议第一条约定借款本金总额的{$deal.manage_fee}% (即人民币{function name="number_format" v="$deal.month_manage_money" f=2}元)，作为借款管理费用，共需支付{if $deal.repay_time_type eq 0}1{else}{$deal.repay_time}{/if}期，共计人民币{function name="number_format" v="$deal.all_manage_money" f=2} 元，借款管理费的缴纳时间与本协议第一条约定的还款日一致。</p>\r\n	<p> 本条所称的“借款成功时”系指本协议签署日。</p>\r\n	<p> 3、    如乙方和丙方协商一致调整借款管理费和居间服务费时，无需经过甲方同意。 </p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第四条 违约责任\r\n	</p>\r\n	<p> 1、协议各方均应严格履行合同义务，非经各方协商一致或依照本协议约定，任何一方不得解除本协议。\r\n	</p>\r\n	<p>2、任何一方违约，违约方应承担因违约使得其他各方产生的费用和损失，包括但不限于调查、诉讼费、律师费等，应由违约方承担。如违约方为乙方的，甲方有权立即解除本协议，并要求乙方立即偿还未偿还的本金、利息、罚息、违约金。此时，乙方还应向丙方支付所有应付的借款管理费。如本协议提前解除时，乙方在{$SITE_URL}网站的账户里有任何余款的，丙方有权按照本协议第四条第3项的清偿顺序将乙方的余款用于清偿，并要求乙方支付因此产生的相关费用。</p>\r\n	<p>3、乙方的每期还款均应按照如下顺序清偿：</p>\r\n	<p>（1）根据本协议产生的其他全部费用；</p>\r\n	<p>（2）本协议第四条第4款约定的罚息； </p>\r\n	<p>（3）本协议第四条第5款约定的逾期管理费；</p>\r\n	<p>（4）拖欠的利息； </p>\r\n	<p>（5）拖欠的本金； </p>\r\n	<p>（6）拖欠丙方的借款管理费；\r\n	</p>\r\n	<p>（7）正常的利息； </p>\r\n	<p>（8）正常的本金； </p>\r\n	<p>（9）丙方的借款管理费；</p>\r\n	<p> 4、乙方应严格履行还款义务，如乙方逾期还款，则应按照下述条款向甲方支付逾期罚息，自逾期开始之后，逾期本金的正常利息停止计算。 </p>\r\n	<p>罚息总额 = 逾期本息总额×对应罚息利率×逾期天数；</p>\r\n</div>\r\n<div>\r\n	<br/>\r\n	<table border="1" style="margin: 0px auto; border-collapse: collapse; border: 1px solid rgb(0, 0, 0); width: 70%; ">\r\n		<tr>\r\n			<td style="padding-left:10px">\r\n				逾期天数\r\n			</td>\r\n			<td style="padding-left:10px">\r\n				1—<?php echo (int)app_conf("YZ_IMPSE_DAY")-1; ?>天\r\n			</td>\r\n			<td style="padding-left:10px">\r\n				{function name="app_conf" v="YZ_IMPSE_DAY"}天及以上\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="padding-left:10px">\r\n				罚息利率\r\n			</td>\r\n			<td style="padding-left:10px">\r\n				{$deal.impose_fee_day1}%\r\n			</td>\r\n			<td style="padding-left:10px">\r\n				{$deal.impose_fee_day2}%\r\n			</td>\r\n		</tr>\r\n	</table>\r\n	<br/>\r\n	<p>\r\n		5、乙方应严格履行还款义务，如乙方逾期还款，则应按照下述条款向丙方支付逾期管理费：\r\n	</p>\r\n	<p>\r\n		逾期管理费总额 = 逾期本息总额×对应逾期管理费率×逾期天数；\r\n	</p>\r\n</div>\r\n<br/>\r\n<table border="1" style="margin: 0px auto; border-collapse: collapse; border: 1px solid rgb(0, 0, 0); width: 70%; ">\r\n	<tr>\r\n		<td style="padding-left:10px">\r\n			逾期天数\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			1—<?php echo (int)app_conf("YZ_IMPSE_DAY")-1; ?>天\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{function name="app_conf" v="YZ_IMPSE_DAY"}天及以上\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td style="padding-left:10px">\r\n			逾期管理费费率\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$deal.manage_impose_fee_day1}%\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$deal.manage_impose_fee_day2}%\r\n		</td>\r\n	</tr>\r\n</table>\r\n<br/>\r\n<div>\r\n	<p>\r\n		6、如果乙方逾期支付任何一期还款超过30天，或乙方在逾期后出现逃避、拒绝沟通或拒绝承认欠款事实等恶意行为，本协议项下的全部借款本息及借款管理费均提前到期，乙方应立即清偿本协议下尚未偿付的全部本金、利息、罚息、借款管理费及根据本协议产生的其他全部费用。\r\n	</p>\r\n	<p>\r\n		7、如果乙方逾期支付任何一期还款超过30天，或乙方在逾期后出现逃避、拒绝沟通或拒绝承认欠款事实等恶意行为，丙方有权将乙方的“逾期记录”记入人民银行公民征信系统，丙方不承担任何法律责任。\r\n	</p>\r\n	<p>\r\n		8、如果乙方逾期支付任何一期还款超过30天，或乙方在逾期后出现逃避、拒绝沟通或拒绝承认欠款事实等恶意行为，丙方有权将乙方违约失信的相关信息及乙方其他信息向媒体、用人单位、公安机关、检查机关、法律机关披露，丙方不承担任何责任。\r\n	</p>\r\n	<p>\r\n		9、在乙方还清全部本金、利息、借款管理费、罚息、逾期管理费之前，罚息及逾期管理费的计算不停止。\r\n	</p>\r\n	<p>\r\n		10、本协议中的所有甲方与乙方之间的借款均是相互独立的，一旦乙方逾期未归还借款本息，甲方中的任何一个出借人均有权单独向乙方追索或者提起诉讼。如乙方逾期支付借款管理费或提供虚假信息的，丙方亦可单独向乙方追索或者提起诉讼。\r\n	</p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第五条 提前还款\r\n	</p>\r\n	<p>\r\n		1、乙方可在借款期间任何时候提前偿还剩余借款。\r\n	</p>\r\n	<p>\r\n		2、提前偿还全部剩余借款\r\n	</p>\r\n	<p style="padding-left: 15px">\r\n		1）乙方提前清偿全部剩余借款时，应向甲方支付当期应还本息，剩余本金及提前还款补偿（补偿金额为剩余本金的{$deal.compensate_fee}%）。\r\n	</p>\r\n	<p style="padding-left: 15px">\r\n		2）乙方提前清偿全部剩余借款时，应向丙方支付当期借款管理费，乙方无需支付剩余还款期的借款管理费。\r\n	</p>\r\n	<p>\r\n		3、提前偿还部分借款\r\n	</p>\r\n	<p style="padding-left: 15px">\r\n		1）乙方提前偿还部分借款，仍应向甲方支付全部借款利息。\r\n	</p>\r\n	<p style="padding-left: 15px">\r\n		2）乙方提前偿还部分借款，仍应向丙方支付全部应付的借款管理费。\r\n	</p>\r\n	<p>\r\n		4、任何形式的提前还款不影响丙方向乙方收取在本协议第三条中说明的居间服务费。\r\n	</p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第六条	法律及争议解决\r\n	</p>\r\n	 <p>\r\n		 本协议的签订、履行、终止、解释均适用中华人民共和国法律，并由丙方所在地{function name="app_conf" v=''COMPANY_REG_ADDRESS''}人民法院管辖。\r\n	</p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第七条	附则\r\n	</p>\r\n	<p>\r\n		1、本协议采用电子文本形式制成，并永久保存在丙方为此设立的专用服务器上备查，各方均认可该形式的协议效力。\r\n	</p>\r\n	<p>\r\n		2、本协议自文本最终生成之日生效。\r\n	</p>\r\n	<p>\r\n		3、本协议签订之日起至借款全部清偿之日止，乙方或甲方有义务在下列信息变更三日内提供更新后的信息给丙方：本人、本人的家庭联系人及紧急联系人、工作单位、居住地址、住所电话、手机号码、电子邮箱、银行账户的变更。若因任何一方不及时提供上述变更信息而带来的损失或额外费用应由该方承担。\r\n	</p>\r\n	<p>\r\n		4、如果本协议中的任何一条或多条违反适用的法律法规，则该条将被视为无效，但该无效条款并不影响本协议其他条款的效力。\r\n	</p>\r\n        <br>\r\n	{if $deal.attachment}\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第八条	附件\r\n	</p>\r\n	<p>\r\n		{$deal.attachment}\r\n	</p>\r\n	{/if}\r\n</div>\r\n<br/>\r\n<div style="width: 98%;text-align: right;">\r\n	<p>\r\n		{function name="to_date" v="$deal.repay_start_time" f="Y年m月d日"}\r\n	</p>\r\n</div>', 1, 0),
(6, '到期本息合同范本【担保】', '<div style="width: 98%;text-align: right;">编号：<span>{$deal.deal_sn}</span></div>\r\n<h2 align="center">借款协议</h2>\r\n<br/>\r\n<div style="text-align: left;font-weight: 600;">甲方（出借人）：</div>\r\n<table border="1" style="margin: 0px auto; border-collapse: collapse; border: 1px solid rgb(0, 0, 0); width: 70%; ">\r\n    <tr>\r\n	<td style="text-align:center;"> {$SITE_TITLE}用户名</td>\r\n	<td style="text-align:center;"> 借出金额</td>\r\n	<td style="text-align:center;">借款期限</td>\r\n	<td style="text-align:center;"> 到期还本息</td>\r\n    </tr>\r\n    {foreach from="$loan_list" item="loan"}\r\n    <tr>\r\n	<td style="text-align:center;">{$loan.user_name}</td>\r\n	<td style="text-align:right;padding-right:10px">{$CURRENCY_UNIT}{function name="number_format" v=$loan.money f=2}</td>\r\n	<td style="text-align:center;">{$deal.repay_time}{if $deal.repay_time_type eq 0}天{else}个月{/if}</td>\r\n	<td style="text-align:right;padding-right:10px">\r\n	{$CURRENCY_UNIT}{function name="number_format" v=$loan.get_repay_money f=2}\r\n	</td>\r\n    </tr>\r\n    {/foreach}\r\n    <tr>\r\n	<td style="text-align:center;">总计</td>\r\n	<td style="text-align:right;padding-right:10px">{$CURRENCY_UNIT}{function name="number_format" v=$deal.load_money f=2}</td>\r\n	<td> </td>\r\n	<td> </td>\r\n    </tr>\r\n</table>\r\n<p>注：因计算中存在四舍五入，最后一期应收本息与之前略有不同</p>\r\n<br/>\r\n<div>\r\n	<p style="text-align: left;font-weight: 600;">乙方（借款人）：</p>\r\n	<p style="text-align: left;font-weight: 600;">{$SITE_TITLE}用户名：<span>{$deal.user.user_name}</span></p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;"> 丙方（见证人）：{function name="app_conf" v="COMPANY"} </p>\r\n	<p style="text-align: left;font-weight: 600;">联系方式：{function name="app_conf" v="COMPANY_ADDRESS"}</p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;"> 丁方（担保方）：{$deal.agency_info.name} </p>\r\n	<p style="text-align: left;font-weight: 600;">联系方式：{$deal.agency_info.address}</p>\r\n</div>\r\n<br/>\r\n<p><strong>鉴于：</strong></p>\r\n<p>1、丙方是一家在{function name="app_conf" v="COMPANY_REG_ADDRESS"}合法成立并有效存续的有限责任公司，拥有{$SITE_URL} 网站（以下简称“该网站”）的经营权，提供信用咨询，为交易提供信息服务；</p>\r\n<p>2、乙方已在该网站注册，并承诺其提供给丙方的信息是完全真实的；</p>\r\n<p>3、甲方承诺对本协议涉及的借款具有完全的支配能力，是其自有闲散资金，为其合法所得；并承诺其提供给丙方的信息是完全真实的；</p>\r\n<p>4、乙方有借款需求，甲方亦同意借款，双方有意成立借贷关系；</p>\r\n<p>5、丁方愿意作为甲方借款提供保障。当乙方逾期3天仍未清偿借款本息，则甲方本协议项下的债权（逾期本息）自动转让给丁方，丁方将在第4天垫付该标的的未清偿借款本息给甲方；</p>\r\n<br/>\r\n<p style="text-align: left;font-weight: 600;">各方经协商一致，于<span> {function name="to_date" v="$deal.repay_start_time" f="Y年m月d日"}</span>签订如下协议，共同遵照履行：</p>\r\n<br/>\r\n<p style="text-align: left;font-weight: 600;"> 第一条 借款基本信息</p>\r\n<br/>\r\n<table border="1" style="margin: 0px auto; border-collapse: collapse; border: 1px solid rgb(0, 0, 0); width: 70%; ">\r\n	<tr>\r\n		<td width="20%" style="padding-left:10px"> 借款详细用途</td>\r\n		<td style="padding-left:10px"> {$deal.type_info.name}</td>\r\n	</tr>\r\n	<tr>\r\n		<td style="padding-left:10px">借款本金数额</td>\r\n		<td style="padding-left:10px">\r\n			{$CURRENCY_UNIT}{function name="number_format" v=$deal.borrow_amount f=2}（各出借人借款本金数额详见本协议文首表格）\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td style="padding-left:10px">到期还本息\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$CURRENCY_UNIT}{function name="number_format" v=$deal.last_month_repay_money f=2}\r\n		</td>\r\n	</tr>\r\n	\r\n	<tr>\r\n		<td style="padding-left:10px">\r\n			还款日\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			 自{function name="to_date" v="$deal.repay_start_time" f="Y年m月d日"}起，{function name="to_date" v="$deal.end_repay_time" f="Y年m月d日"}（24:00前，节假日不顺延）\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td style="padding-left:10px"> 借款期限\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$deal.repay_time}{if $deal.repay_time_type eq 0}天{else}个月{/if}，{function name="to_date" v="$deal.repay_start_time" f="Y年m月d日"}起，至  {function name="to_date" v="$deal.end_repay_time" f="Y年m月d日"}日止\r\n		</td>\r\n	</tr>\r\n</table>\r\n<br/>\r\n<div>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第二条 各方权利和义务\r\n	</p>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		<u>甲方的权利和义务</u>\r\n	</p>\r\n	<p> 1、	甲方应按合同约定的借款期限起始日期将足额的借款本金支付给乙方。\r\n	</p>\r\n	<p> 2、	甲方享有其所出借款项所带来的利息收益。\r\n	</p>\r\n	<p>3、	如乙方违约，甲方有权要求丙方提供其已获得的乙方信息，丙方应当提供。\r\n	</p>\r\n	<p>4、	无须通知乙方，甲方可以根据自己的意愿进行本协议下其对乙方债权的转让。在甲方的债权转让后，乙方需对债权受让人继续履行本协议下其对甲方的还款义务，不得以未接到债权转让通知为由拒绝履行还款义务。\r\n	</p>\r\n	<p> 5、	甲方应主动缴纳由利息所得带来的可能的税费。\r\n	</p>\r\n	<p>6、	如乙方实际还款金额少于本协议约定的本金、利息及违约金的，甲方各出借人同意各自按照其于本协议文首约定的借款比例收取还款。\r\n	</p>\r\n	<p> 7、	甲方应确保其提供信息和资料的真实性，不得提供虚假信息或隐瞒重要事实。\r\n	</p>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		<u>乙方权利和义务</u>\r\n	</p>\r\n	<p> 1、	乙方必须按期足额向甲方偿还本金和利息。\r\n	</p>\r\n	<p> 2、    乙方必须按期足额向丙方支付借款管理费用。\r\n	</p>\r\n	<p>3、	乙方承诺所借款项不用于任何违法用途。\r\n	</p>\r\n	<p>4、	乙方应确保其提供的信息和资料的真实性，不得提供虚假信息或隐瞒重要事实。\r\n	</p>\r\n	<p>5、	乙方有权了解其在丙方的信用评审进度及结果。\r\n	</p>\r\n	<p> 6、	乙方不得将本协议项下的任何权利义务转让给任何其他方。\r\n	</p>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		<u>丙方的权利和义务</u>\r\n	</p>\r\n	<p>1、甲方授权并委托丙方代其收取本协议文首所约定的出借人每月应收本息，代收后按照甲方的要求进行处置，乙方对此表示认可。\r\n	</p>\r\n	<p>2、甲方授权并委托丙方将其支付的出借本金直接划付至乙方账户，乙方对此表示认可。\r\n	</p>\r\n	<p> 3、甲、乙双方一致同意，在有必要时，丙方有权代甲方对乙方进行关于本协议借款的违约提醒及催收工作，包括但不限于：电话通知、上门催收提醒、发律师函、对乙方提起诉讼等。甲方在此确认委托丙方为其进行以上工作，并授权丙方可以将此工作委托给本协议外的其他方进行。乙方对前述委托的提醒、催收事项已明确知晓并应积极配合。\r\n	</p>\r\n	<p>4、丙方有权按月向乙方收取双方约定的借款管理费，并在有必要时对乙方进行违约提醒及催收工作，包括但不限于电话通知、发律师函、对乙方提起诉讼等。丙方有权将此违约提醒及催收工作委托给本协议外的其他方进行。\r\n	</p>\r\n	<p> 5、丙方接受甲乙双方的委托行为所产生的法律后果由相应委托方承担。如因乙方或甲方或其他方（包括但不限于技术问题）造成的延误或错误，丙方不承担任何责任。\r\n	</p>\r\n	<p> 6、丙方应对甲方和乙方的信息及本协议内容保密；如任何一方违约，或因相关权力部门要求（包括但不限于法院、仲裁机构、金融监管机构等），丙方有权披露。\r\n	</p>\r\n	<p>7、丙方根据本协议对乙方进行违约提醒及催收工作时，可在其认为必要时进行上门催收提醒，即丙方派出人员（至少2名）至乙方披露的住所地或经常居住地（联系地址）处催收和进行违约提醒，同时向乙方发送催收通知单，乙方应当签收，乙方不签收的，不影响上门催收提醒的进行。丙方采取上门催收提醒的，乙方应当向丙方支付上门提醒费用，收费标准为每次人民币1000.00元，此外，乙方还应向丙方支付进行上门催收提醒服务的差旅费（包括但不限于交通费、食宿费等）。\r\n	</p>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		<u>丁方的权利和义务</u>\r\n	</p>\r\n	<p>1、出借人和借款人均同意，丁方取得出借人在本协议项下的债权后，可依法向借款人追收借款本金、利息、逾期罚息等，清收费用，坏账风险均由丁方承担。\r\n	</p>\r\n	<p>2、款人逾期本网站对逾期仍未还款的借款人收取逾期罚息作为催收费用、采取多种方式进行催收、将借款人的相关信息对外公开或列入“不良信用记录”或采取法律措施等各项行为，该等服务的法律后果均由借款人自行承担，如债权转让给丁方后，对借款人造成的一切责任与本网站无关，均由借款人自行承担。\r\n	</p>\r\n	<p> 3、若借款人的任何一期还款不足以偿还应还本金、利息和违约金，且出借人为多人时，则出借人同意按照各自出借金额在出借金额总额中的比例收取还款，不足偿还本金时直接由丁方垫付后债权直接转让给丁方再进行追讨。\r\n	</p>\r\n	\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第三条 借款管理费及居间服务费\r\n	</p>\r\n	<p>1、	在本协议中，“借款管理费”和“居间服务费”是指因丙方为乙方提供信用咨询、评估、还款提醒、账户管理、还款特殊情况沟通、本金保障等系列信用相关服务（统称“信用服务”）而由乙方支付给丙方的报酬。\r\n	</p>\r\n	<p>2、	对于丙方向乙方提供的一系列信用服务，乙方同意在借款成功时向丙方支付本协议第一条约定借款本金总额的{function name="number_format" v=$deal.services_fee f=1}%(即人民币<?php echo number_format(floatval($this->_var[''deal''][''services_fee''])*$this->_var[''deal''][''borrow_amount'']/100,2); ?>元)作为居间服务费，该“居间服务费”由乙方授权并委托丙方在丙方根据本协议规定的“丙方的权利和义务”第2款规定向乙方划付出借本金时从本金中予以扣除，即视为乙方已缴纳。在本协议约定的借款期限内，乙方应每月向丙方支付本协议第一条约定借款本金总额的{$deal.manage_fee}% (即人民币{function name="number_format" v="$deal.month_manage_money" f=2}元)，作为借款管理费用，共需支付{if $deal.repay_time_type eq 0}1{else}{$deal.repay_time}{/if}期，共计人民币{function name="number_format" v="$deal.all_manage_money" f=2} 元，借款管理费的缴纳时间与本协议第一条约定的还款日一致。</p>\r\n	<p> 本条所称的“借款成功时”系指本协议签署日。</p>\r\n	<p> 3、    如乙方和丙方协商一致调整借款管理费和居间服务费时，无需经过甲方同意。 </p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第四条 违约责任\r\n	</p>\r\n	<p> 1、协议各方均应严格履行合同义务，非经各方协商一致或依照本协议约定，任何一方不得解除本协议。\r\n	</p>\r\n	<p>2、任何一方违约，违约方应承担因违约使得其他各方产生的费用和损失，包括但不限于调查、诉讼费、律师费等，应由违约方承担。如违约方为乙方的，甲方有权立即解除本协议，并要求乙方立即偿还未偿还的本金、利息、罚息、违约金。此时，乙方还应向丙方支付所有应付的借款管理费。如本协议提前解除时，乙方在{$SITE_URL}网站的账户里有任何余款的，丙方有权按照本协议第四条第3项的清偿顺序将乙方的余款用于清偿，并要求乙方支付因此产生的相关费用。</p>\r\n	<p>3、乙方的每期还款均应按照如下顺序清偿：</p>\r\n	<p>（1）根据本协议产生的其他全部费用；</p>\r\n	<p>（2）本协议第四条第4款约定的罚息； </p>\r\n	<p>（3）本协议第四条第5款约定的逾期管理费；</p>\r\n	<p>（4）拖欠的利息； </p>\r\n	<p>（5）拖欠的本金； </p>\r\n	<p>（6）拖欠丙方的借款管理费；\r\n	</p>\r\n	<p>（7）正常的利息； </p>\r\n	<p>（8）正常的本金； </p>\r\n	<p>（9）丙方的借款管理费；</p>\r\n	<p> 4、乙方应严格履行还款义务，如乙方逾期还款，则应按照下述条款向甲方支付逾期罚息，自逾期开始之后，逾期本金的正常利息停止计算。 </p>\r\n	<p>罚息总额 = 逾期本息总额×对应罚息利率×逾期天数；</p>\r\n</div>\r\n<div>\r\n	<br/>\r\n	<table border="1" style="margin: 0px auto; border-collapse: collapse; border: 1px solid rgb(0, 0, 0); width: 70%; ">\r\n		<tr>\r\n			<td style="padding-left:10px">\r\n				逾期天数\r\n			</td>\r\n			<td style="padding-left:10px">\r\n				1—<?php echo (int)app_conf("YZ_IMPSE_DAY")-1; ?>天\r\n			</td>\r\n			<td style="padding-left:10px">\r\n				{function name="app_conf" v="YZ_IMPSE_DAY"}天及以上\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="padding-left:10px">\r\n				罚息利率\r\n			</td>\r\n			<td style="padding-left:10px">\r\n				{$deal.impose_fee_day1}%\r\n			</td>\r\n			<td style="padding-left:10px">\r\n				{$deal.impose_fee_day2}%\r\n			</td>\r\n		</tr>\r\n	</table>\r\n	<br/>\r\n	<p>\r\n		5、乙方应严格履行还款义务，如乙方逾期还款，则应按照下述条款向丙方支付逾期管理费：\r\n	</p>\r\n	<p>\r\n		逾期管理费总额 = 逾期本息总额×对应逾期管理费率×逾期天数；\r\n	</p>\r\n</div>\r\n<br/>\r\n<table border="1" style="margin: 0px auto; border-collapse: collapse; border: 1px solid rgb(0, 0, 0); width: 70%; ">\r\n	<tr>\r\n		<td style="padding-left:10px">\r\n			逾期天数\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			1—<?php echo (int)app_conf("YZ_IMPSE_DAY")-1; ?>天\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{function name="app_conf" v="YZ_IMPSE_DAY"}天及以上\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td style="padding-left:10px">\r\n			逾期管理费费率\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$deal.manage_impose_fee_day1}%\r\n		</td>\r\n		<td style="padding-left:10px">\r\n			{$deal.manage_impose_fee_day2}%\r\n		</td>\r\n	</tr>\r\n</table>\r\n<br/>\r\n<div>\r\n	<p>\r\n		6、如果乙方逾期支付任何一期还款超过30天，或乙方在逾期后出现逃避、拒绝沟通或拒绝承认欠款事实等恶意行为，本协议项下的全部借款本息及借款管理费均提前到期，乙方应立即清偿本协议下尚未偿付的全部本金、利息、罚息、借款管理费及根据本协议产生的其他全部费用。\r\n	</p>\r\n	<p>\r\n		7、如果乙方逾期支付任何一期还款超过30天，或乙方在逾期后出现逃避、拒绝沟通或拒绝承认欠款事实等恶意行为，丙方有权将乙方的“逾期记录”记入人民银行公民征信系统，丙方不承担任何法律责任。\r\n	</p>\r\n	<p>\r\n		8、如果乙方逾期支付任何一期还款超过30天，或乙方在逾期后出现逃避、拒绝沟通或拒绝承认欠款事实等恶意行为，丙方有权将乙方违约失信的相关信息及乙方其他信息向媒体、用人单位、公安机关、检查机关、法律机关披露，丙方不承担任何责任。\r\n	</p>\r\n	<p>\r\n		9、在乙方还清全部本金、利息、借款管理费、罚息、逾期管理费之前，罚息及逾期管理费的计算不停止。\r\n	</p>\r\n	<p>\r\n		10、本协议中的所有甲方与乙方之间的借款均是相互独立的，一旦乙方逾期未归还借款本息，甲方中的任何一个出借人均有权单独向乙方追索或者提起诉讼。如乙方逾期支付借款管理费或提供虚假信息的，丙方亦可单独向乙方追索或者提起诉讼。\r\n	</p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第五条 提前还款\r\n	</p>\r\n	<p>\r\n		1、乙方可在借款期间任何时候提前偿还剩余借款。\r\n	</p>\r\n	<p>\r\n		2、提前偿还全部剩余借款\r\n	</p>\r\n	<p style="padding-left: 15px">\r\n		1）乙方提前清偿全部剩余借款时，应向甲方支付当期应还本息，剩余本金及提前还款补偿（补偿金额为剩余本金的{$deal.compensate_fee}%）。\r\n	</p>\r\n	<p style="padding-left: 15px">\r\n		2）乙方提前清偿全部剩余借款时，应向丙方支付当期借款管理费，乙方无需支付剩余还款期的借款管理费。\r\n	</p>\r\n	<p>\r\n		3、提前偿还部分借款\r\n	</p>\r\n	<p style="padding-left: 15px">\r\n		1）乙方提前偿还部分借款，仍应向甲方支付全部借款利息。\r\n	</p>\r\n	<p style="padding-left: 15px">\r\n		2）乙方提前偿还部分借款，仍应向丙方支付全部应付的借款管理费。\r\n	</p>\r\n	<p>\r\n		4、任何形式的提前还款不影响丙方向乙方收取在本协议第三条中说明的居间服务费。\r\n	</p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第六条	法律及争议解决\r\n	</p>\r\n	 <p>\r\n		 本协议的签订、履行、终止、解释均适用中华人民共和国法律，并由丙方所在地{function name="app_conf" v=''COMPANY_REG_ADDRESS''}人民法院管辖。\r\n	</p>\r\n	<br/>\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第七条	附则\r\n	</p>\r\n	<p>\r\n		1、本协议采用电子文本形式制成，并永久保存在丙方为此设立的专用服务器上备查，各方均认可该形式的协议效力。\r\n	</p>\r\n	<p>\r\n		2、本协议自文本最终生成之日生效。\r\n	</p>\r\n	<p>\r\n		3、本协议签订之日起至借款全部清偿之日止，乙方或甲方有义务在下列信息变更三日内提供更新后的信息给丙方：本人、本人的家庭联系人及紧急联系人、工作单位、居住地址、住所电话、手机号码、电子邮箱、银行账户的变更。若因任何一方不及时提供上述变更信息而带来的损失或额外费用应由该方承担。\r\n	</p>\r\n	<p>\r\n		4、如果本协议中的任何一条或多条违反适用的法律法规，则该条将被视为无效，但该无效条款并不影响本协议其他条款的效力。\r\n	</p>\r\n        <br>\r\n	{if $deal.attachment}\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第八条	附件\r\n	</p>\r\n	<p>\r\n		{$deal.attachment}\r\n	</p>\r\n	{/if}\r\n</div>\r\n<br/>\r\n<div style="width: 98%;text-align: right;">\r\n	<p>\r\n		{function name="to_date" v="$deal.repay_start_time" f="Y年m月d日"}\r\n	</p>\r\n</div>', 1, 0),
(8, '理财合同', ' <h2 align="center">{$SITE_TITLE}理财委托理财协议</h2>\r\n<br />\r\n尊敬的委托理财人：为了维护您的自身权益、防范理财风险，请在理财前仔细阅读本协议各条款（尤其是风险提示）、以及与本产品相关的全部产品规则，特别是加粗字体条款，以充分知悉、了解{$SITE_TITLE}理财的运作规则、理财范围以及协议双方的权利、义务和责任。一旦您在线点击相关同意协议及加入理财的确认按钮即视为对本协议全部条款及相关业务规则已充分理解并完全接受。<br />\r\n<br />\r\n甲方（理财人）：{$user_info.real_name}<br />\r\n身份证号码：{$user_info.idno}<br />\r\n{$SITE_TITLE}注册用户名：{$user_info.user_name}<br />\r\n<br />\r\n乙方（发起人）：{$invest_user_info.real_name}<br />\r\n身份证号码：{$invest_user_info.idno}<br />\r\n{$SITE_TITLE}注册用户名：{$invest_user_info.user_name}<br />\r\n<br />\r\n丙方（见证人）：{function name="app_conf" v="COMPANY"}<br />\r\n地址：{function name="app_conf" v="COMPANY_ADDRESS"}<br />\r\n<br />\r\n理财金额：{$vo.money_format}。<br />\r\n起息时间：{$vo.begin_interest_date}。<br />\r\n理财期收益：{$vo.interest_rate_foramt}。<br />\r\n理财期违约收益：{$vo.breach_rate_foramt}。<br />\r\n结束时间：{$vo.end_interest_date}<br />\r\n<br />\r\n鉴于丙方为{$SITE_TITLE}（{$SITE_URL}）平台运营主体，乙方已在{$SITE_URL}注册，并承诺其提供给丙方的信息是完全真实的，甲方为{$SITE_TITLE}平台注册用户，系具有完全民事权利/行为能力的自然人，现乙方推出理财产品“{$vo.name}”，甲方在充分了解并清楚知晓该产品理财风险的前提下，就甲方理财的相关事项，双方达成如下协议：<br />\r\n<br />\r\n一、释义<br />\r\n以下词语在本协议中定义如下：<br />\r\n1.1 {$SITE_TITLE}：指由丙方运营和管理的网站，域名为：{$SITE_URL}。<br />\r\n1.2. {$vo.name}：是乙方发起的期限灵活型理财产品。<br />\r\n1.3. 发起人（乙方）：指有一定的资金需求，在丙方{$SITE_TITLE}网站注册账户并经过丙方审核，通过发布理财产品，得到甲方理财资金。为具有完全民事权利能力和行为能力的自然人。<br />\r\n1.4. 理财人（甲方）：指通过丙方{$SITE_TITLE}网站注册成功的理财人，在“{$vo.name}”产品项下提供一定金额的资金给发起人（乙方）。为具有完全民事权利能力和行为能力的自然人。<br />\r\n1.5. {$SITE_TITLE}账户：指理财人或发起人以自身名义在{$SITE_TITLE}网站注册后系统自动产生的虚拟账户，通过第三方支付机构及/或其他通道进行充值或提现。<br />\r\n1.6.交易结算资金管理账户：甲方、乙方在支付机构（银行或第三方支付机构）开设的与{$SITE_TITLE}账户相关联的支付账户，账户内资金归账户所有人所有。<br />\r\n1.7. 理财协议：指通过{$SITE_TITLE}平台完成撮合交易，交易各方签署的有关协议。<br />\r\n1.8. 加入资金：指理财人理财进入到“{$vo.name}”的资金。<br />\r\n1.9. 债权：指甲方将加入资金在“{$vo.name}”产品进行理财从而在相关协议项下享有的所有权利。<br />\r\n<br />\r\n二、协议内容<br />\r\n2.1 理财产品简介：理财为由甲方在理财项下赎回部分项目作为理财标的，在系统支持下依照分散理财标准进行自动投标，并在收到用户指令的情况下由系统自动发起债权转让，通过出让已持有的债权以满足发起人资金流动性的需求，进而实现灵活理财并获取收益的目的。<br />\r\n2.2 理财范围：理财的范围包含乙方于理财项下以系统随机筛选的任意融资项目。<br />\r\n2.3 预期收益：甲方、乙方知悉、了解并同意，{$SITE_TITLE}宣传页面显示的与“理财”产品项下相关的收益以{$SITE_TITLE}平台网站公布的信息及于具体交易文件内载明为准。<br />\r\n2.4 收益结算：本协议项下的加入资金按日结算收益，加入资金的本金和利息在原理财项目终止后由发起人发放给理财人。每日的收益以实际结算为准。<br />\r\n2.5 加入资金来源保证：甲方保证其在本协议项下的加入资金来源合法，甲方是该加入资金的合法所有人。如果第三方对加入资金归属、合法性问题提出异议，由甲方自行解决，并承担因此给丙方及乙方造成的损失（如有）。<br />\r\n2.6 甲方在“理财”产品项下加入资金总额、变动情况、收益等以甲方{$SITE_TITLE}账户记载为准。<br />\r\n三、本协议的成立及生效<br />\r\n3.1 本协议成立：甲方按照{$SITE_TITLE}的规则，通过在{$SITE_TITLE}上勾选“我同意《{$SITE_TITLE}理财协议》”以及点击“确定投资”按钮（具体以网站显示为准）确认后，即视为甲方与乙方已达成协议并同意接受本协议的全部约定以及{$SITE_TITLE}网站所包含的其他与理财及本协议有关的各项规则的规定（包括相关的交易协议）。<br />\r\n3.2 冻结保证金：乙方点击“提交审核”按钮（具体以网站显示为准）确认后，即视为乙方已经向丙方发出不可撤销的授权指令，授权丙方委托相应的支付机构，在乙方的交易结算资金管理账户中，冻结相应金额，上述冻结在乙方为甲方进行当笔加入资金的划转时解除。<br />\r\n3.3 加入资金划转：<br />\r\n3.3.1 当笔加入资金全部冻结，且丙方系统完成当笔加入资金的借款项目投标后，根据所投特定项目的交易协议的相关约定，上述特定项目的理财人将根据双方另外之间的协议约定不可撤销地授权乙方委托相应支付机构，将当笔加入资金划转至理财人的交易结算资金管理账户划。<br />\r\n3.4 本协议生效：本协议以在线点击的形式于甲方勾选并点击“确定投资”按钮即时生效，本协议生效后对甲方后续操作（包括但不限于多次加入资金、赎回本金等）均具有约束力。<br />\r\n<br />\r\n四、理财<br />\r\n4.1 甲方全权委托乙方按照本协议的约定对加入资金作为理财本金进行理财，包括但不限于出借资金或者受让债权，乙方确认：乙方于理财项下就甲方的理财行为及签署的相关文件均由乙方承担全部义务并享有相应的合同权利。<br />\r\n4.2 甲方加入本“{$vo.name}”产品的资金按日计算收益，每日计算收益后收益部分不进行复投，但甲方可通过“申请赎回”功能将部分本金及其利息转入其交易结算资金管理账户。<br />\r\n五、收益<br />\r\n5.1 收益标准：以乙方{$SITE_TITLE}网站展示及理财项目项下的文件载明为准。<br />\r\n5.2 收益起算、截止时间：当笔加入资金的收益于乙方完成当笔加入资金划转后(具体起息时间以乙方项目中说明为准)开始计算直至乙方完成账户内全部本金赎回的当日截止。<br />\r\n5.3 收益赎回方式：每日结算，随时赎回；赎回后收益金额将会即时进入乙方的交易结算资金管理账户。<br />\r\n<br />\r\n六、理财资金退出<br />\r\n6.1 退出方式：甲方可选择部分或全部赎回其在理财中的理财资金（以下统称为“赎回”，但不包含已申请赎回的资金）。如需退出，甲方在赎回时输入全部可赎回金额发出赎回申请指令，并等待乙方确认甲方的赎回申请。<br />\r\n6.2 上述赎回指令一经发出即视为甲方不可撤销的授权乙方就赎回金额代为发起债权出让，乙方将通过出让交易方式的协助甲方完成资金赎回。此等授权的范围包括但不限于以等额定价为原则发起债权转让等，乙方将就甲方于授权范围内完成的行为承担全部法律责任并享有相应合同权利。上述指令一经乙方确认即视为乙方接受委托。<br />\r\n6.3 乙方将根据平台历史交易数据确定甲方可赎回资金金额的额度范围。<br />\r\n6.4 赎回结果<br />\r\n本金赎回申请被确认的，相应资金会于交易当日进入甲方交易结算资金管理账户；本金赎回申请未被确认的，相应资金将保留与原融资项目中继续计算收益，直到理财结束。<br />\r\n6.5 资金到账时间：甲方的赎回申请被确认后，一般在乙方确认后的当日内完成赎回，赎回资金将进入甲方的交易结算资金管理账户。<br />\r\n6.6 理财到期后，甲方不能申请赎回，由乙方发放到期理财资金。<br />\r\n<br />\r\n七、本协议的修改及终止<br />\r\n7.1 双方均确认，本协议的签订、生效和履行以不违反法律为前提。如果本协议中的任何一条或多条被司法部门认定为违反所须适用的法律，则该条将被视为无效，但该无效条款并不影响本协议其他条款的效力。<br />\r\n7.2 甲方同意乙方有权根据国家法律法规、监管政策、自律规定、市场变化等对本协议及与本协议相关的规则进行调整，必要时乙方有权终止甲方对 “{$vo.name}”理财，乙方并不就此承担违约责任。<br />\r\n7.3 调整或修改后的协议内容及相关业务规则将在{$SITE_TITLE}（包括但不限于官网公告、站内信、手机平台等方式）进行公布并立即生效，无需另行通知甲方。如果甲方不接受修改，可立即以赎回理财中全部加入资金的方式终止本服务，如甲方继续理财理财的即被视为接受修改，并受修改后的协议及相关业务规则约束。<br />\r\n7.4 本协议的任何修改、补充均须以{$SITE_TITLE}平台电子文本形式作出。<br />\r\n7.5 本协议作为乙方理财乙方“{$vo.name}”产品的约定，可适用于甲方在“{$vo.name}”项下的连续的或间断的多次理财行为，直至甲方不再理财该产品，本协议自动终止。<br />\r\n<br />\r\n八、其他<br />\r\n8.1 本协议以电子文本形式生成。<br />\r\n8.2 如双方在本协议履行过程中发生任何争议，应友好协商解决；如协商不成，则须提交仲裁委员会，以仲裁方式解决争议，仲裁裁决具有终局性，对双方均有约束力。<br />\r\n8.3 与理财相关的其他具体操作规则以{$SITE_TITLE}平台显示为准，并作为本协议的附件，如具体规则与本协议不一致的，以具体规则为准。<br />\r\n<div>\r\n	<br />\r\n</div>', 1, 0);
INSERT INTO `%DB_PREFIX%contract` (`id`, `title`, `content`, `is_effect`, `is_delete`) VALUES
(7, '债权转让合同范本1', '<div style="width: 98%;text-align: right;">\r\n编号：<span>Z-{$transfer.load_id}</span>\r\n</div>\r\n <h2 align="center">债权转让及受让协议</h2>\r\n\r\n<br/>\r\n<div> \r\n\r\n　　　本债权转让及受让协议（下称“本协议”）由以下双方于签署：\r\n</p>\r\n</div>\r\n<br/>\r\n<div> \r\n<p style="text-align: left;font-weight: 600;">甲方（转让人）：{$transfer.user.real_name}</p>\r\n<p>身份证号：{$transfer.user.idno}</p>\r\n<p>{$SITE_TITLE}用户名：{$transfer.user.user_name}</p>\r\n</div>\r\n <br/>\r\n<div> \r\n<p style="text-align: left;font-weight: 600;">乙方（受让人）：{$transfer.tuser.real_name}</p>\r\n<p>身份证号：{$transfer.tuser.idno}</p>\r\n<p>{$SITE_TITLE}用户名：{$transfer.tuser.user_name}</p>\r\n</div>\r\n <br/>\r\n <p>就甲方通过{$SITE_TITLE}商务顾问（北京）有限公司（以下“{$SITE_TITLE}”系指{$SITE_TITLE}商务顾问（北京）有限公司和下述{$SITE_TITLE}网站的统称）运营管理的<?php echo str_replace("http://","",get_domain()); ?> 网站（下称“{$SITE_TITLE}网站”）向乙方转让债权事宜，双方经协商一致，达成如下协议：</p>       \r\n<br/>\r\n<p style="text-align: left;font-weight: 600;">1.  债权转让</p>\r\n<p>1.1  标的债权信息及转让</p>     <p>甲方同意将其通过{$SITE_TITLE}的居间协助而形成的有关债权（下称“标的债权”）转让给乙方，乙方同意受让该等债权。标的债权具体信息如下：<p>\r\n<p style="text-align: left;font-weight: 600;">标的债权信息：</p>\r\n<br/>\r\n<table border="1" style="margin: 0px auto; border-collapse: collapse; border: 1px solid rgb(0, 0, 0); width: 70%; ">\r\n<tr>\r\n  <td width="20%" style="padding-left:10px">借款ID</td>\r\n <td style="padding-left:10px">{$transfer.load_id}</td>\r\n</tr>\r\n<tr>\r\n  <td style="padding-left:10px">借款人姓名</td>\r\n  <td style="padding-left:10px">{$transfer.user.real_name}</td>\r\n</tr>\r\n<tr>\r\n  <td style="padding-left:10px">借款本金数额</td>\r\n <td style="padding-left:10px">\r\n    {$transfer.load_money_format}                                                                      \r\n </td>\r\n</tr>\r\n<tr>\r\n  <td style="padding-left:10px">借款年利率</td>\r\n  <td style="padding-left:10px">{$transfer.rate}%</td>\r\n</tr>\r\n<tr>\r\n  <td style="padding-left:10px">原借款期限</td>\r\n  <td style="padding-left:10px">\r\n	{$transfer.repay_time} 个月，{$transfer.repay_start_time_format} 起，至 {$transfer.final_repay_time_format}止</td>\r\n</tr>\r\n<tr>\r\n  <td style="padding-left:10px">月偿还本息数额</td>\r\n  <td style="padding-left:10px">\r\n  {$transfer.month_repay_money_format}\r\n  </td>\r\n</tr>\r\n<tr>\r\n  <td style="padding-left:10px">还款日</td>\r\n  <td style="padding-left:10px">\r\n    {$transfer.repay_start_time_format} 自起，每月 {function name="to_date" v=$transfer.repay_start_time f="d"} 日（24:00前，节假日不顺延）\r\n </td>\r\n</tr>\r\n</table>\r\n<p style="text-align: left;font-weight: 600;">标的债权转让信息</p>\r\n<br/>\r\n<table border="1" style="margin: 0px auto; border-collapse: collapse; border: 1px solid rgb(0, 0, 0); width: 70%; ">\r\n<tr>\r\n  <td width="20%" style="padding-left:10px">标的债权价值</td>\r\n <td style="padding-left:10px">\r\n	{$transfer.all_must_repay_money_format}                                             \r\n   </td>\r\n</tr>\r\n<tr>\r\n  <td style="padding-left:10px">转让价款</td>\r\n <td style="padding-left:10px">\r\n	{$transfer.transfer_amount_format}                                                        \r\n  </td>\r\n</tr>\r\n<tr>\r\n  <td style="padding-left:10px">转让管理费</td>\r\n  <td style="padding-left:10px">\r\n		{$transfer.transfer_fee_format}\r\n  </td>\r\n</tr>\r\n<tr>\r\n  <td style="padding-left:10px">转让日期</td>\r\n <td style="padding-left:10px">{$transfer.transfer_time_format}</td>\r\n</tr>\r\n<tr>\r\n  <td style="padding-left:10px">剩余还款分期月数</td>\r\n <td style="padding-left:10px">\r\n    {$transfer.how_much_month} 个月，{$transfer.near_repay_time_format} 起，至  {$transfer.final_repay_time_format} 止 \r\n </td>\r\n</tr>\r\n</table>\r\n<br/>\r\n<p>1.2  债权转让流程</p>\r\n<p>1.2.1  双方同意并确认，双方通过自行或授权有关方根据{$SITE_TITLE}网站有关规则和说明，在{$SITE_TITLE}网站进行债权转让和受让购买操作等方式确认签署本协议。</p>\r\n<p>1.2.2  双方接受本协议且{$SITE_TITLE}审核通过时，本协议立即成立,并待转让价款支付完成时生效。协议成立的同时甲方不可撤销地授权{$SITE_TITLE}自行或委托第三方支付机构或合作的金融机构，将转让价款在扣除甲方应支付给{$SITE_TITLE}的转让管理费之后划转、支付给乙方，上述转让价款划转完成即视为本协议生效且标的债权转让成功；同时甲方不可撤销地授权{$SITE_TITLE}将其代为保管的甲方与标的债权借款人签署的电子文本形式的《借款协议》（下称“借款协议”）及借款人相关信息在{$SITE_TITLE}网站有关系统板块向乙方进行展示。</p>\r\n<p>1.2.3  本协议生效且标的债权转让成功后，双方特此委托{$SITE_TITLE}将标的债权的转让事项及有关信息通过站内信等形式通知与标的债权对应的借款人。</p>\r\n<p>1.3  自标的债权转让成功之日起，乙方成为标的债权的债权人，承继借款协议项下出借人的权利并承担出借人的义务。</p>\r\n<br/>\r\n<p style="text-align: left;font-weight: 600;">2.  保证与承诺</p>\r\n<p>2.1  甲方保证其转让的债权系其合法、有效的债权，不存在转让的限制。甲方同意并承诺按有关协议及{$SITE_TITLE}网站的相关规则和说明向{$SITE_TITLE}支付债权转让管理费。</p>\r\n<p>2.2  乙方保证其所用于受让标的债权的资金来源合法，乙方是该资金的合法所有人。如果第三方对资金归属、合法性问题发生争议，乙方应自行负责解决并承担相关责任。</p><br/>\r\n<p style="text-align: left;font-weight: 600;">3.  违约</p>\r\n<p>3.1  双方同意，如果一方违反其在本协议中所作的保证、承诺或任何其他义务，致使其他方遭受或发生损害、损失等责任，违约方须向守约方赔偿守约方因此遭受的一切经济损失。</p>\r\n<p>3.2  双方均有过错的，应根据双方实际过错程度，分别承担各自的违约责任。</p><br/>\r\n<p style="text-align: left;font-weight: 600;">4.  适用法律和争议解决</p>\r\n<p>4.1  本协议的订立、效力、解释、履行、修改和终止以及争议的解决适用中国的法律。</p>\r\n<p>4.2  本协议在履行过程中，如发生任何争执或纠纷，双方应友好协商解决；若协商不成，任何一方均有权向有管辖权的人民法院提起诉讼。</p><br/>\r\n<p style="text-align: left;font-weight: 600;">5.  其他</p>\r\n<p>5.1  双方可以书面协议方式对本协议作出修改和补充。经过双方签署的有关本协议的修改协议和补充协议是本协议组成部分，具有与本协议同等的法律效力。</p>\r\n<p>5.2  本协议及其修改或补充均通过{$SITE_TITLE}网站以电子文本形式制成，可以有一份或者多份并且每一份具有同等法律效力；同时双方委托{$SITE_TITLE}代为保管并永久保存在{$SITE_TITLE}为此设立的专用服务器上备查。双方均认可该形式的协议效力。</p>\r\n<p>5.3  甲乙双方均确认，本协议的签订、生效和履行以不违反中国的法律法规为前提。如果本协议中的任何一条或多条违反适用的法律法规，则该条将被视为无效，但该无效条款并不影响本协议其他条款的效力。</p>\r\n<p>5.4  除本协议上下文另有定义外，本协议项下的用语和定义应具有{$SITE_TITLE}网站服务协议及其有关规则中定义的含义。若有冲突，则以本协议为准。</p>\r\n        <br>	\r\n        {if $transfer.tattachment}\r\n	<p style="text-align: left;font-weight: 600;">\r\n		第八条	附件\r\n	</p>\r\n	<p>\r\n		{$transfer.tattachment}\r\n	</p>\r\n	{/if}\r\n</div>\r\n  <br>\r\n<div style="width: 98%;text-align: right;">\r\n	<p>\r\n		{$transfer.transfer_time_format}\r\n	</p>\r\n</div>', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%customer`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客服编号',
  `name` varchar(255) NOT NULL COMMENT '客服名称',
  `telphone` varchar(20) NOT NULL COMMENT '客服电话',
  `qq` varchar(20) NOT NULL COMMENT '客服qq',
  `is_effect` tinyint(1) NOT NULL DEFAULT '1' COMMENT '客服状态【有效性',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='公司信息标' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `%DB_PREFIX%customer`
--

INSERT INTO `%DB_PREFIX%customer` (`id`, `name`, `telphone`, `qq`, `is_effect`, `is_delete`) VALUES
(1, '客服一', '13959110366', '456123789', 1, 0),
(2, '客服二', '13959110388', '2668518379', 1, 0),
(3, '客服三', '13959110366', '32447578', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%deal`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%deal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `sub_name` varchar(255) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `agency_status` tinyint(1) NOT NULL COMMENT '应邀状态 0 应邀 1邀约中 2 拒绝',
  `user_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `sort` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `icon_type` tinyint(1) NOT NULL COMMENT '0自己上传，2用户头像，3类型图',
  `icon` varchar(255) NOT NULL,
  `seo_title` text NOT NULL,
  `seo_keyword` text NOT NULL,
  `seo_description` text NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `is_new` tinyint(1) NOT NULL,
  `is_best` tinyint(1) NOT NULL,
  `borrow_amount` decimal(10,0) NOT NULL COMMENT '借款总额',
  `apart_borrow_amount` decimal(10,0) NOT NULL COMMENT '拆标后的原借款标金额',
  `min_loan_money` decimal(10,0) NOT NULL DEFAULT '50' COMMENT '最底投标额度',
  `repay_time` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL COMMENT '年利率',
  `day` int(1) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `name_match` text NOT NULL,
  `name_match_row` text NOT NULL,
  `deal_cate_match` text NOT NULL,
  `deal_cate_match_row` text NOT NULL,
  `tag_match` text NOT NULL,
  `tag_match_row` text NOT NULL,
  `type_match` text NOT NULL,
  `type_match_row` text NOT NULL,
  `is_recommend` tinyint(1) NOT NULL,
  `buy_count` int(11) NOT NULL,
  `load_money` decimal(20,2) NOT NULL COMMENT '已投标多少',
  `repay_money` decimal(20,2) NOT NULL COMMENT '还了多少！',
  `start_time` int(11) NOT NULL,
  `success_time` int(11) NOT NULL,
  `repay_start_time` int(11) NOT NULL,
  `last_repay_time` int(11) NOT NULL,
  `next_repay_time` int(11) NOT NULL,
  `bad_time` int(11) NOT NULL,
  `deal_status` tinyint(4) NOT NULL COMMENT '0待等材料，1进行中，2满标，3流标，4还款中，5已还清',
  `enddate` int(11) NOT NULL,
  `voffice` tinyint(1) NOT NULL,
  `vposition` tinyint(1) NOT NULL,
  `services_fee` varchar(20) NOT NULL,
  `publish_wait` tinyint(1) NOT NULL,
  `is_send_bad_msg` tinyint(1) NOT NULL COMMENT '是否已发送流标通知',
  `bad_msg` text NOT NULL,
  `send_half_msg_time` int(11) NOT NULL,
  `send_three_msg_time` int(11) NOT NULL,
  `is_send_half_msg` tinyint(1) NOT NULL DEFAULT '0',
  `is_has_loans` tinyint(11) NOT NULL,
  `loantype` tinyint(1) NOT NULL,
  `warrant` tinyint(1) NOT NULL,
  `titlecolor` varchar(20) NOT NULL,
  `is_send_contract` tinyint(1) NOT NULL,
  `repay_time_type` tinyint(1) NOT NULL DEFAULT '1',
  `max_loan_money` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '最高投标额度',
  `risk_rank` tinyint(1) NOT NULL DEFAULT '0' COMMENT '风险等级',
  `risk_security` text NOT NULL COMMENT '风险保障',
  `is_send_success_msg` tinyint(1) NOT NULL,
  `ips_bill_no` varchar(30) DEFAULT NULL COMMENT '由IPS系统生成的唯一流水号',
  `guarantees_money` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '借款保证金',
  `ips_over` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'IPS 是否完成还款 0 未完成 1完成',
  `deal_sn` varchar(50) NOT NULL COMMENT '借款编号',
  `is_has_received` tinyint(1) NOT NULL COMMENT '流标是否返已还',
  `manage_fee` varchar(30) NOT NULL COMMENT '借款者管理费',
  `user_loan_manage_fee` varchar(30) NOT NULL COMMENT '投资者管理费',
  `user_loan_interest_manage_fee` varchar(30) NOT NULL,
  `manage_impose_fee_day1` varchar(30) NOT NULL COMMENT '普通逾期管理费',
  `manage_impose_fee_day2` varchar(30) NOT NULL COMMENT '严重逾期管理费',
  `impose_fee_day1` varchar(30) NOT NULL COMMENT '普通逾期费率',
  `impose_fee_day2` varchar(30) NOT NULL COMMENT '严重逾期费率',
  `user_load_transfer_fee` varchar(30) NOT NULL COMMENT '债权转让管理费',
  `transfer_day` int(11) NOT NULL COMMENT '满标放款多少天后才可以进行转让 0不限制',
  `compensate_fee` varchar(30) NOT NULL COMMENT '提前还款补偿',
  `ips_do_transfer` tinyint(1) NOT NULL DEFAULT '0' COMMENT '放款处理中',
  `delete_msg` text NOT NULL COMMENT '审核失败提示',
  `user_bid_rebate` varchar(30) NOT NULL COMMENT '投资返利%',
  `guarantees_amt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '借款保证金（冻结借款人的金额，需要提前存钱）',
  `real_freezen_amt` decimal(20,2) DEFAULT '0.00' COMMENT '借款方 实际冻结金额 = 保证金',
  `un_real_freezen_amt` decimal(20,2) DEFAULT '0.00' COMMENT '已经解冻的担保保证金（借款方）<=real_freezen_amt',
  `guarantor_amt` decimal(20,2) DEFAULT '0.00' COMMENT '担保方，担保金额(代偿金额累计不能大于担保金额)',
  `guarantor_margin_amt` decimal(20,2) DEFAULT '0.00' COMMENT '担保方，担保保证金额(需要冻结担保方的金额）',
  `guarantor_real_freezen_amt` decimal(20,2) DEFAULT '0.00' COMMENT '担保方 实际冻结金额 = 担保保证金额',
  `un_guarantor_real_freezen_amt` decimal(20,2) DEFAULT '0.00' COMMENT '已经解冻的担保保证金（担保方）<=guarantor_real_freezen_amt',
  `guarantor_pro_fit_amt` decimal(20,2) DEFAULT '0.00' COMMENT '担保收益',
  `guarantor_real_fit_amt` decimal(20,2) DEFAULT '0.00' COMMENT '实际担保收益，转帐后更新<=guarantor_pro_fit_amt',
  `mer_bill_no` varchar(30) DEFAULT NULL COMMENT '标的登记时提交的订单单号',
  `ips_guarantor_bill_no` varchar(30) DEFAULT NULL COMMENT '担保编号ips返回的',
  `mer_guarantor_bill_no` varchar(30) DEFAULT NULL COMMENT '提交的担保单号',
  `view_info` text NOT NULL,
  `generation_position` decimal(20,2) NOT NULL COMMENT '申请延期的额度',
  `uloadtype` tinyint(1) NOT NULL COMMENT '用户投标类型 0按金额，1 按份数',
  `portion` int(11) NOT NULL COMMENT '分成多少份',
  `max_portion` int(11) NOT NULL COMMENT '最多买多少份',
  `start_date` date NOT NULL COMMENT '开始投标时间，日期格式，方便统计',
  `repay_start_date` date NOT NULL COMMENT '满标放款,支出奖励时间,日期格式,方便统计',
  `bad_date` date NOT NULL COMMENT '流标时间,日期格式,方便统计',
  `contract_id` int(11) NOT NULL,
  `tcontract_id` int(11) NOT NULL,
  `is_advance` int(11) NOT NULL,
  `is_index_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否首页显示',
  `score` int(11) NOT NULL,
  `user_bid_score_fee` varchar(20) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `use_ecv` tinyint(1) NOT NULL COMMENT '是否可以使用红包',
  `is_mortgage` tinyint(4) NOT NULL COMMENT '是否有抵押物',
  `mortgage_desc` text NOT NULL COMMENT '抵押说明',
  `mortgage_infos` text NOT NULL COMMENT '抵押物照片',
  `mortgage_contract` text NOT NULL COMMENT '借款签约合同',
  `is_hidden` tinyint(11) NOT NULL,
  `peizi_order_ids` varchar(255) DEFAULT NULL COMMENT '临时存储peizi_order的id,方便撤销使用',
  `use_interestrate` tinyint(11) NOT NULL DEFAULT '0' COMMENT '是否允许使用加息券 0 不允许 1允许',
  `mortgage_fee` decimal(10,0) NOT NULL COMMENT '抵押物管理费',
  `use_learn` tinyint(1) NOT NULL COMMENT '是否可使用体验金',
  PRIMARY KEY (`id`),
  KEY `cate_id` (`cate_id`),
  KEY `sort` (`sort`),
  KEY `create_time` (`create_time`),
  KEY `update_time` (`update_time`),
  KEY `idx_1` (`user_id`,`publish_wait`),
  KEY `idx_0` (`deal_status`,`user_id`,`publish_wait`),
  KEY `user_id` (`user_id`),
  KEY `idx_d_001` (`start_date`),
  KEY `idx_d_002` (`repay_start_date`),
  KEY `idx_d_003` (`bad_date`),
  FULLTEXT KEY `name_match` (`name_match`),
  FULLTEXT KEY `tag_match` (`tag_match`),
  FULLTEXT KEY `deal_cate_match` (`deal_cate_match`),
  FULLTEXT KEY `all_match` (`name_match`,`deal_cate_match`,`tag_match`,`type_match`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%deal_agency`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%deal_agency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `header` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `brief` text NOT NULL,
  `company_brief` text NOT NULL,
  `history` text NOT NULL,
  `content` text NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `sort` int(11) NOT NULL,
  `short_name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `acct_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '担保方类型 否 0#机构；1#个人',
  `ips_mer_code` varchar(10) DEFAULT NULL COMMENT '由IPS颁发的商户号 acct_type = 0',
  `idno` varchar(20) DEFAULT NULL COMMENT '真实身份证 acct_type =1',
  `real_name` varchar(30) DEFAULT NULL COMMENT 'acct_type = 1真实姓名',
  `mobile` varchar(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `ips_acct_no` varchar(30) DEFAULT NULL COMMENT 'ips个人帐户',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `code` varchar(30) DEFAULT NULL COMMENT '找回密码验证码',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `create_time` int(11) NOT NULL COMMENT '注册时间',
  `login_ip` varchar(30) DEFAULT NULL COMMENT '登陆ip',
  `login_time` int(11) DEFAULT NULL COMMENT '登陆时间',
  `emailpassed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '邮箱验证标识符',
  `verify` varchar(10) DEFAULT NULL COMMENT '邮件验证码',
  `verify_create_time` int(11) DEFAULT NULL COMMENT '邮件验证码生成时间',
  `mobilepassed` tinyint(1) DEFAULT '0' COMMENT '手机验证标识',
  `bind_verify` varchar(10) DEFAULT NULL COMMENT '手机绑定验证码',
  `view_info` text NOT NULL COMMENT '资料展示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%deal_cate`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%deal_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `brief` text NOT NULL,
  `pid` int(11) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `sort` int(11) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT '分类icon',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `%DB_PREFIX%deal_cate`
--

INSERT INTO `%DB_PREFIX%deal_cate` (`id`, `name`, `brief`, `pid`, `is_delete`, `is_effect`, `sort`, `uname`, `icon`) VALUES
(1, '信用认证标', '这个有意义吗？', 0, 0, 1, 10, '', './public/attachment/201209/10/11/504d5d393a3a1.jpg'),
(2, '实地认证标', '', 0, 0, 1, 9, '', './public/attachment/201407/30/14/53d88b6a8c0d9.png'),
(3, '机构担保标', '', 0, 0, 1, 3, '', './public/attachment/201407/30/14/53d88c14b18c2.png'),
(4, '智能理财标', '', 0, 0, 1, 4, '', './public/attachment/201212/25/10/50d90ba803a9d.jpg'),
(6, '旅游考察标', '', 0, 0, 0, 10, '', './public/attachment/201407/30/14/53d88c658ffbf.png');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%deal_city`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%deal_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `pid` int(11) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `seo_title` text NOT NULL,
  `seo_keyword` text NOT NULL,
  `seo_description` text NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `%DB_PREFIX%deal_city`
--

INSERT INTO `%DB_PREFIX%deal_city` (`id`, `name`, `uname`, `is_effect`, `is_delete`, `pid`, `is_default`, `seo_title`, `seo_keyword`, `seo_description`, `sort`) VALUES
(1, '全国', 'quanguo', 1, 0, 0, 1, '', '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%deal_city_link`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%deal_city_link` (
  `deal_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  KEY `idx0` (`deal_id`,`city_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%deal_collect`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%deal_collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `deal_id` (`deal_id`),
  KEY `user_id` (`user_id`),
  KEY `create_time` (`create_time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=264 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%deal_inrepay_repay`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%deal_inrepay_repay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `repay_money` decimal(20,2) NOT NULL COMMENT '提前还款多少',
  `manage_money` decimal(20,2) NOT NULL COMMENT '提前还款管理费',
  `mortgage_fee` decimal(20,2) NOT NULL COMMENT '代换多少抵押物管理费',
  `impose` decimal(20,2) NOT NULL COMMENT '提前还款罚息',
  `repay_time` int(11) NOT NULL,
  `true_repay_time` int(11) NOT NULL,
  `self_money` decimal(20,2) NOT NULL COMMENT '提前还款本金',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%deal_load`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%deal_load` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL COMMENT '借款ID',
  `user_id` int(11) NOT NULL COMMENT '投标人ID',
  `user_name` varchar(50) NOT NULL COMMENT '用户名',
  `money` decimal(20,2) NOT NULL COMMENT '投标金额',
  `create_time` int(11) NOT NULL COMMENT '投标时间',
  `is_repay` tinyint(1) NOT NULL COMMENT '流标是否已返还',
  `is_rebate` tinyint(1) NOT NULL COMMENT '是否已返利',
  `is_auto` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为自动投标 0:收到 1:自动',
  `pP2PBillNo` varchar(30) DEFAULT NULL COMMENT 'IPS P2P订单号 否 由IPS系统生成的唯一流水号',
  `pContractNo` varchar(30) DEFAULT NULL COMMENT '合同号',
  `pMerBillNo` varchar(30) DEFAULT NULL COMMENT '登记债权人时提 交的订单号',
  `is_has_loans` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已经放款给招标人',
  `msg` varchar(100) DEFAULT NULL COMMENT '转账备注  转账失败的原因',
  `is_old_loan` tinyint(1) NOT NULL COMMENT '历史投标 0 不是  1 是 ',
  `create_date` date NOT NULL COMMENT '记录投资日期,方便统计使用',
  `rebate_money` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '返利金额',
  `bid_score` int(11) NOT NULL COMMENT 'Ͷ���õĻ���',
  `ecv_id` int(11) NOT NULL COMMENT '使用的红包的ID',
  `learn_id` int(11) NOT NULL COMMENT '体验金id',
  `learn_money` decimal(20,2) NOT NULL COMMENT '体验金金额',
  `back_learn_money` decimal(20,2) NOT NULL COMMENT '已回收金额',
  `is_winning` tinyint(1) NOT NULL COMMENT '�Ƿ��н� 0δ�н� 1�н�',
  `income_type` tinyint(1) NOT NULL COMMENT '�������� 1��� 2������ 3���� 4��Ʒ',
  `income_value` varchar(100) DEFAULT NULL COMMENT '����ֵ',
  `interestrate_id` int(11) NOT NULL DEFAULT '0' COMMENT '加息券编号',
  `interestrate_money` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '加息券加的利息',
  PRIMARY KEY (`id`),
  KEY `deal_id` (`deal_id`),
  KEY `user_id` (`user_id`),
  KEY `idx_dl_001` (`create_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1045 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%deal_load_repay`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%deal_load_repay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `self_money` decimal(20,2) NOT NULL COMMENT '本金',
  `repay_money` decimal(20,2) NOT NULL COMMENT '还款金额',
  `manage_money` decimal(20,2) NOT NULL COMMENT '管理费',
  `impose_money` decimal(20,2) NOT NULL COMMENT '罚息',
  `repay_time` int(11) NOT NULL COMMENT '预计回款时间',
  `repay_date` date NOT NULL COMMENT '预计回款时间,方便统计',
  `true_repay_time` int(11) NOT NULL COMMENT '实际回款时间',
  `true_repay_date` date NOT NULL COMMENT '实际回款时间,方便统计使用',
  `true_repay_money` decimal(20,2) NOT NULL COMMENT '真实还款本息',
  `true_self_money` decimal(20,2) NOT NULL COMMENT '真实还款本金',
  `interest_money` decimal(20,2) NOT NULL COMMENT '利息   repay_money - self_money',
  `true_interest_money` decimal(20,2) NOT NULL COMMENT '实际利息',
  `true_manage_money` decimal(20,2) NOT NULL COMMENT '实际管理费',
  `true_repay_manage_money` decimal(20,2) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0提前，1准时，2逾期，3严重逾期',
  `is_site_repay` tinyint(1) NOT NULL COMMENT '0自付，1网站垫付 2担保机构垫付',
  `l_key` int(11) NOT NULL DEFAULT '0',
  `u_key` int(11) NOT NULL DEFAULT '0',
  `repay_id` int(11) NOT NULL COMMENT '还款计划ID',
  `load_id` int(11) NOT NULL COMMENT '投标记录ID',
  `has_repay` tinyint(11) NOT NULL DEFAULT '0' COMMENT '0未收到还款，1已收到还款',
  `t_user_id` int(11) NOT NULL COMMENT '承接着会员ID',
  `repay_manage_money` decimal(20,2) NOT NULL COMMENT '从借款者均摊下来的管理费',
  `repay_manage_impose_money` decimal(20,2) NOT NULL COMMENT '借款者均摊下来的逾期管理费',
  `reward_money` decimal(20,2) NOT NULL COMMENT 'Ԥ�ƽ�������',
  `true_reward_money` decimal(20,2) NOT NULL COMMENT 'ʵ�ʽ�������',
  `loantype` int(11) NOT NULL COMMENT '还款方式',
  `manage_interest_money` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT 'Ԥ�����յ�����Ϣ�����,��������ſ�ʱ����',
  `true_manage_interest_money` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT 'ʵ���յ�����Ϣ�����,���ڻ���ʱ����',
  `manage_interest_money_rebate` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT 'Ԥ�Ʒ�Ӷ���(������Ȩ����)',
  `true_manage_interest_money_rebate` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT 'ʵ�ʷ�Ӷ���(������Ȩ����)',
  `t_pMerBillNo` varchar(255) DEFAULT NULL COMMENT 'ips债权转让后新的ips流水号',
  `interestrate_money` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '加息券加的利息',
  `true_total_interest_money` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '真实发放的利息（包含加息券产生的）',
  `mortgage_fee` decimal(20,2) NOT NULL COMMENT '抵押物管理费',
  `true_mortgage_fee` decimal(20,2) NOT NULL COMMENT '抵押物管理费',
  PRIMARY KEY (`id`),
  KEY `idx_1` (`user_id`,`status`),
  KEY `idx_0` (`deal_id`,`user_id`,`l_key`,`u_key`),
  KEY `idx_2` (`deal_id`,`user_id`,`repay_time`,`l_key`,`u_key`),
  KEY `idx_dl_001` (`repay_date`),
  KEY `idx_dl_002` (`true_repay_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1853 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%deal_load_transfer`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%deal_load_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL COMMENT '所投的标',
  `load_id` int(11) NOT NULL COMMENT '债权ID',
  `user_id` int(11) NOT NULL COMMENT '债权人ID',
  `transfer_amount` decimal(20,2) NOT NULL COMMENT '转让价格',
  `load_money` decimal(20,2) NOT NULL COMMENT '投标金额',
  `last_repay_time` int(11) NOT NULL COMMENT '最后还款日期',
  `near_repay_time` int(11) NOT NULL COMMENT '下次还款日',
  `transfer_number` int(11) NOT NULL COMMENT '转让期数',
  `t_user_id` int(11) NOT NULL COMMENT '承接人',
  `transfer_time` int(11) NOT NULL COMMENT '承接时间',
  `create_time` int(11) NOT NULL COMMENT '发布时间',
  `status` tinyint(1) NOT NULL COMMENT '转让状态，0取消 1开始',
  `callback_count` int(11) NOT NULL COMMENT '撤回次数',
  `lock_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '锁定用户id,给用户支付时间,主要用于资金托管',
  `lock_time` int(11) NOT NULL DEFAULT '0' COMMENT '锁定时间,10分钟后,自动解锁;给用户支付时间,主要用于资金托管',
  `ips_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ips处理状态;0:未处理;1:已登记债权转让;2:已转让',
  `ips_bill_no` varchar(30) DEFAULT NULL COMMENT 'IPS P2P订单号 否 由IPS系统生成的唯一流水号',
  `pMerBillNo` varchar(30) DEFAULT NULL COMMENT '商户订单号 商户系统唯一不重复',
  `create_date` date NOT NULL COMMENT '发布时间,日期格式,方便统计',
  `transfer_date` date NOT NULL COMMENT '承接时间,日期格式,方便统计',
  PRIMARY KEY (`id`),
  KEY `idx_0` (`deal_id`,`user_id`),
  KEY `idx_1` (`deal_id`,`user_id`,`status`),
  KEY `idx_2` (`id`,`transfer_amount`,`create_time`),
  KEY `idx_3` (`deal_id`,`status`,`t_user_id`),
  KEY `idx_dlt_001` (`create_date`),
  KEY `idx_dlt_002` (`transfer_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='债权转让' AUTO_INCREMENT=121 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%deal_loan_type`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%deal_loan_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `brief` text NOT NULL,
  `pid` int(11) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `sort` int(11) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT '分类icon',
  `applyto` varchar(255) NOT NULL COMMENT '适用人群',
  `condition` text NOT NULL COMMENT '申请条件',
  `credits` text NOT NULL COMMENT '必要申请资料',
  `is_quota` tinyint(1) NOT NULL COMMENT '�������  0�� 1��',
  `costsetting` text NOT NULL COMMENT '费用设置（VIP等级）',
  `levelsetting` text NOT NULL COMMENT '费用设置2（用户等级）',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `%DB_PREFIX%deal_loan_type`
--

INSERT INTO `%DB_PREFIX%deal_loan_type` (`id`, `name`, `brief`, `pid`, `is_delete`, `is_effect`, `sort`, `uname`, `icon`, `applyto`, `condition`, `credits`, `is_quota`, `costsetting`, `levelsetting`) VALUES
(1, '短期周转', '', 0, 0, 1, 10, '', './public/images/dealtype/dqzz.png', '', '', 'a:1:{i:0;s:12:"credit_house";}', 1, '2|2.5|0.2|0.09|8|1.1|1.1\n3|2|0.15|0.08|6|1.2|1.2\n4|1|0.1|0.07|4|1.3|1.3\n5|0|0.05|0.06|2|1.4|1.4', '1|5|0.3|0.6|15|1|1\n2|3|0.29|0.5|14|2|1.5\n3|2.5|0.28|0.4|13|3|2\n4|2|0.27|0.3|12|4|2.5\n5|1.5|0.26|0.2|11|5|3\n6|1|0.25|0.1|10|6|3.5\n7|0|0.24|0|9|7|4'),
(2, '购房借款', '', 0, 0, 1, 9, '', './public/images/dealtype/gf.png', '', '22-55周岁的中国公民\r\n在现单位工作满3个月\r\n月收入2000以上', 'N;', 1, '2|10|0.5|0.8|0.8|1.5|1.1\n3|5|0.45|0.6|0.6|2|1.2\n4|2.5|0.4|0.4|0.4|2.5|1.3\n5|1|0.35|0.2|0.2|3|1.4', '1|4|0.5|0.7|15|1|1\n2|3|0.29|0.5|14|2|1.5\n3|2.5|0.28|0.4|13|3|2\n4|2|0.27|0.3|12|4|2.5\n5|1.5|0.26|0.2|11|5|3\n6|1|0.25|0.1|10|6|3.5\n7|0|0.24|0|9|7|4'),
(3, '装修借款', '', 0, 0, 1, 8, '', './public/images/dealtype/zx.png', '', '', 'a:1:{i:0;s:18:"credit_graducation";}', 1, '2|6|2|0.1|5|0.5|0.5\n3|5|1.5|0.05|4|1|1\n4|3|1|0.04|3|1.5|1.5\n5|2|0.5|0.02|2|2|2', '1|6|0.4|0.7|15|1|1\n2|3|0.29|0.5|14|2|1.5\n3|2.5|0.28|0.4|13|3|2\n4|2|0.27|0.3|12|4|2.5\n5|1.5|0.26|0.2|11|5|3\n6|1|0.25|0.1|10|6|3.5\n7|0|0.24|0|9|7|4'),
(4, '个人消费', '', 0, 0, 0, 7, '', './public/images/dealtype/grxf.png', '', '', 'N;', 1, '2|2.55|0.22|0.33|11|1.1|1.1\n3|2.3|0.21|0.28|10|1.2|1.2\n4|1.2|0.2|0.17|9|1.3|1.3\n5|0|0.19|0.06|8|1.4|1.4', '1|5|0.3|0.6|15|1|1\n2|3|0.29|0.5|14|2|1.5\n3|2.5|0.28|0.4|13|3|2\n4|2|0.27|0.3|12|4|2.5\n5|1.5|0.26|0.2|11|5|3\n6|1|0.25|0.1|10|6|3.5\n7|0|0.24|0|9|7|4'),
(5, '婚礼筹备', '', 0, 0, 1, 6, '', './public/images/dealtype/hlcb.png', '', '1111111111', 'N;', 1, '2|5.5|0.5|0.15|9|1.3|1.3\n3|4.5|0.4|0.1|8|1.4|1.4\n4|3.5|0.3|0.05|7|1.5|1.5\n5|1.5|0.2|0.01|6|1.6|1.6', '1|10|3|0.6|15|1|1\n2|3|0.29|0.5|14|2|1.5\n3|2.5|0.28|0.4|13|3|2\n4|2|0.27|0.3|12|4|2.5\n5|1.5|0.26|0.2|11|5|3\n6|1|0.25|0.1|10|6|3.5\n7|0|0.24|0|9|7|4'),
(6, '教育培训', '', 0, 0, 0, 5, '', './public/images/dealtype/jypx.png', '', '', 'N;', 1, '2|2.5|0.39|0.29|5|1.21|1.21\n3|2|0.38|0.28|4|1.22|1.22\n4|1.5|0.37|0.27|3|1.23|1.23\n5|1|0.35|0.26|2|1.24|1.24', '1|5|0.3|0.6|15|1|1\n2|3|0.29|0.5|14|2|1.5\n3|2.5|0.28|0.4|13|3|2\n4|2|0.27|0.3|12|4|2.5\n5|1.5|0.26|0.2|11|5|3\n6|1|0.25|0.1|10|6|3.5\n7|0|0.24|0|9|7|4'),
(7, '汽车消费', '', 0, 0, 0, 4, '', './public/images/dealtype/qcxf.png', '', '', 'N;', 1, '2|3|0.28|0.1|8|1|1.5\n3|2.5|0.27|0.09|7|1.1|1.6\n4|2|0.26|0.08|6|1.2|1.7\n5|1|0.25|0.07|5|1.3|1.8', '1|5|0.3|0.6|15|1|1\n2|3|0.29|0.5|14|2|1.5\n3|2.5|0.28|0.4|13|3|2\n4|2|0.27|0.3|12|4|2.5\n5|1.5|0.26|0.2|11|5|3\n6|1|0.25|0.1|10|6|3.5\n7|0|0.24|0|9|7|4'),
(8, '投资创业', '', 0, 0, 1, 3, '', './public/images/dealtype/tzcy.png', '', '', 'N;', 1, '2|3.5|0.9|0.05|12|1.1|1.1\n3|3|0.8|0.04|10|1.2|1.2\n4|2.5|0.7|0.03|8|1.3|1.3\n5|2|0.6|0.02|6|1.4|1.4', '1|15|1.3|1.6|15|1|1\n2|3|0.29|0.5|14|2|1.5\n3|2.5|0.28|0.4|13|3|2\n4|2|0.27|0.3|12|4|2.5\n5|1.5|0.26|0.2|11|5|3\n6|1|0.25|0.1|10|6|3.5\n7|0|0.24|0|9|7|4'),
(9, '医疗支出', '44', 0, 0, 1, 2, '', './public/images/dealtype/ylzc.png', '', '', 'N;', 1, '2|5|0.3|0.9|10|1.4|1.4\n3|4|0.28|0.8|9|1.5|1.5\n4|3|0.25|0.7|5|1.6|1.6\n5|2|0.2|0.6|3|1.7|1.7', '1|8|0.35|0.6|15|1|1\n2|3|0.29|0.5|14|2|1.5\n3|2.5|0.28|0.4|13|3|2\n4|2|0.27|0.3|12|4|2.5\n5|1.5|0.26|0.2|11|5|3\n6|1|0.25|0.1|10|6|3.5\n7|0|0.24|0|9|7|4'),
(10, '其他借款', '', 0, 1, 1, 1, '', './public/images/dealtype/other.png', '', '', '', 1, '\r\n2|2.5|0.29|0.09|8|1.1|1.1\r\n3|2|0.28|0.08|6|1.2|1.2\r\n4|1|0.27|0.07|4|1.3|1.3\r\n5|0|0.25|0.06|2|1.4|1.4', '1|5|0.3|0.1|15|1|1\r\n2|3|0.3|0.1|14|1|1\r\n3|2.5|0.29|0.1|13|1|1\r\n4|2|0.29|0.1|12|1|1\r\n5|1.5|0.28|0.1|11|1|1\r\n6|1|0.28|0.1|10|1|1\r\n7|0|0.27|0.1|9|1|1');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%deal_msgboard`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%deal_msgboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL COMMENT '�û���',
  `ID_NO` varchar(255) NOT NULL COMMENT '���֤��',
  `mobile` varchar(20) NOT NULL COMMENT '�绰',
  `money` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '�����',
  `time_limit` int(11) NOT NULL COMMENT '�������',
  `usefulness` varchar(255) NOT NULL COMMENT '�����;',
  `create_time` datetime NOT NULL COMMENT '����ʱ��',
  `status` tinyint(2) unsigned zerofill NOT NULL COMMENT '״̬:0δ���� 1�Ѵ��� 2�Ѿܾ�',
  `unit` tinyint(2) NOT NULL COMMENT '��λ:0:�� 1:��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%deal_msg_list`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%deal_msg_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dest` varchar(255) NOT NULL,
  `send_type` tinyint(1) NOT NULL,
  `content` text NOT NULL,
  `send_time` int(11) NOT NULL,
  `is_send` tinyint(1) NOT NULL,
  `create_time` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `result` text NOT NULL,
  `is_success` tinyint(1) NOT NULL,
  `is_html` tinyint(1) NOT NULL,
  `title` text NOT NULL,
  `is_youhui` tinyint(1) NOT NULL,
  `youhui_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx0` (`id`,`is_send`,`send_type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4720 ;

--
-- 转存表中的数据 `%DB_PREFIX%deal_msg_list`
--

INSERT INTO `%DB_PREFIX%deal_msg_list` (`id`, `dest`, `send_type`, `content`, `send_time`, `is_send`, `create_time`, `user_id`, `result`, `is_success`, `is_html`, `title`, `is_youhui`, `youhui_id`) VALUES
(4718, '13788888888', 0, '你的手机号为13788888888,验证码为179307', 0, 0, 1455434524, 0, '', 0, 0, '你的手机号为13788888888,验证码为179307', 0, 0),
(4719, '13788888888', 0, '你的手机号为13788888888,验证码为550048', 1455434659, 1, 1455434659, 1, '', 0, 0, '你的手机号为13788888888,验证码为550048', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%deal_order`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%deal_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `pay_status` tinyint(1) NOT NULL,
  `total_price` decimal(20,2) NOT NULL,
  `pay_amount` decimal(20,2) NOT NULL,
  `delivery_status` tinyint(1) NOT NULL,
  `order_status` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `return_total_score` int(11) NOT NULL,
  `refund_amount` decimal(20,2) NOT NULL COMMENT '已退款总额',
  `admin_memo` text NOT NULL,
  `memo` text NOT NULL,
  `region_lv1` int(11) NOT NULL,
  `region_lv2` int(11) NOT NULL,
  `region_lv3` int(11) NOT NULL,
  `region_lv4` int(11) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `consignee` varchar(255) NOT NULL,
  `deal_total_price` decimal(20,2) NOT NULL,
  `discount_price` decimal(20,2) NOT NULL,
  `delivery_fee` decimal(20,2) NOT NULL,
  `ecv_money` decimal(20,2) NOT NULL,
  `account_money` decimal(20,2) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `payment_fee` decimal(20,2) NOT NULL,
  `return_total_money` decimal(20,2) NOT NULL,
  `extra_status` tinyint(1) NOT NULL,
  `after_sale` tinyint(1) NOT NULL,
  `refund_money` decimal(20,2) NOT NULL COMMENT '弃用',
  `bank_id` varchar(255) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `deal_ids` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `refund_status` tinyint(1) NOT NULL COMMENT '0:不需退款 1:有退款申请 2:已处理',
  `retake_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_sn` (`order_sn`),
  FULLTEXT KEY `deal_ids` (`deal_ids`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=958 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%deal_order_item`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%deal_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `unit_price` decimal(20,4) NOT NULL COMMENT '单价',
  `total_price` decimal(20,4) NOT NULL COMMENT '总价',
  `delivery_status` tinyint(1) NOT NULL,
  `name` text NOT NULL,
  `return_score` int(11) NOT NULL,
  `return_total_score` int(11) NOT NULL,
  `attr` varchar(255) NOT NULL,
  `verify_code` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL,
  `return_money` decimal(20,4) NOT NULL COMMENT '返现的单价',
  `return_total_money` decimal(20,4) NOT NULL,
  `buy_type` tinyint(1) NOT NULL,
  `sub_name` varchar(255) NOT NULL,
  `attr_str` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=79 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%deal_order_log`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%deal_order_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_info` text NOT NULL,
  `log_time` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%deal_payment`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%deal_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%deal_quota_submit`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%deal_quota_submit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `titlecolor` varchar(10) NOT NULL COMMENT '标题颜色',
  `name` varchar(255) NOT NULL COMMENT '贷款标题',
  `sub_name` varchar(255) NOT NULL COMMENT '短名称',
  `view_info` text NOT NULL COMMENT '资料展示',
  `citys` text NOT NULL COMMENT '城市（序列化）',
  `cate_id` int(11) NOT NULL COMMENT '贷款分类',
  `agency_id` int(11) NOT NULL COMMENT '担保机构',
  `warrant` tinyint(4) NOT NULL,
  `guarantor_margin_amt` decimal(20,2) NOT NULL COMMENT '担保保证金',
  `guarantor_amt` decimal(20,2) NOT NULL COMMENT '担保金额',
  `guarantor_pro_fit_amt` decimal(20,2) NOT NULL COMMENT '担保收益',
  `icon` varchar(255) NOT NULL COMMENT '图标',
  `type_id` int(11) NOT NULL COMMENT '借款用途',
  `borrow_amount` decimal(20,2) NOT NULL COMMENT '申请额度',
  `guarantees_amt` decimal(20,2) NOT NULL COMMENT '借款保证金',
  `rate` decimal(10,2) NOT NULL COMMENT '借款利率',
  `services_fee` varchar(20) NOT NULL COMMENT '成交服务费',
  `manage_fee` varchar(20) NOT NULL COMMENT '借款者管理费',
  `user_loan_manage_fee` varchar(20) NOT NULL COMMENT '投资者管理费',
  `manage_impose_fee_day1` varchar(20) NOT NULL COMMENT '普通逾期管理费',
  `manage_impose_fee_day2` varchar(20) NOT NULL COMMENT '逾期管理费总额',
  `impose_fee_day1` varchar(20) NOT NULL COMMENT '普通逾期罚息',
  `impose_fee_day2` varchar(20) NOT NULL COMMENT '严重逾期罚息',
  `user_load_transfer_fee` varchar(20) NOT NULL COMMENT '债权转让管理费',
  `user_bid_rebate` varchar(20) NOT NULL COMMENT '投资人返利',
  `compensate_fee` varchar(20) NOT NULL COMMENT '提前还款补偿',
  `generation_position` varchar(20) NOT NULL COMMENT '申请延期比率',
  `description` text NOT NULL COMMENT '借款内容',
  `risk_rank` tinyint(4) NOT NULL COMMENT '风险等级',
  `risk_security` text NOT NULL COMMENT '风险控制',
  `is_effect` tinyint(1) NOT NULL COMMENT '默认是否有效',
  `status` tinyint(4) NOT NULL COMMENT '0待处理，1审核通过，2审核失败',
  `op_memo` text NOT NULL COMMENT '操作备注',
  `bad_msg` text NOT NULL COMMENT '失败原因',
  `create_time` int(11) NOT NULL COMMENT '添加时间',
  `update_time` int(11) NOT NULL COMMENT '处理时间',
  `attachment` text NOT NULL COMMENT '合同附件',
  `tattachment` text NOT NULL COMMENT '转让合同附件',
  `use_ecv` tinyint(4) NOT NULL COMMENT '是否使用红包',
  PRIMARY KEY (`id`),
  KEY `idx0` (`user_id`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='授信额度申请' AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%deal_repay`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%deal_repay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `repay_money` decimal(20,2) NOT NULL COMMENT '还款金额',
  `manage_money` decimal(20,2) NOT NULL COMMENT '管理费',
  `impose_money` decimal(20,2) NOT NULL COMMENT '罚息',
  `repay_time` int(11) NOT NULL,
  `true_repay_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0提前,1准时还款，2逾期还款 3严重逾期  前台在这基础上+1',
  `l_key` int(11) NOT NULL DEFAULT '0' COMMENT '还款顺序 0 开始',
  `has_repay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未还,1已还 2部分还款',
  `manage_impose_money` decimal(20,2) NOT NULL COMMENT '逾期管理费',
  `is_site_bad` tinyint(1) NOT NULL COMMENT '是否坏账  0不是，1坏账 管理员看到的',
  `repay_date` date NOT NULL COMMENT '预期还款日期,日期格式方便统计',
  `true_repay_date` date NOT NULL COMMENT '实际还款日期,日期格式方便统计',
  `true_repay_money` double(20,2) NOT NULL DEFAULT '0.00' COMMENT '实还金额',
  `true_self_money` decimal(20,2) NOT NULL COMMENT '实际还款本金',
  `interest_money` decimal(20,2) NOT NULL COMMENT '待还利息   repay_money - self_money',
  `true_interest_money` decimal(20,2) NOT NULL COMMENT '实际还利息',
  `true_manage_money` decimal(20,2) NOT NULL COMMENT '实际管理费',
  `self_money` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '需还本金',
  `loantype` int(11) NOT NULL COMMENT '还款方式',
  `manage_money_rebate` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT 'Ԥ���յ��ģ�����ѷ�Ӷ,����ſ�ʱ����',
  `true_manage_money_rebate` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT 'ʵ���յ��ģ�����ѷ�Ӷ,ÿ�ڻ���ʱ����',
  `get_manage` tinyint(1) NOT NULL COMMENT '是否已收取管理费',
  `mortgage_fee` decimal(20,2) NOT NULL COMMENT '抵押物管理费',
  `true_mortgage_fee` decimal(20,2) NOT NULL COMMENT '抵押物管理费',
  PRIMARY KEY (`id`),
  KEY `idx_0` (`user_id`,`status`),
  KEY `l_key` (`l_key`),
  KEY `idx_1` (`deal_id`,`l_key`),
  KEY `idx_dr_001` (`true_repay_date`),
  KEY `idx_dr_002` (`repay_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=733 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%deal_repay_log`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%deal_repay_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `repay_id` int(11) NOT NULL COMMENT '账单ID',
  `log` text NOT NULL COMMENT '日志',
  `adm_id` int(11) NOT NULL COMMENT '操作管理员',
  `user_id` int(11) NOT NULL COMMENT '操作用户',
  `create_time` int(11) NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=293 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%debit_conf`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%debit_conf` (
  `borrow_amount_cfg` text NOT NULL COMMENT '借款金额 序列化',
  `loantype` int(11) NOT NULL COMMENT '还款类型',
  `services_fee` varchar(20) NOT NULL COMMENT '服务费率',
  `manage_fee` varchar(20) NOT NULL COMMENT '借款者管理费',
  `manage_impose_fee_day1` varchar(20) NOT NULL COMMENT '普通逾期管理费',
  `manage_impose_fee_day2` varchar(20) NOT NULL COMMENT '严重逾期管理费',
  `impose_fee_day1` varchar(20) NOT NULL COMMENT '普通逾期费率',
  `impose_fee_day2` varchar(20) NOT NULL COMMENT '严重逾期费率',
  `rate_cfg` tinyint(1) NOT NULL COMMENT '利率 0取最低 1取中间值 2取最高',
  `enddate` int(11) NOT NULL COMMENT '筹标日期'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `%DB_PREFIX%debit_conf`
--

INSERT INTO `%DB_PREFIX%debit_conf` (`borrow_amount_cfg`, `loantype`, `services_fee`, `manage_fee`, `manage_impose_fee_day1`, `manage_impose_fee_day2`, `impose_fee_day1`, `impose_fee_day2`, `rate_cfg`, `enddate`) VALUES
('a:1:{i:0;s:4:"1000";}', 0, '10', '10', '10', '10', '0.1', '0.1', 0, 20);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%demotion_record`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%demotion_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '会员ID',
  `original_vip_id` int(11) NOT NULL COMMENT 'VIP原等级ID',
  `now_vip_id` int(11) NOT NULL COMMENT '降级后等级ID',
  `causes` varchar(255) NOT NULL COMMENT '降级原因',
  `start_date` date NOT NULL COMMENT '降级开始日期',
  `eresume_date` date NOT NULL COMMENT '预计恢复日期',
  `arecovery_date` date NOT NULL COMMENT '实际恢复日期',
  `status` tinyint(1) NOT NULL COMMENT '状态(0降级、1已恢复等级)',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='VIP降级记录表' AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%ecv`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%ecv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `use_limit` int(11) NOT NULL,
  `use_count` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `begin_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `money` decimal(20,2) NOT NULL,
  `ecv_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unk_sn` (`sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='优惠券列表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%ecv_type`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%ecv_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `money` decimal(20,2) NOT NULL,
  `use_limit` int(11) NOT NULL,
  `begin_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `gen_count` int(11) NOT NULL,
  `send_type` tinyint(1) NOT NULL COMMENT '发放方式 0:管理员手动发放 1:会员积分兑换 2:序列号兑换',
  `exchange_score` int(11) NOT NULL,
  `exchange_limit` int(11) NOT NULL,
  `exchange_sn` varchar(20) DEFAULT NULL COMMENT '红包兑换的序列号',
  `use_type` tinyint(1) NOT NULL COMMENT '使用限制 0不限 1 pc端 2 手机端',
  PRIMARY KEY (`id`),
  UNIQUE KEY `exchange_sn` (`exchange_sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='优惠券类型' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%email_verify_code`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%email_verify_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `verify_code` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `create_time` int(11) NOT NULL,
  `client_ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `%DB_PREFIX%email_verify_code`
--

INSERT INTO `%DB_PREFIX%email_verify_code` (`id`, `verify_code`, `email`, `create_time`, `client_ip`) VALUES
(1, '542292', 're788@qq.com', 1425509649, '27.151.63.196'),
(2, '773913', 'lym99@qq.com', 1425682562, '27.151.64.158'),
(3, '319088', '1248745@qq.com', 1426010304, '27.151.61.54'),
(4, '168726', 'fdfd56@qq.com', 1426010368, '110.80.172.34'),
(5, '617683', '12fd3456@qq.com', 1426010599, '110.80.172.34'),
(6, '584122', 'fdfds715@qq.com', 1426025433, '110.80.172.34'),
(7, '863661', 'adb@a.com', 1426026172, '27.151.61.54'),
(8, '379341', 'bad@d.com', 1426026489, '27.151.61.54'),
(9, '641646', '12fdfdas45@qq.com', 1426026699, '110.80.172.34'),
(10, '871135', 'fder4356@qq.com', 1426028098, '27.151.61.54'),
(11, '900796', 'fdgr456@qq.com', 1426032409, '110.80.172.34'),
(12, '299924', '382272420@qq.com', 1426099003, '110.87.47.136'),
(13, '418481', 'aa@aa.com', 1426131144, '110.87.47.136'),
(14, '805638', '98878@qq.com', 1426532606, '27.151.60.169'),
(15, '687221', 'bb@bb.com', 1426727761, '27.151.100.218'),
(16, '590544', 're88898@qq.com', 1426786145, '27.151.61.236'),
(17, '417170', '', 1453172855, '66.249.66.132');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%expression`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%expression` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'tusiji',
  `emotion` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=135 ;

--
-- 转存表中的数据 `%DB_PREFIX%expression`
--

INSERT INTO `%DB_PREFIX%expression` (`id`, `title`, `type`, `emotion`, `filename`) VALUES
(19, '傲慢', 'qq', '[傲慢]', 'aoman.gif'),
(20, '白眼', 'qq', '[白眼]', 'baiyan.gif'),
(21, '鄙视', 'qq', '[鄙视]', 'bishi.gif'),
(22, '闭嘴', 'qq', '[闭嘴]', 'bizui.gif'),
(23, '擦汗', 'qq', '[擦汗]', 'cahan.gif'),
(24, '菜刀', 'qq', '[菜刀]', 'caidao.gif'),
(25, '差劲', 'qq', '[差劲]', 'chajin.gif'),
(26, '欢庆', 'qq', '[欢庆]', 'cheer.gif'),
(27, '虫子', 'qq', '[虫子]', 'chong.gif'),
(28, '呲牙', 'qq', '[呲牙]', 'ciya.gif'),
(29, '捶打', 'qq', '[捶打]', 'da.gif'),
(30, '大便', 'qq', '[大便]', 'dabian.gif'),
(31, '大兵', 'qq', '[大兵]', 'dabing.gif'),
(32, '大叫', 'qq', '[大叫]', 'dajiao.gif'),
(33, '大哭', 'qq', '[大哭]', 'daku.gif'),
(34, '蛋糕', 'qq', '[蛋糕]', 'dangao.gif'),
(35, '发怒', 'qq', '[发怒]', 'fanu.gif'),
(36, '刀', 'qq', '[刀]', 'dao.gif'),
(37, '得意', 'qq', '[得意]', 'deyi.gif'),
(38, '凋谢', 'qq', '[凋谢]', 'diaoxie.gif'),
(39, '饿', 'qq', '[饿]', 'er.gif'),
(40, '发呆', 'qq', '[发呆]', 'fadai.gif'),
(41, '发抖', 'qq', '[发抖]', 'fadou.gif'),
(42, '饭', 'qq', '[饭]', 'fan.gif'),
(43, '飞吻', 'qq', '[飞吻]', 'feiwen.gif'),
(44, '奋斗', 'qq', '[奋斗]', 'fendou.gif'),
(45, '尴尬', 'qq', '[尴尬]', 'gangga.gif'),
(46, '给力', 'qq', '[给力]', 'geili.gif'),
(47, '勾引', 'qq', '[勾引]', 'gouyin.gif'),
(48, '鼓掌', 'qq', '[鼓掌]', 'guzhang.gif'),
(49, '哈哈', 'qq', '[哈哈]', 'haha.gif'),
(50, '害羞', 'qq', '[害羞]', 'haixiu.gif'),
(51, '哈欠', 'qq', '[哈欠]', 'haqian.gif'),
(52, '花', 'qq', '[花]', 'hua.gif'),
(53, '坏笑', 'qq', '[坏笑]', 'huaixiao.gif'),
(54, '挥手', 'qq', '[挥手]', 'huishou.gif'),
(55, '回头', 'qq', '[回头]', 'huitou.gif'),
(56, '激动', 'qq', '[激动]', 'jidong.gif'),
(57, '惊恐', 'qq', '[惊恐]', 'jingkong.gif'),
(58, '惊讶', 'qq', '[惊讶]', 'jingya.gif'),
(59, '咖啡', 'qq', '[咖啡]', 'kafei.gif'),
(60, '可爱', 'qq', '[可爱]', 'keai.gif'),
(61, '可怜', 'qq', '[可怜]', 'kelian.gif'),
(62, '磕头', 'qq', '[磕头]', 'ketou.gif'),
(63, '示爱', 'qq', '[示爱]', 'kiss.gif'),
(64, '酷', 'qq', '[酷]', 'ku.gif'),
(65, '难过', 'qq', '[难过]', 'kuaikule.gif'),
(66, '骷髅', 'qq', '[骷髅]', 'kulou.gif'),
(67, '困', 'qq', '[困]', 'kun.gif'),
(68, '篮球', 'qq', '[篮球]', 'lanqiu.gif'),
(69, '冷汗', 'qq', '[冷汗]', 'lenghan.gif'),
(70, '流汗', 'qq', '[流汗]', 'liuhan.gif'),
(71, '流泪', 'qq', '[流泪]', 'liulei.gif'),
(72, '礼物', 'qq', '[礼物]', 'liwu.gif'),
(73, '爱心', 'qq', '[爱心]', 'love.gif'),
(74, '骂人', 'qq', '[骂人]', 'ma.gif'),
(75, '不开心', 'qq', '[不开心]', 'nanguo.gif'),
(76, '不好', 'qq', '[不好]', 'no.gif'),
(77, '很好', 'qq', '[很好]', 'ok.gif'),
(78, '佩服', 'qq', '[佩服]', 'peifu.gif'),
(79, '啤酒', 'qq', '[啤酒]', 'pijiu.gif'),
(80, '乒乓', 'qq', '[乒乓]', 'pingpang.gif'),
(81, '撇嘴', 'qq', '[撇嘴]', 'pizui.gif'),
(82, '强', 'qq', '[强]', 'qiang.gif'),
(83, '亲亲', 'qq', '[亲亲]', 'qinqin.gif'),
(84, '出丑', 'qq', '[出丑]', 'qioudale.gif'),
(85, '足球', 'qq', '[足球]', 'qiu.gif'),
(86, '拳头', 'qq', '[拳头]', 'quantou.gif'),
(87, '弱', 'qq', '[弱]', 'ruo.gif'),
(88, '色', 'qq', '[色]', 'se.gif'),
(89, '闪电', 'qq', '[闪电]', 'shandian.gif'),
(90, '胜利', 'qq', '[胜利]', 'shengli.gif'),
(91, '衰', 'qq', '[衰]', 'shuai.gif'),
(92, '睡觉', 'qq', '[睡觉]', 'shuijiao.gif'),
(93, '太阳', 'qq', '[太阳]', 'taiyang.gif'),
(96, '啊', 'tusiji', '[啊]', 'aa.gif'),
(97, '暗爽', 'tusiji', '[暗爽]', 'anshuang.gif'),
(98, 'byebye', 'tusiji', '[byebye]', 'baibai.gif'),
(99, '不行', 'tusiji', '[不行]', 'buxing.gif'),
(100, '戳眼', 'tusiji', '[戳眼]', 'chuoyan.gif'),
(101, '很得意', 'tusiji', '[很得意]', 'deyi.gif'),
(102, '顶', 'tusiji', '[顶]', 'ding.gif'),
(103, '抖抖', 'tusiji', '[抖抖]', 'douxiong.gif'),
(104, '哼', 'tusiji', '[哼]', 'heng.gif'),
(105, '挥汗', 'tusiji', '[挥汗]', 'huihan.gif'),
(106, '昏迷', 'tusiji', '[昏迷]', 'hunmi.gif'),
(107, '互拍', 'tusiji', '[互拍]', 'hupai.gif'),
(108, '瞌睡', 'tusiji', '[瞌睡]', 'keshui.gif'),
(109, '笼子', 'tusiji', '[笼子]', 'longzi.gif'),
(110, '听歌', 'tusiji', '[听歌]', 'music.gif'),
(111, '奶瓶', 'tusiji', '[奶瓶]', 'naiping.gif'),
(112, '扭背', 'tusiji', '[扭背]', 'niubei.gif'),
(113, '拍砖', 'tusiji', '[拍砖]', 'paizhuan.gif'),
(114, '飘过', 'tusiji', '[飘过]', 'piaoguo.gif'),
(115, '揉脸', 'tusiji', '[揉脸]', 'roulian.gif'),
(116, '闪闪', 'tusiji', '[闪闪]', 'shanshan.gif'),
(117, '生日', 'tusiji', '[生日]', 'shengri.gif'),
(118, '摊手', 'tusiji', '[摊手]', 'tanshou.gif'),
(119, '躺坐', 'tusiji', '[躺坐]', 'tanzuo.gif'),
(120, '歪头', 'tusiji', '[歪头]', 'waitou.gif'),
(121, '我踢', 'tusiji', '[我踢]', 'woti.gif'),
(122, '无聊', 'tusiji', '[无聊]', 'wuliao.gif'),
(123, '醒醒', 'tusiji', '[醒醒]', 'xingxing.gif'),
(124, '睡了', 'tusiji', '[睡了]', 'xixishui.gif'),
(125, '旋转', 'tusiji', '[旋转]', 'xuanzhuan.gif'),
(126, '摇晃', 'tusiji', '[摇晃]', 'yaohuang.gif'),
(127, '耶', 'tusiji', '[耶]', 'yeah.gif'),
(128, '郁闷', 'tusiji', '[郁闷]', 'yumen.gif'),
(129, '晕厥', 'tusiji', '[晕厥]', 'yunjue.gif'),
(130, '砸', 'tusiji', '[砸]', 'za.gif'),
(131, '震荡', 'tusiji', '[震荡]', 'zhendang.gif'),
(132, '撞墙', 'tusiji', '[撞墙]', 'zhuangqiang.gif'),
(133, '转头', 'tusiji', '[转头]', 'zhuantou.gif'),
(134, '抓墙', 'tusiji', '[抓墙]', 'zhuaqiang.gif');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%generation_repay`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%generation_repay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL,
  `repay_id` int(11) NOT NULL COMMENT '第几期',
  `admin_id` int(11) NOT NULL COMMENT '管理员ID',
  `agency_id` int(11) NOT NULL COMMENT '担保机构ID',
  `self_money` decimal(20,2) NOT NULL,
  `interest_money` decimal(20,2) NOT NULL,
  `repay_money` decimal(20,2) NOT NULL COMMENT '代还多少本息',
  `manage_money` decimal(20,2) NOT NULL COMMENT '代换多少管理费',
  `mortgage_fee` decimal(20,2) NOT NULL COMMENT '代换多少抵押物管理费',
  `impose_money` decimal(20,2) NOT NULL COMMENT '代还多少罚息',
  `manage_impose_money` decimal(20,2) NOT NULL COMMENT '代换多少逾期管理费',
  `total_money_fee` decimal(20,2) NOT NULL COMMENT '�渶��Ϣ',
  `fee_day` int(11) NOT NULL COMMENT '�渶����',
  `create_time` int(11) NOT NULL COMMENT '代还时间',
  `create_date` date NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0待收款 1已收款 ',
  `memo` text NOT NULL COMMENT '操作备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='代还款记录' AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%generation_repay_submit`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%generation_repay_submit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT '代还多少本息',
  `money` decimal(20,2) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 未处理 1续约成功 2续约失败',
  `memo` text NOT NULL,
  `op_memo` text NOT NULL COMMENT '操作备注',
  `create_time` int(11) NOT NULL COMMENT '代还时间',
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='代还款申请' AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%gift_record`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%gift_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL COMMENT '借款ID',
  `load_id` int(11) NOT NULL COMMENT '投标记录ID',
  `reward_name` varchar(100) NOT NULL COMMENT '奖励名称',
  `user_id` int(11) NOT NULL COMMENT '所属人ID',
  `gift_type` tinyint(1) NOT NULL COMMENT '收益类型1.红包、2.收益率、3.积分、4.礼品',
  `gift_value` varchar(100) NOT NULL COMMENT '收益值 红包为金额、收益率为百分比、积分为数值、礼品为礼品ID ',
  `status` tinyint(1) NOT NULL COMMENT '发放状态 0未发放，1已发放',
  `generation_date` date NOT NULL COMMENT '生成时间',
  `release_date` date NOT NULL COMMENT '发放时间',
  `reward_money` decimal(20,2) NOT NULL COMMENT '实际获得金额',
  PRIMARY KEY (`id`),
  KEY `idx_gr_001` (`user_id`,`status`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='投资奖励记录表' AUTO_INCREMENT=113 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%given_record`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%given_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '会员ID',
  `vip_id` int(11) NOT NULL COMMENT 'VIP等级ID',
  `given_name_type` tinyint(1) NOT NULL COMMENT '礼品名称类型 1.生日礼品 2.节日礼品',
  `given_type` tinyint(1) NOT NULL COMMENT '礼品类型 1.红包 2.积分',
  `given_value` int(11) NOT NULL COMMENT '礼品值',
  `given_num` int(11) NOT NULL COMMENT '数量',
  `gift_id` int(11) NOT NULL COMMENT '节日礼品ID',
  `brief` text NOT NULL COMMENT '备注',
  `send_date` date NOT NULL COMMENT '发送日期',
  `send_state` tinyint(1) NOT NULL COMMENT '发送状态 0未发送 1已发送',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='礼金记录列表' AUTO_INCREMENT=229 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%goods`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '商品名称',
  `sub_name` varchar(255) NOT NULL COMMENT '商品简称',
  `cate_id` int(11) NOT NULL COMMENT '分类ID',
  `img` text NOT NULL COMMENT '商品主图',
  `brief` text NOT NULL COMMENT '商品简介',
  `description` text NOT NULL COMMENT '商品描述',
  `sort` int(11) NOT NULL COMMENT '排序',
  `max_bought` int(11) NOT NULL COMMENT '库存数',
  `user_max_bought` int(11) NOT NULL COMMENT '会员最大购买量按件',
  `score` int(11) NOT NULL COMMENT '购买所需积分',
  `is_delivery` tinyint(1) NOT NULL COMMENT '	是否需要配送；0：否; 1：是',
  `is_hot` tinyint(1) NOT NULL COMMENT '热卖',
  `is_new` tinyint(1) NOT NULL COMMENT '最新',
  `is_recommend` tinyint(1) NOT NULL COMMENT '是否推荐',
  `seo_title` text NOT NULL COMMENT 'SEO自定义标题',
  `seo_keyword` text NOT NULL COMMENT 'SEO自定义关键词',
  `seo_description` text NOT NULL COMMENT 'SEO自定义描述',
  `goods_type_id` int(11) NOT NULL COMMENT '商品属性',
  `invented_number` int(11) NOT NULL COMMENT '虚拟购买数',
  `buy_number` int(11) NOT NULL COMMENT '购买人数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%goods_attr`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%goods_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `goods_type_attr_id` int(11) NOT NULL,
  `score` decimal(20,4) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `is_checked` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_type_attr_id` (`goods_type_attr_id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%goods_attr_stock`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%goods_attr_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `attr_cfg` text NOT NULL,
  `stock_cfg` int(11) NOT NULL,
  `attr_str` text NOT NULL,
  `buy_count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%goods_cate`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%goods_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '商品分类名称',
  `is_effect` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `%DB_PREFIX%goods_cate`
--

INSERT INTO `%DB_PREFIX%goods_cate` (`id`, `name`, `is_effect`, `is_delete`, `pid`, `sort`) VALUES
(1, '差旅休闲', 1, 0, 0, 3),
(2, '质尚家居', 1, 0, 0, 4),
(3, '时尚电器', 1, 0, 0, 5),
(4, '精选卡券', 1, 0, 0, 1),
(5, '幸福童年', 1, 0, 0, 2);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%goods_order`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%goods_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(255) NOT NULL COMMENT '订单号',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `goods_name` varchar(255) NOT NULL COMMENT '商品名称',
  `score` int(11) NOT NULL COMMENT ' 所需积分',
  `total_score` int(11) NOT NULL COMMENT ' 所需积分',
  `number` int(11) NOT NULL DEFAULT '1' COMMENT '数量',
  `delivery_sn` varchar(255) NOT NULL COMMENT '快递单号',
  `order_status` tinyint(1) NOT NULL COMMENT '订单状态',
  `user_id` int(11) NOT NULL COMMENT ' 会员ID',
  `ex_time` int(11) NOT NULL COMMENT '兑换时间',
  `delivery_time` int(11) NOT NULL COMMENT '发货时间',
  `delivery_addr` varchar(255) NOT NULL COMMENT '收货地址',
  `delivery_tel` varchar(255) NOT NULL COMMENT '收货电话',
  `delivery_name` varchar(255) NOT NULL COMMENT '收货名称',
  `is_delivery` tinyint(1) NOT NULL,
  `ex_date` date NOT NULL COMMENT '兑换时间YMD',
  `delivery_date` date NOT NULL COMMENT '发货时间Ymd',
  `attr_stock_id` int(11) NOT NULL COMMENT '订单库存属性id',
  `attr` text NOT NULL,
  `delivery_express` varchar(255) NOT NULL COMMENT '快递公司',
  `memo` text NOT NULL COMMENT '用户留言',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=220 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%goods_type`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%goods_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '商品类型名',
  `is_effect` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `%DB_PREFIX%goods_type`
--

INSERT INTO `%DB_PREFIX%goods_type` (`id`, `name`, `is_effect`) VALUES
(1, '手机', 1),
(2, '服装', 1),
(3, '摆件', 1),
(4, '儿童车', 1);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%goods_type_attr`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%goods_type_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '商品属性名',
  `input_type` tinyint(1) NOT NULL,
  `preset_value` text NOT NULL,
  `goods_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `%DB_PREFIX%goods_type_attr`
--

INSERT INTO `%DB_PREFIX%goods_type_attr` (`id`, `name`, `input_type`, `preset_value`, `goods_type_id`) VALUES
(1, '尺码', 0, '', 2),
(2, '颜色', 0, '', 2),
(3, '型号', 0, '', 1),
(4, '颜色', 0, '', 1),
(5, '配件', 0, '', 1),
(9, '颜色', 0, '', 4);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%idcard`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%idcard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) NOT NULL COMMENT '支付接口类名',
  `is_effect` tinyint(1) NOT NULL COMMENT '有效性标识',
  `name` varchar(255) NOT NULL COMMENT '接口名称',
  `description` text NOT NULL COMMENT '描述',
  `config` text NOT NULL COMMENT '序列号后的配置信息',
  `logo` varchar(255) NOT NULL COMMENT '显示的图标',
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付接口表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%interestrate`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%interestrate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `use_limit` int(11) NOT NULL,
  `use_count` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `begin_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `rate` decimal(20,2) NOT NULL,
  `ecv_type_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '转赠id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unk_sn` (`sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='优惠券列表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%interestrate_type`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%interestrate_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `rate` decimal(20,2) NOT NULL,
  `use_limit` int(11) NOT NULL,
  `begin_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `gen_count` int(11) NOT NULL,
  `send_type` tinyint(1) NOT NULL,
  `exchange_score` int(11) NOT NULL,
  `exchange_limit` int(11) NOT NULL,
  `exchange_sn` varchar(20) NOT NULL COMMENT '加息券兑换码',
  `detail` text COMMENT '加息券说明',
  `use_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '使用类型：0 pc端使用 1 手机端使用 2通用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='优惠券类型' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%ips_create_new_acct`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%ips_create_new_acct` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:普通用户%DB_PREFIX%user.id;1:担保用户%DB_PREFIX%deal_agency.id',
  `argMerCode` varchar(6) NOT NULL COMMENT '“平台”账号 否 由IPS颁发的商户号 ',
  `pMerBillNo` varchar(30) NOT NULL DEFAULT '0' COMMENT 'pMerBillNo商户开户流水号 否 商户系统唯一丌重复 针对用户在开户中途中断（开户未完成，但关闭了IPS开 户界面）时，必须重新以相同的商户订单号发起再次开户 ',
  `pIdentType` tinyint(2) DEFAULT '1' COMMENT '证件类型 否 1#身份证，默认：1',
  `pIdentNo` varchar(20) DEFAULT NULL COMMENT '证件号码 否 真实身份证 ',
  `pRealName` varchar(30) DEFAULT NULL COMMENT '姓名 否 真实姓名（中文） ',
  `pMobileNo` varchar(11) DEFAULT NULL COMMENT '手机号 否 用户发送短信 ',
  `pEmail` varchar(50) DEFAULT NULL COMMENT '注册邮箱 否 用于登录账号，IPS系统内唯一丌能重复',
  `pSmDate` date DEFAULT NULL COMMENT '提交日期 否 时间格式“yyyyMMdd”,商户提交日期,。如：20140323 ',
  `pMemo1` varchar(100) DEFAULT NULL COMMENT '备注 是/否',
  `pMemo2` varchar(100) DEFAULT NULL COMMENT '备注 是/否',
  `pMemo3` varchar(100) DEFAULT NULL COMMENT '备注 是/否',
  `pStatus` tinyint(2) DEFAULT NULL COMMENT '开户状态 否 状态：10#开户成功，5#注册超时，9#开户失败',
  `pBankName` varchar(64) DEFAULT NULL COMMENT '银行名称 是/否 pErrCode 返回状态为 MG00000F 时返回，用 户在IPS登记的信息 ',
  `pBkAccName` varchar(50) DEFAULT NULL COMMENT '户名 是/否 pErrCode 返回状态为 MG00000F 时返回，用 户在IPS登记的信息不姓名一致。',
  `pBkAccNo` varchar(4) DEFAULT NULL COMMENT '银行卡账号 是/否 pErrCode 返回状态为 MG00000F 时返回，用 户在IPS登记的信息。返回卡号后4位。 ',
  `pCardStatus` tinyint(1) DEFAULT NULL COMMENT '身份证状态 是/否 pErrCode 返回状态为MG00000F时返回。 是否验证成功 F 未验证，Y 验证通过 验证丌 通过 ',
  `pPhStatus` tinyint(1) DEFAULT NULL COMMENT '手机状态 是/否 pErrCode 返回状态为MG00000F时返回 是否验证成功： F未验 ，Y 验证通过，N验证 丌通过 ',
  `pIpsAcctNo` varchar(30) DEFAULT NULL COMMENT 'IPS托管平台账 户号 是/否 pErrCode 返回状态为 MG00000F 时返回，由 IPS生成颁发的资金账号。 ',
  `pIpsAcctDate` date DEFAULT NULL COMMENT 'IPS开户日期 否 pErrCode 返回状态为 MG00000F 时返回，格 式：yyyymmdd ',
  `pMerCode` varchar(6) DEFAULT NULL COMMENT '“平台”账号 否 由IPS颁发的商户号 ',
  `pErrCode` varchar(8) DEFAULT NULL COMMENT '处理返回状态 否 MG00000F 操作成功； 其他错误：参考自定义错误码 ',
  `pErrMsg` varchar(255) DEFAULT NULL COMMENT '返回信息 是/否 MG00000F 操作成功； 其他错误信息：参考自定义错误码 ',
  `is_callback` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:未回调处理;1:已回调处理',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=336 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%ips_do_dp_trade`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%ips_do_dp_trade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(1) NOT NULL COMMENT '0:普通用户%DB_PREFIX%user.id;1:担保用户%DB_PREFIX%deal_agency.id',
  `user_id` int(11) NOT NULL,
  `pMerCode` varchar(6) DEFAULT NULL COMMENT '“平台”账号 否 由IPS颁发的商户号 ',
  `pMerBillNo` varchar(30) DEFAULT NULL COMMENT '商户充值订单号 否 商户系统唯一不重复',
  `pAcctType` tinyint(1) NOT NULL DEFAULT '1' COMMENT '账户类型 否 固定值为 1，表示为类型为IPS个人账户',
  `pIdentNo` varchar(20) DEFAULT NULL COMMENT '证件号码 否 真实身份证（个人）/IPS颁发的商户号（商户） 本期考虑个人，商户充值预留，下期增加 ',
  `pRealName` varchar(30) DEFAULT NULL COMMENT '姓名 否 真实姓名（中文） pIpsAcctNo 30 IPS托管账户号 否 账户类型为1时，IPS托管账户号（个人） ',
  `pIpsAcctNo` varchar(30) DEFAULT NULL COMMENT 'IPS托管账户号 账户类型为1时，IPS托管账户号（个人）',
  `pTrdDate` date DEFAULT NULL COMMENT '充值日期 否 格式：YYYYMMDD ',
  `pTrdAmt` decimal(11,2) DEFAULT '0.00' COMMENT '充值金额 否 金额单位：元，丌能为负，丌允许为0，保留2位小数； 格式：12.00 ',
  `pChannelType` tinyint(1) DEFAULT '1' COMMENT '充值渠道种类 否 1#网银充值；2#代扣充值 ',
  `pTrdBnkCode` varchar(5) DEFAULT NULL COMMENT '充值银行 是/否 网银充值的银行列表由IPS提供，对应充值银行的CODE， 具体使用见接口 <<商户端获取银行列表查询(WS)>>， 获取pBankList内容项中“银行卡编号”字段； 代扣充值这里传空； ',
  `pMerFee` decimal(11,2) DEFAULT '0.00' COMMENT '平台手续费 否 这里是平台向用户收取的费用 金额单位：元，丌能为负，允许为0，保留2位小数； 格式：12.00 ',
  `pIpsFeeType` tinyint(1) DEFAULT NULL COMMENT '谁付IPS手续费 否 这里是IPS向平台收取的费用 1：平台支付 2：用户支付 ',
  `pMemo1` varchar(100) DEFAULT NULL,
  `pMemo2` varchar(100) DEFAULT NULL,
  `pMemo3` varchar(100) DEFAULT NULL,
  `pIpsBillNo` varchar(30) DEFAULT NULL COMMENT 'IPS充值订单号 否 由IPS系统生成的唯一流水号',
  `pErrCode` varchar(8) DEFAULT NULL COMMENT '充值状态 否 MG00000F 操作成功； MG00008F IPS受理中; 其他错误信息：参考自定义错误码',
  `pErrMsg` varchar(100) DEFAULT NULL COMMENT '返回信息 是/否 MG00000F 操作成功； MG00008F IPS受理中; 其他错误信息：参考自定义错误码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%ips_do_dw_trade`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%ips_do_dw_trade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:普通用户%DB_PREFIX%user.id;1:担保用户%DB_PREFIX%deal_agency.id',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `pMerCode` varchar(6) NOT NULL COMMENT '“平台”账号 否 由IPS颁发的商户号',
  `pMerBillNo` varchar(30) NOT NULL COMMENT '商户提现订单号商户系统唯一不重复',
  `pAcctType` tinyint(1) DEFAULT '1' COMMENT '账户类型 否 0#机构（暂未开放） ；1#个人',
  `pOutType` tinyint(1) DEFAULT NULL COMMENT '提现模式 否 1#普通提现；2#定向提现<暂不开放> ',
  `pBidNo` varchar(30) DEFAULT NULL COMMENT '标号 是/否 提现模式为2时，此字段生效 内容是投标时的标号',
  `pContractNo` varchar(30) DEFAULT NULL COMMENT '合同号 是/否 提现模式为2时，此字段生效 内容是投标时的合同号',
  `pDwTo` varchar(30) DEFAULT NULL COMMENT '提现去向 是/否 提现模式为2时，此字段生效 上送IPS托管账户号（个人/商户号）',
  `pIdentNo` varchar(20) DEFAULT NULL COMMENT '证件号码 否 真实身份证（个人）/由IPS颁发的商户号（商户）',
  `pRealName` varchar(30) DEFAULT NULL COMMENT '姓名 否 真实姓名（中文） ',
  `pIpsAcctNo` varchar(30) DEFAULT NULL COMMENT 'IPS账户号 否 账户类型为1时，IPS个人托管账户号 账户类型为0时，由IPS颁发的商户号',
  `pDwDate` date DEFAULT NULL COMMENT '提现日期 否 格式：YYYYMMDD ',
  `pTrdAmt` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '提现金额 否 金额单位，不能为负，不允许为0 ',
  `pMerFee` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '平台手续费 否 金额单位，不能为负，允许为0 这里是平台向用户收取的费用 ',
  `pIpsFeeType` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'IPS手续费收取方 否 这里是IPS收取的费用 1：平台支付 2：提现方支付',
  `pIpsBillNo` varchar(30) DEFAULT NULL,
  `is_callback` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:未回调处理;1:已回调处理',
  `pErrCode` varchar(8) DEFAULT NULL COMMENT 'MG00000F ?操作成功',
  `pErrMsg` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%ips_guarantee_unfreeze`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%ips_guarantee_unfreeze` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL DEFAULT '0',
  `pMerCode` varchar(6) NOT NULL COMMENT '“平台”账号 否 由IPS颁发的商户号 ',
  `pMerBillNo` varchar(30) NOT NULL DEFAULT '0' COMMENT '商户系统唯一丌重复',
  `pBidNo` varchar(30) NOT NULL DEFAULT '0' COMMENT '标的号，商户系统唯一丌重复',
  `pUnfreezeDate` date DEFAULT NULL COMMENT '解冻日期格 式：yyyymmdd ',
  `pUnfreezeAmt` decimal(11,2) DEFAULT '0.00' COMMENT '解冻金额 金额单位，丌能为负，丌允许为0 累计解冻金额  <= 当时冻结时的保证金',
  `pUnfreezenType` tinyint(1) DEFAULT '1' COMMENT '解冻类型 否 1#解冻借款方；2#解冻担保方',
  `pAcctType` tinyint(1) DEFAULT '1' COMMENT '解冻者账户类型 否 0#机构；1#个人',
  `pIdentNo` varchar(20) DEFAULT NULL COMMENT '解冻者证件号码 是/否 解冻者账户类型1时：真实身份证（个人），必填 解冻账户类型0时：为空处理',
  `pRealName` varchar(30) DEFAULT NULL COMMENT '解冻者姓名 否 账户类型为1时，真实姓名（中文） 账户类型为0时，开户时在IPS登记的商户名称 ',
  `pIpsAcctNo` varchar(30) DEFAULT NULL COMMENT '解冻者IPS账号 否 账户类型为1时，IPS个人托管账户号 账户类型为0时，由IPS颁发的商户号 ',
  `pIpsBillNo` varchar(30) DEFAULT NULL COMMENT '由IPS系统生成的唯一流水号',
  `pIpsTime` datetime DEFAULT NULL COMMENT 'IPS处理时间 否 格式为：yyyyMMddHHmmss',
  `pErrCode` varchar(8) DEFAULT NULL COMMENT '处理返回状态 否 MG00000F 操作成功； 其他错误：参考自定义错误码 ',
  `pErrMsg` varchar(255) DEFAULT NULL COMMENT '返回信息 是/否 MG00000F 操作成功； 其他错误信息：参考自定义错误码 ',
  `is_callback` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:未回调处理;1:已回调处理',
  PRIMARY KEY (`id`,`pMerBillNo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%ips_log`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%ips_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `create_date` datetime NOT NULL,
  `strxml` text,
  `html` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=231 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%ips_register_creditor`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%ips_register_creditor` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `pMerCode` int(6) NOT NULL,
  `pMerBillNo` varchar(30) NOT NULL COMMENT '商户订单号 否 商户系统唯一不重复 ',
  `pMerDate` date DEFAULT NULL COMMENT '商户日期 否 格式：YYYYMMDD ',
  `pBidNo` varchar(30) DEFAULT NULL COMMENT '标的号 否 字母和数字，如a~z,A~Z,0~9',
  `pContractNo` varchar(30) DEFAULT NULL COMMENT '合同号 否 字母和数字，如a~z,A~Z,0~9',
  `pRegType` tinyint(1) DEFAULT NULL COMMENT '登记方式 否 1：手劢投标  2：自劢投标',
  `pAuthNo` varchar(30) DEFAULT NULL COMMENT '授权号 是/否  字母和数字，如a~z,A~Z,0~9 登记方式为1时，为空 登记方式为2时，填写该投资人自劢投标签约时IPS向平 台接口返回的“pIpsAuthNo 授权号” （详见自劢投标签 约） ',
  `pAuthAmt` decimal(11,2) DEFAULT '0.00' COMMENT '债权面额 否 金额单位元，不能为负，不允许为0 ',
  `pTrdAmt` decimal(11,2) DEFAULT '0.00' COMMENT '交易金额 否 金额单位元，不能为负，不允许为0 债权面额等于交易金额 ',
  `pFee` decimal(11,2) DEFAULT '0.00' COMMENT '投资人手续费 否 金额单位元，不能为负，允许为0 ',
  `pAcctType` tinyint(1) DEFAULT '1' COMMENT '账户类型 否 0#机构（暂未开放） ；1#个人 ',
  `pIdentNo` varchar(20) DEFAULT NULL COMMENT '证件号码 否 真实身份证（个人）/由IPS颁发的商户号',
  `pRealName` varchar(30) DEFAULT NULL COMMENT '姓名 否 真实姓名（中文）',
  `pAccount` varchar(30) DEFAULT NULL COMMENT '投资人账户 否 账户类型为1时，IPS托管账户号（个人） 账户类型为0时，由IPS颁发的商户号',
  `pUse` varchar(100) DEFAULT NULL COMMENT '借款用途 否 借款用途 ',
  `pMemo1` varchar(100) DEFAULT NULL COMMENT '备注',
  `pMemo2` varchar(100) DEFAULT NULL COMMENT '备注',
  `pMemo3` varchar(100) DEFAULT NULL COMMENT '备注',
  `pAccountDealNo` varchar(20) DEFAULT NULL COMMENT '投资人编号 否 IPS返回的投资人编号 ',
  `pBidDealNo` varchar(30) DEFAULT NULL COMMENT '标的编号 否 IPS返回的标的编号',
  `pBusiType` tinyint(1) DEFAULT NULL COMMENT '业务类型 否 返回1，代表投标',
  `pTransferAmt` decimal(11,2) DEFAULT NULL COMMENT '实际冻结金额 否 实际冻结金额',
  `pStatus` tinyint(2) DEFAULT '0' COMMENT '债权人状态 否 0：新增 1：?行中 10：结束',
  `pP2PBillNo` varchar(30) DEFAULT NULL COMMENT 'IPS P2P订单号 否 由IPS系统生成的唯一流水号',
  `pIpsTime` datetime DEFAULT NULL COMMENT 'IPS处理时间 否 格式为：yyyyMMddHHmmss',
  `is_callback` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:未回调处理;1:已回调处理',
  `pErrCode` varchar(8) DEFAULT NULL,
  `pErrMsg` varchar(100) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `ecv_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`pMerBillNo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%ips_register_cretansfer`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%ips_register_cretansfer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `is_callback` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:未回调处理;1:已回调处理',
  `t_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '受让用户ID',
  `transfer_id` int(11) NOT NULL DEFAULT '0',
  `pMerCode` varchar(30) NOT NULL COMMENT '“平台”账 号 由IPS颁发的商户号',
  `pMerBillNo` varchar(30) NOT NULL DEFAULT '' COMMENT '商户订单号 否 商户系统唯一不重复',
  `pMerDate` date DEFAULT NULL COMMENT '商户日期 否 格式：YYYYMMDD ',
  `pBidNo` varchar(30) DEFAULT NULL COMMENT '标的号 否 原投资交易的标的号，字母和数字，如a~z,A~Z,0~9 ',
  `pContractNo` varchar(30) DEFAULT NULL COMMENT '合同号 否 原投资交易的合同号， 字母和数字，如a~z,A~Z,0~9 ',
  `pFromAccountType` tinyint(1) DEFAULT NULL COMMENT '出让方账户类型 否 0：机构（暂不支持） 1：个人 ',
  `pFromName` varchar(30) DEFAULT NULL COMMENT '出让方账户姓名 否 出让方账户真实姓名',
  `pFromAccount` varchar(50) DEFAULT NULL COMMENT '出让方账户 否 出让方账户类型为1时，IPS托管账户号（个人） 出让方账户类型为0时，由IPS颁发的商户号 ',
  `pFromIdentType` tinyint(2) DEFAULT '1' COMMENT '出让方证件类型 否 1#身份证，默认：1 ',
  `pFromIdentNo` varchar(20) DEFAULT NULL COMMENT '出让方证件号码 否 真实身份证（个人）/由IPS颁发的商户号（机构）',
  `pToAccountType` tinyint(1) DEFAULT NULL COMMENT '受让方账户类型 否 1：个人  0：机构（暂不支持）',
  `pToAccountName` varchar(30) DEFAULT NULL COMMENT '受让方账户姓名 否 受让方账户真实姓名 ',
  `pToAccount` varchar(30) DEFAULT NULL COMMENT '受让方账户 否 受让方账户类型为1时，IPS托管账户号（个人）',
  `pToIdentType` tinyint(2) DEFAULT '1' COMMENT '受让方证件类型 否 1#身份证，默讣：1 ',
  `pToIdentNo` varchar(20) DEFAULT NULL COMMENT '受让方证件号码 否 真实身份证（个人）/由IPS颁发的商户号（机构）',
  `pCreMerBillNo` varchar(30) DEFAULT NULL COMMENT '登记债权人时提 交的订单号 否 字母和数字，如a~z,A~Z,0~9 登记债权人时提交的订单号，见<登记债权人接口>请求 参数中的“pMerBillNo” ',
  `pCretAmt` decimal(11,2) DEFAULT '0.00' COMMENT '债权面额 否 金额单位元，不能为负，不允许为0 ',
  `pPayAmt` decimal(11,2) DEFAULT '0.00' COMMENT '支付金额 否 金额单位元，不能为负，不允许为0 债权面额（1-30%）<=支付金额<= 债权面额（1+30%） ',
  `pFromFee` decimal(11,2) DEFAULT '0.00' COMMENT '出让方手续费 否 金额单位元，不能为负，允许为0 ',
  `pToFee` decimal(11,2) DEFAULT '0.00' COMMENT '受让方手续费 否 金额单位元，不能为负，允许为0 ',
  `pCretType` tinyint(1) DEFAULT '1' COMMENT '转让类型 否 1：全部转让 2：部分转让',
  `pMemo1` varchar(100) DEFAULT NULL COMMENT '备注',
  `pMemo2` varchar(100) DEFAULT NULL COMMENT '备注',
  `pMemo3` varchar(100) DEFAULT NULL COMMENT '备注',
  `pErrCode` varchar(8) DEFAULT NULL COMMENT '处理返回状态 否 MG00000F 操作成功； 其他错误信息：参考自定义错误码',
  `pErrMsg` varchar(100) DEFAULT NULL COMMENT '返回信息 是/否 MG00000F 操作成功； 其他错误信息：参考自定义错误码',
  `pP2PBillNo` varchar(30) DEFAULT NULL COMMENT '债权转让编号 否 IPS返回的债权转让编号',
  `pIpsTime` datetime DEFAULT NULL COMMENT 'IPS处理时间 否 格式为：yyyyMMddHHmmss ',
  `pBussType` tinyint(1) DEFAULT '1' COMMENT '业务类型 否 1：债权转让',
  `pStatus` tinyint(1) DEFAULT '1' COMMENT '转让状态 否 0：新建 1：?行中 10：成功  9： 失败 ',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%ips_register_guarantor`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%ips_register_guarantor` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `pMerCode` varchar(6) DEFAULT NULL COMMENT '“平台”账号 否 由IPS颁发的商户号',
  `pMerBillNo` varchar(30) NOT NULL DEFAULT '' COMMENT '商户订单号 否 商户系统唯一不重复',
  `pMerDate` date DEFAULT NULL COMMENT '商户日期 否 格式：yyyyMMdd ',
  `pBidNo` varchar(30) DEFAULT NULL COMMENT '标的号 否 字母和数字，如a~z,A~Z,0~9',
  `pAmount` decimal(11,2) DEFAULT '0.00' COMMENT '担保金额 否 金额单位元，不能为负，不允许为0 担保人针对该合同标的承诺的最高赔付金额 ',
  `pMarginAmt` decimal(11,2) DEFAULT '0.00' COMMENT '担保保证金 否 金额单位元，不能为负，允许为0 担保人针对该合同标的被冻结的金额',
  `pProFitAmt` decimal(11,2) DEFAULT '0.00' COMMENT '担保收益 否 金额单位元，不能为负，允许为0 ',
  `pAcctType` tinyint(1) DEFAULT '0' COMMENT '担保方类型 否 0#机构；1#个人 ',
  `pFromIdentNo` varchar(20) DEFAULT NULL COMMENT '担保方证件号码 否 针对担保方类型为1时：真实身份证（个人） 针对担保方类型为0时：由IPS颁发的商户号 ',
  `pAccountName` varchar(30) DEFAULT NULL COMMENT '担保方账户姓名 否 针对担保方类型为1时：担保方账户真实姓名 针对担保方类型为0时：在IPS开户时登记的商户名称',
  `pAccount` varchar(30) DEFAULT NULL COMMENT '担保方账户 否 担保方类型为1时，IPS托管账户号（个人） 担保方类型为0时，由IPS颁发的商户号 ',
  `pMemo1` varchar(100) DEFAULT NULL,
  `pMemo2` varchar(100) DEFAULT NULL,
  `pMemo3` varchar(100) DEFAULT NULL,
  `pP2PBillNo` varchar(30) DEFAULT NULL COMMENT '担保方编号 否 IPS返回的担保人编号 ',
  `pRealFreezeAmt` decimal(11,2) DEFAULT '0.00' COMMENT '实际冻结金额  IPS返回的担保保证金 ',
  `pCompenAmt` decimal(11,2) DEFAULT '0.00' COMMENT '已代偿金额  IPS返回的担保金额 ',
  `pIpsTime` datetime DEFAULT NULL COMMENT 'IPS处理时间  格式为：yyyyMMddHHmmss ',
  `pStatus` tinyint(2) DEFAULT NULL COMMENT '担保状态 否 0：新增  1：?行中  10：结束  9：失败',
  `pErrCode` varchar(8) DEFAULT NULL COMMENT '处理返回状态 否 MG00000F 操作成功； 其他错误信息：参考自定义错误码 ',
  `pErrMsg` varchar(100) DEFAULT NULL COMMENT '返回信息 是/否 MG00000F 操作成功； 其他错误信',
  `is_callback` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:未回调处理;1:已回调处理',
  PRIMARY KEY (`id`,`pMerBillNo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%ips_register_subject`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%ips_register_subject` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pMerCode` int(6) NOT NULL DEFAULT '0' COMMENT '“平台”账号 否 由IPS颁发的商户号 ',
  `deal_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:新增; 1:标的正常结束; 2:流标结束',
  `pMerBillNo` varchar(30) NOT NULL COMMENT '商户订单号 否 商户系统唯一不重复',
  `pBidNo` varchar(30) NOT NULL COMMENT '标的号，商户系统唯一不重复 ',
  `pRegDate` date DEFAULT NULL COMMENT '商户日期 否 格式：YYYYMMDD ',
  `pLendAmt` decimal(11,2) DEFAULT '0.00' COMMENT '借款金额 否 金额单位，丌能为负，丌允许为0； 借款金额  <= 10000.00万 关于N(9,2)见4.1补充说明 ',
  `pGuaranteesAmt` decimal(11,2) DEFAULT '0.00' COMMENT '借款保证金，允许冻结的金额，金额单位，丌能为负，允 许为0； 借款保证金  <= 10000.00万 ',
  `pTrdLendRate` decimal(11,2) DEFAULT '0.00' COMMENT '借款利率 否 金额单位，丌能为负，允许为0； 借款利率  < 48%，例如：45.12%传入 45.12 ',
  `pTrdCycleType` tinyint(2) DEFAULT NULL COMMENT '借款周期类型 否 借款周期类型，1：天；3：月； 借款周期 <= 5年',
  `pTrdCycleValue` int(5) DEFAULT '0' COMMENT '借款周期值 否 借款周期值 借款周期 <= 5年。 如果借款周期类型为天，则借款周期值<= 1800(360 * 5)；如果借款周期类型为月，则借款周期值<= 60(12 * 5) ',
  `pLendPurpose` varchar(100) DEFAULT NULL COMMENT '借款用途',
  `pRepayMode` tinyint(2) DEFAULT NULL COMMENT '还款方式，1：等额本息，2：按月还息到期还本；3：等 额本金；99：其他； ',
  `pOperationType` tinyint(2) DEFAULT NULL COMMENT '标的操作类型，1：新增，2：结束 “新增”代表新增标的，“结束”代表标的正常还清、丌 需要再还款戒者标的流标等情况。标的“结束”后，投资 人投标冻结金额、担保方保证金、借款人保证金均自劢解 冻。 ',
  `pLendFee` decimal(11,2) DEFAULT '0.00' COMMENT '借款人手续费 否 金额单位，丌能为负，允许为0 这里是平台向借款人收取的费用 ',
  `pAcctType` tinyint(1) DEFAULT '1' COMMENT '账户类型 否 0#机构（暂未开放） ；1#个人 ',
  `pIdentNo` varchar(20) DEFAULT NULL COMMENT '证件号码 否 真实身份证（个人）/由IPS颁发的商户号 ',
  `pRealName` varchar(30) DEFAULT NULL COMMENT '姓名 否 真实姓名（中文）',
  `pIpsAcctNo` varchar(30) DEFAULT NULL COMMENT 'IPS账户号 否 账户类型为1时，IPS托管账户号（个人） 账户类型为0时，由IPS颁发的商户号 ',
  `pMemo1` varchar(100) DEFAULT NULL COMMENT '备注 是/否  ',
  `pMemo2` varchar(100) DEFAULT NULL,
  `pMemo3` varchar(100) DEFAULT NULL,
  `pIpsBillNo` varchar(30) DEFAULT NULL,
  `pIpsTime` datetime DEFAULT NULL COMMENT 'IPS处理时间 否 格式为：yyyyMMddHHmmss ',
  `pBidStatus` tinyint(2) DEFAULT NULL COMMENT '标的状态，1：新增；2：募集中；3：? 行中；8：结束处理中；9：失败；10：结 束；',
  `pRealFreezenAmt` decimal(11,2) DEFAULT '0.00' COMMENT '实际冻结金额，金额单位，不能为负，不允许为0； 实际冻结金额 = 保证金+手续费',
  `pErrCode` varchar(255) DEFAULT NULL COMMENT 'MG02500F标的新增；（登记标的时同步返回） ? MG02501F标的募集中；（登记标的成功后异步返回） ? MG02503F 标的结束处理中；（登记结束标的时同步返 回） ? MG02504F标的失败； ? MG02505F标的结束(登记结束标的成功后异步返回)',
  `pErrMsg` varchar(100) DEFAULT NULL COMMENT '返回信息 是/否 MG00000F 操作成功； MG02500F标的新增； MG02501F标的募集中； MG02503F标的结束处理中； MG02504F标的失败； MG02505F标的结束 其他错误信息：参考自定义错误码',
  `is_callback` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:未回调处理;1:已回调处理',
  `status_msg` varchar(255) DEFAULT NULL COMMENT '主要是status_msg=2时记录的，流标原因',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%ips_repayment_new_trade`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%ips_repayment_new_trade` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL,
  `deal_repay_id` int(11) NOT NULL DEFAULT '0' COMMENT '还款列表ID',
  `pMerCode` varchar(30) NOT NULL,
  `pMerBillNo` varchar(30) NOT NULL,
  `pBidNo` varchar(30) NOT NULL COMMENT '标号  ? 字母和数字，如a~z,A~Z,0~9',
  `pRepaymentDate` date NOT NULL COMMENT '还款日期 ? 格式：YYYYMMDD ',
  `pRepayType` tinyint(1) NOT NULL DEFAULT '1' COMMENT '还款类型，1#手动还款，2#自动还款',
  `pIpsAuthNo` varchar(30) NOT NULL COMMENT '授权号 ? 是/否 ? 当还款类型为自动还款时不为空，为手动还款时为空',
  `pOutAcctNo` varchar(30) NOT NULL COMMENT '转出方IPS账号 ? 否 ? 借款人在IPS注册的资金托管账号',
  `pOutAmt` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '转出金额 ? 否 ? 表示此次还款总金额。 ? 转出金额=Sum(pInAmt) ? Sum(pInAmt)代表转入金额的合计，一个或多个 投资人时的还款金额的累加。 ? 金额单位：元，不能为负，不允许为 0，保留 2 位小 数； ? 格式：12.00 ',
  `pOutFee` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '转出方总手续费 ? 否 ? 表示此次借款人或担保人所承担的还款手续费，此手 续费由商户平台向用户收取。 ? 金额单位：元，不能为负，允许为0，保留 2位小数； ? 格式：12.00 ?pOutFee ?= ?Sum(pOutInfoFee) ? Sum(pOutInfoFee)代表转出方手续费的合计 ? ',
  `pMessage` varchar(100) DEFAULT NULL COMMENT '转入结果说明 成功与失败的说明',
  `pMemo1` varchar(100) DEFAULT NULL,
  `pMemo2` varchar(100) DEFAULT NULL,
  `pMemo3` varchar(100) DEFAULT NULL,
  `pIpsBillNo` varchar(30) DEFAULT NULL COMMENT 'IPS还款订单号  否  由 IPS 系统生成的唯一流水号， 此次还款的批次号',
  `pOutIpsFee` decimal(11,2) DEFAULT '0.00' COMMENT '收取转出方手 续费  此手续费由平台商户垫付给 IPS 的手续费',
  `pIpsDate` date DEFAULT NULL COMMENT 'IPS受理日期  否  yyyyMMdd',
  `pErrCode` varchar(8) DEFAULT NULL COMMENT '返回状态  否 MG00000F操作成功 MG00008F IPS受理中；  待处理状态。（并非此次还款成功，还款成功返回详见 4.11.4）  除此之外：参考自定义错误码',
  `pErrMsg` varchar(100) DEFAULT NULL COMMENT '接口返回信息  否  状态非 MG00000F时，反馈实际原因',
  `is_callback` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%ips_repayment_new_trade_detail`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%ips_repayment_new_trade_detail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `pCreMerBillNo` varchar(30) NOT NULL COMMENT '登记债权人时提 交的订单号 ? 否 ? 登记债权人时提交的订单号，见<登记债权人接口>请求 参数中的“pMerBillNo” ',
  `pInAcctNo` varchar(30) DEFAULT NULL COMMENT '转入方 IPS 托管 账户号 ? 否 ? 债权人在IPS注册的资金托管账号',
  `pInFee` decimal(11,2) DEFAULT '0.00' COMMENT '转入方手续费 ? 否 ? 表示此次还款债权人所承担的还款手续费，此手续费由商 户平台向用户收取。金额单位：元，不能为负，允许为0，保留2位小数； ? 格式：12.00 ?',
  `pOutInfoFee` decimal(11,2) DEFAULT '0.00' COMMENT '转出方手续费 ? 否 ? 表示此次借款人或担保人所承担的还款明细手续费，此手 续费由商户平台收取。',
  `pInAmt` decimal(11,2) DEFAULT '0.00' COMMENT '转入金额 ? 否 ? 格式：0.00 ? ?必须大于0 ?且大于转入方手续费',
  `pStatus` varchar(2) NOT NULL DEFAULT '0' COMMENT '转入状态 ? 否 ? Y#还款成功；N#还款失败',
  `pMessage` varchar(100) DEFAULT NULL COMMENT '转入结果说明 成功与失败的说明',
  `deal_load_repay_id` int(10) NOT NULL DEFAULT '0' COMMENT '对应的还款列表ID',
  `impose_money` decimal(11,2) DEFAULT '0.00',
  `repay_manage_impose_money` decimal(11,2) DEFAULT '0.00',
  `self_money` decimal(20,2) NOT NULL,
  `repay_status` tinyint(1) NOT NULL,
  `true_repay_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%ips_transfer`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%ips_transfer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `deal_id` int(10) NOT NULL,
  `ref_data` varchar(200) DEFAULT NULL,
  `pMerCode` varchar(8) NOT NULL,
  `pMerBillNo` varchar(30) DEFAULT NULL COMMENT '商户订单号  否  商户系统唯一不重复',
  `pBidNo` varchar(30) DEFAULT NULL COMMENT '标的号  否  标的号，商户系统唯一不重复 ',
  `pDate` date DEFAULT NULL COMMENT '商户日期  否  格式：YYYYMMDD  ',
  `pTransferType` tinyint(2) DEFAULT NULL COMMENT '转账类型  否  转账类型  1：投资（报文提交关系，转出方：转入方=N：1），  2：代偿（报文提交关系，转出方：转入方=1：N），  3：代偿还款（报文提交关系，转出方：转入方=1：1），  4：债权转让（报文提交关系，转出方：转入方=1：1），  5：结算担保收益（报文提交关系，转出方：转入方=1： 1） ',
  `pTransferMode` tinyint(2) DEFAULT NULL COMMENT '转账方式  是  转账方式，1：逐笔入账；2：批量入账  逐笔入账：不将转账款项汇总，而是按明细交易一笔一 笔计入账户  批量入帐：针对投资，将明细交易按 1 笔汇总本金和 1 笔汇总手续费记入借款人帐户  当转账类型为“1：投资”时，可选择 1 或 2。其余交 易只能选1',
  `pErrCode` varchar(8) DEFAULT NULL COMMENT '返回状态 ? 否 ? 一、转账类型为“代偿”，“投 资”时同步返回 MG00008F ?IPS 受理中；异步再返回 MG00000F ? 操作成功； ? 二、其他转账类型 MG00000F ?操作成功； ? 其他错误信息：参考自定义错误码 ? ',
  `pErrMsg` varchar(100) DEFAULT NULL COMMENT '接口返回信息 ? 否 ? MG00000F ?操作成功； ? 其他错误信息：参考自定义错误码',
  `pIpsBillNo` varchar(30) DEFAULT NULL COMMENT 'IPS订单号  否  由 IPS系统生成的唯一流水号',
  `pIpsTime` datetime DEFAULT NULL COMMENT 'IPS处理时间  否  格式为：yyyyMMddHHmmss',
  `is_callback` tinyint(1) NOT NULL DEFAULT '0',
  `pMemo1` varchar(100) DEFAULT NULL,
  `pMemo2` varchar(100) DEFAULT NULL,
  `pMemo3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%ips_transfer_detail`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%ips_transfer_detail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `pOriMerBillNo` varchar(30) DEFAULT NULL COMMENT '原商户订单号  否  商户系统唯一不重复  当转账类型为投资时，为登记债权人时提交的商户订单号  当转账类型为代偿时，为登记债权人时提交的商户订单号  当转账类型为代偿还款时，为代偿时提交的商户订单号  当转账类型为债权转让时，为登记债权转让时提交的商户 订单号  当转账类型为结算担保收益时，为登记担保人时提交的商 户订单号  ',
  `pTrdAmt` decimal(11,2) DEFAULT '0.00' COMMENT '转账金额  否  金额单位：元，不能为负，不允许为0，保留2位小数；  格式：12.00  转账类型，1：投资，转账金额=债权面额；  转账类型，2：代偿，转账金额=代偿金额；  转账类型，3：代偿还款，转账金额=代偿还款金额；  转账类型，4：债权转让，转账金额=登记债权转让时的 支付金额； 转账类型，5：结算担保收益，累计转账金额<=登记担保 方时的担保收益；  ',
  `pFAcctType` tinyint(1) DEFAULT '1' COMMENT '转出方账户类型  否  0#机构；1#个人',
  `pFIpsAcctNo` varchar(30) DEFAULT NULL COMMENT '转出方 IPS 托管 账户号  否  账户类型为1时，IPS个人托管账户号  账户类型为0时，由 IPS颁发的商户号  转账类型，1：投资，此为转出方（投资人）；  转账类型，2：代偿，此为转出方（担保方）；  转账类型，3：代偿还款，此为转出方（借款人）；  转账类型，4：债权转让，此为转出方（受让方）；  转账类型，5：结算担保收益，此为转出方（借款人）；  ',
  `pFTrdFee` decimal(11,2) DEFAULT NULL COMMENT '转出方明细手续 费  否  金额单位：元，不能为负，允许为0，保留2位小数；  格式：12.00  转账类型，1：投资，此为转出方（投资人）手续费；  转账类型，2：代偿，此为转出方（担保方）手续费；  转账类型，3：代偿还款，此为转出方（借款人）手续费；  转账类型，4：债权转让，此为转出方（受让方）手续费；  转账类型，5：结算担保收益，此为转出方（借款人）手 续费；  ',
  `pTAcctType` tinyint(1) DEFAULT '1' COMMENT '转入方账户类型  否  0#机构；1#个人',
  `pTIpsAcctNo` varchar(30) DEFAULT NULL COMMENT '转入方 IPS 托管 账户号  否  账户类型为1时，IPS个人托管账户号  账户类型为0时，由 IPS颁发的商户号  转账类型，1：投资，此为转入方（借款人）；  转账类型，2：代偿，此为转入方（投资人）；  转账类型，3：代偿还款，此为转入方（担保方）；  转账类型，4：债权转让，此为转入方（出让方）；  转账类型，5：结算担保收益，此为转入方（担保方）；  ',
  `pTTrdFee` decimal(11,2) DEFAULT NULL COMMENT '转入方明细手续 费  否  金额单位：元，不能为负，允许为0，保留2位小数；  格式：12.00  转账类型，1：投资，此为转入方（借款人）手续费；  转账类型，2：代偿，此为转入方（投资人）手续费；  转账类型，3：代偿还款，此为转入方（担保方）手续费；  转账类型，4：债权转让，此为转入方（出让方）手续费；  转账类型，5：结算担保收益，此为转入方（担保方）手 续费； ',
  `pIpsDetailBillNo` varchar(255) DEFAULT NULL COMMENT 'IPS明细订单号  否  IPS明细订单号',
  `pIpsDetailTime` datetime DEFAULT NULL COMMENT 'IPS明细处理时间  否  格式为：yyyyMMddHHmmss ',
  `pIpsFee` decimal(11,2) DEFAULT '0.00' COMMENT 'IPS手续费  否  IPS手续费',
  `pStatus` varchar(1) DEFAULT NULL,
  `pMessage` varchar(100) DEFAULT NULL COMMENT '转账备注  否  转账失败的原因 ',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%learn`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%learn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '体验金理财名称',
  `rate` varchar(10) NOT NULL COMMENT '年利率',
  `begin_time` date NOT NULL COMMENT '开始时间',
  `end_time` date NOT NULL COMMENT '结束时间',
  `time_limit` int(11) NOT NULL COMMENT '产品期限',
  `time_expire_limit` int(11) NOT NULL COMMENT '收益结算有效期限',
  `is_effect` tinyint(4) NOT NULL COMMENT '是否有效',
  `description` text NOT NULL COMMENT '描述',
  `buy_count` int(11) NOT NULL COMMENT '购买人数',
  `load_money` decimal(11,2) NOT NULL COMMENT '总投资',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='体验理财产品表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%learn_load`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%learn_load` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `learn_id` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL COMMENT '投资金额',
  `rate` varchar(10) NOT NULL COMMENT '年利率',
  `time_limit` int(11) NOT NULL COMMENT '产品期限',
  `time_expire_limit` int(11) NOT NULL COMMENT '收益结算有效期限',
  `interest` decimal(20,2) NOT NULL COMMENT '预计得到的利息   money*rate*0.01*time_limit',
  `create_time` datetime NOT NULL COMMENT '投标时间',
  `create_date` date NOT NULL COMMENT '投标时间 Ymd',
  `is_send` tinyint(11) NOT NULL COMMENT '是否已发放',
  `send_time` datetime NOT NULL COMMENT '发放时间',
  `send_date` date NOT NULL COMMENT '发放时间 Ymd',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='体验理财产品投资列表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%learn_send_list`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%learn_send_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL COMMENT '类型ID',
  `user_id` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `begin_time` date NOT NULL COMMENT '开时时间  一般是发放之日',
  `end_time` date NOT NULL COMMENT '结束时间  begin_time + time_limit',
  `is_effect` tinyint(1) NOT NULL COMMENT '是否有效',
  `is_use` tinyint(1) NOT NULL COMMENT '是否已经使用',
  `use_time` datetime NOT NULL COMMENT '使用日期',
  `use_date` date NOT NULL COMMENT '使用时间Ymd',
  `is_recycle` tinyint(1) NOT NULL COMMENT '是否收回',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='体验金发放列表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%learn_type`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%learn_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '类型名称',
  `money` decimal(10,2) NOT NULL COMMENT '体验金额度',
  `max_money` decimal(10,2) NOT NULL COMMENT '用户最高可以获得多少金额',
  `brief` text NOT NULL COMMENT '简介',
  `type` tinyint(4) NOT NULL COMMENT '类型 0注册送 1邀请送 2管理员发放',
  `is_effect` tinyint(4) NOT NULL COMMENT '是否有效',
  `begin_time` date NOT NULL COMMENT '发放开始时间',
  `end_time` date NOT NULL COMMENT '发放结束时间',
  `time_limit` int(11) NOT NULL COMMENT '过期时长  天  即发放后多久过期',
  `send_count` int(11) NOT NULL COMMENT '已发放多少张',
  `invest_type` tinyint(4) NOT NULL COMMENT '可用于投资类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='体验发放金类型' AUTO_INCREMENT=24 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%licai`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%licai` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '产品名称',
  `licai_sn` varchar(50) NOT NULL COMMENT '编号',
  `user_id` int(10) DEFAULT '0' COMMENT '发起人【发起机构】',
  `img` varchar(255) DEFAULT NULL COMMENT '项目图片',
  `is_recommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `re_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0元;1新品上架;2当月畅销;3:本周畅销;4:限时抢购;',
  `begin_buy_date` date NOT NULL COMMENT '购买开始时间',
  `end_buy_date` date NOT NULL COMMENT '购买结束时间',
  `end_date` date NOT NULL COMMENT '项目结束时间',
  `min_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '起购金额',
  `max_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '单笔最大购买限额',
  `begin_interest_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '【0:当日生效，1:次日生效，2:下个工作日生效,3下二个工作日】',
  `product_size` varchar(255) DEFAULT NULL COMMENT '产品规模',
  `risk_rank` tinyint(1) NOT NULL DEFAULT '0' COMMENT '风险等级（2高、1中、0低）',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1有效、0无效',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '理财类型（0余额宝、1固定定存、2浮动定存;3票据、4基金）',
  `description` text NOT NULL COMMENT '理财详情',
  `purchasing_time` varchar(255) DEFAULT NULL COMMENT '赎回到账时间描述',
  `rule_info` text COMMENT '规则',
  `is_trusteeship` tinyint(1) DEFAULT NULL COMMENT '是否托管 0是 1否',
  `average_income_rate` decimal(8,4) NOT NULL DEFAULT '0.0000' COMMENT 'type=0七日平均(年)收益率;type=1近三个月收益率【动态计算】',
  `per_million_revenue` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '每万元收益【动态计算】',
  `subscribing_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '累计成交总额',
  `redeming_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '累计被赎回',
  `is_deposit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否托管;1:托管;0:非托管',
  `sort` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  `brief` varchar(255) DEFAULT NULL COMMENT '简介',
  `net_value` decimal(10,2) DEFAULT '0.00' COMMENT '最新净值',
  `fund_key` varchar(50) DEFAULT NULL COMMENT '关连的基金编号',
  `fund_type_id` int(10) NOT NULL DEFAULT '0' COMMENT '基金种类',
  `fund_brand_id` int(10) NOT NULL DEFAULT '0' COMMENT '基金品牌',
  `bank_id` int(10) NOT NULL DEFAULT '0' COMMENT '银行',
  `begin_interest_date` date DEFAULT NULL COMMENT '起息时间',
  `time_limit` int(10) DEFAULT NULL COMMENT '理财期限',
  `review_type` tinyint(1) DEFAULT NULL COMMENT '赎回到账方式: 0,发起人审核   1,网站和发起人审核 2，自动审核',
  `total_people` int(10) DEFAULT NULL COMMENT '参与人数',
  `service_fee_rate` decimal(10,4) DEFAULT NULL COMMENT '成交服务费',
  `licai_status` tinyint(1) DEFAULT NULL COMMENT '理财状态 0：预热期 1：理财期 2：提前结束 3已到期',
  `send_type` tinyint(1) DEFAULT NULL COMMENT '发放款项类型  0：自动  1：手动',
  `is_send` tinyint(1) DEFAULT NULL COMMENT '是否发放 0：否 1：是',
  `profit_way` varchar(255) DEFAULT NULL COMMENT '获取收益方式',
  `scope` varchar(255) DEFAULT NULL COMMENT '利率范围',
  `platform_rate` decimal(10,4) DEFAULT NULL COMMENT '平台收益(余额宝)',
  `site_buy_fee_rate` decimal(10,4) DEFAULT NULL COMMENT '购买手续费(余额宝)',
  `redemption_fee_rate` decimal(10,4) DEFAULT NULL COMMENT '赎回手续费(余额宝)',
  `verify` tinyint(1) NOT NULL DEFAULT '0' COMMENT '审核状态 0：未审核  1：通过 2：不通过',
  `contract_id` int(11) DEFAULT NULL COMMENT '理财合同范本',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%licai_advance`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%licai_advance` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `redempte_id` int(11) NOT NULL COMMENT '赎回ID',
  `user_id` int(11) NOT NULL COMMENT '申请人ID',
  `user_name` varchar(255) NOT NULL COMMENT '申请用户名',
  `money` decimal(10,2) NOT NULL DEFAULT '1.00' COMMENT '赎回本金',
  `earn_money` decimal(10,2) NOT NULL COMMENT '收益金额',
  `fee` decimal(10,2) NOT NULL COMMENT '赎回手续费',
  `organiser_fee` decimal(10,2) NOT NULL,
  `advance_money` decimal(10,2) NOT NULL COMMENT '垫付金额',
  `real_money` decimal(10,2) NOT NULL COMMENT '发起人账户金额和冻结资金被扣的金额',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态 0表示未处理 1表示通过',
  `type` tinyint(1) NOT NULL COMMENT '0 预热期赎回 1.起息时间违约赎回 2.正常到期赎回',
  `create_date` date NOT NULL COMMENT '申请时间',
  `update_date` date NOT NULL COMMENT '处理时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%licai_bank`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%licai_bank` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '产品名称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态1:有效;0无效',
  `sort` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='基金种类：\r\n全部 货币型 股票型 债券型 混合型 理财型 指数型 QDII 其他型' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%licai_dealshow`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%licai_dealshow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `licai_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%licai_fund_brand`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%licai_fund_brand` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '产品名称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态1:有效;0无效',
  `sort` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='基金品牌：\r\n全部 嘉实 鹏华 易方达 国泰 南方 建信 招商 工银瑞信 海富通 华商 中邮创业 长盛 东方\r\n' AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `%DB_PREFIX%licai_fund_brand`
--

INSERT INTO `%DB_PREFIX%licai_fund_brand` (`id`, `name`, `status`, `sort`) VALUES
(1, '嘉实', 1, 0),
(2, '鹏华', 1, 0),
(3, '易方达', 1, 0),
(4, '国泰', 1, 0),
(5, '南方', 1, 0),
(6, '建信', 1, 0),
(7, '招商', 1, 0),
(8, '工银瑞信', 1, 0),
(9, '海富通', 1, 0),
(10, '华商', 1, 0),
(11, '中邮创业', 1, 0),
(12, '长盛', 1, 0),
(13, '东方', 1, 0),
(14, '汲侵资本', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%licai_fund_type`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%licai_fund_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '产品名称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态1:有效;0无效',
  `sort` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='基金种类：\r\n全部 货币型 股票型 债券型 混合型 理财型 指数型 QDII 其他型' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `%DB_PREFIX%licai_fund_type`
--

INSERT INTO `%DB_PREFIX%licai_fund_type` (`id`, `name`, `status`, `sort`) VALUES
(1, '货币型', 1, 0),
(2, '股票型', 1, 0),
(3, '债券型', 1, 0),
(4, '混合型', 1, 0),
(5, '理财型', 1, 0),
(6, '指数型', 1, 0),
(7, 'QDII', 1, 0),
(8, '其他型', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%licai_history`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%licai_history` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `licai_id` varchar(50) NOT NULL COMMENT '编号',
  `history_date` date NOT NULL DEFAULT '0000-00-00' COMMENT '购买金额起',
  `net_value` decimal(10,2) NOT NULL COMMENT '当日净利',
  `rate` decimal(7,4) NOT NULL COMMENT '利率',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='基金净值列表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%licai_holiday`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%licai_holiday` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `year` int(4) NOT NULL COMMENT '年',
  `holiday` date NOT NULL COMMENT '假日',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%licai_interest`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%licai_interest` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `licai_id` varchar(50) NOT NULL COMMENT '编号',
  `min_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '购买金额起',
  `max_money` decimal(10,2) NOT NULL COMMENT '购买金额起',
  `interest_rate` decimal(7,4) NOT NULL COMMENT '利息率',
  `buy_fee_rate` decimal(10,4) DEFAULT NULL COMMENT '原购买手续费',
  `site_buy_fee_rate` decimal(10,4) DEFAULT NULL COMMENT '网站购买手续费',
  `redemption_fee_rate` decimal(10,4) DEFAULT NULL COMMENT '赎回手续费',
  `before_rate` decimal(10,4) DEFAULT NULL COMMENT '预热期利率',
  `before_breach_rate` decimal(10,4) DEFAULT NULL COMMENT '预热期违约利率',
  `breach_rate` decimal(10,4) DEFAULT NULL COMMENT '正常利息 违约收益率',
  `platform_rate` decimal(10,4) DEFAULT NULL COMMENT '平台收益率',
  `freeze_bond_rate` decimal(10,4) DEFAULT NULL,
  `platform_breach_rate` decimal(10,4) DEFAULT NULL COMMENT '用户违约网站收益',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='利率列表【不同投资金额，可以获得不同的利率】' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%licai_order`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%licai_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `licai_id` int(11) NOT NULL COMMENT '理财产品ID',
  `user_id` int(11) NOT NULL COMMENT '购买用户的id',
  `user_name` varchar(50) NOT NULL,
  `money` decimal(10,2) NOT NULL COMMENT '购买金额',
  `status` tinyint(1) NOT NULL COMMENT '0：未支付 1：已支付 2、部分赎回 3、已完结',
  `freeze_bond_rate` decimal(10,4) NOT NULL COMMENT '冻结保证金费率',
  `freeze_bond` decimal(10,2) NOT NULL COMMENT '冻结保证金',
  `pay_money` decimal(10,2) NOT NULL COMMENT '发放金额',
  `status_time` datetime NOT NULL COMMENT '处理时间',
  `create_time` datetime NOT NULL COMMENT '购买时间',
  `create_date` date NOT NULL COMMENT '购买年月日',
  `site_buy_fee_rate` decimal(10,4) NOT NULL COMMENT '实际申购费率',
  `site_buy_fee` decimal(10,2) NOT NULL COMMENT '实际申购费',
  `redemption_fee_rate` decimal(10,4) NOT NULL COMMENT '赎回手续费',
  `before_interest_date` date NOT NULL COMMENT '预热开始时间',
  `before_interest_enddate` date NOT NULL COMMENT '预热结束时间',
  `before_rate` decimal(10,4) NOT NULL COMMENT '预热利率',
  `before_interest` decimal(10,2) NOT NULL COMMENT '预热利息',
  `is_before_pay` tinyint(1) NOT NULL COMMENT '是否已经支付预热期手续费',
  `before_breach_rate` decimal(10,4) NOT NULL COMMENT '预热期违约利率',
  `begin_interest_type` tinyint(1) NOT NULL COMMENT '【0:当日生效，1:次日生效，2:下个工作日生效,3下二个工作日】',
  `begin_interest_date` date NOT NULL COMMENT '起息时间YMD',
  `interest_rate` decimal(10,4) NOT NULL COMMENT '利息率',
  `breach_rate` decimal(10,4) NOT NULL COMMENT '正常利息 违约收益率',
  `end_interest_date` date NOT NULL COMMENT '结束时间YMD',
  `service_fee_rate` decimal(10,4) NOT NULL COMMENT '成交服务费率',
  `service_fee` decimal(10,2) NOT NULL COMMENT '成交服务费',
  `redempte_money` decimal(10,2) DEFAULT '0.00' COMMENT '赎回金额',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='理财订单表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%licai_recommend`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%licai_recommend` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `licai_id` varchar(50) NOT NULL COMMENT '编号',
  `name` varchar(255) NOT NULL COMMENT '产品名称',
  `img` varchar(255) NOT NULL COMMENT '项目图片',
  `brief` varchar(255) DEFAULT NULL COMMENT '简介',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态1:有效;0无效',
  `sort` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='个性推荐' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%licai_redempte`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%licai_redempte` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL COMMENT '订单ID',
  `user_id` int(11) NOT NULL COMMENT '申请人ID',
  `user_name` varchar(255) NOT NULL COMMENT '申请用户名',
  `money` decimal(10,2) NOT NULL DEFAULT '1.00' COMMENT '赎回本金',
  `earn_money` decimal(10,2) NOT NULL COMMENT '收益金额',
  `fee` decimal(10,2) NOT NULL COMMENT '赎回手续费',
  `organiser_fee` decimal(10,2) NOT NULL COMMENT '平台收益',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态 0表示未赎回 1表示已赎回 2表示拒绝 3表示取消赎回',
  `type` tinyint(1) NOT NULL COMMENT '0 预热期赎回 1.起息时间违约赎回 2.正常到期赎回',
  `create_date` date NOT NULL COMMENT '申请时间',
  `update_date` date NOT NULL COMMENT '处理时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='赎回列表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%link`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `sort` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `count` int(11) NOT NULL,
  `show_index` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `%DB_PREFIX%link`
--

INSERT INTO `%DB_PREFIX%link` (`id`, `name`, `group_id`, `url`, `is_effect`, `sort`, `img`, `description`, `count`, `show_index`) VALUES
(14, 'MS00', 7, 'http://www.ms00.cc', 1, 1, '', '', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%link_group`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%link_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '友情链接分组名称',
  `sort` tinyint(1) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `%DB_PREFIX%link_group`
--

INSERT INTO `%DB_PREFIX%link_group` (`id`, `name`, `sort`, `is_effect`) VALUES
(7, '友情链接', 3, 1),
(8, '合作伙伴', 2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%log`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_info` text NOT NULL,
  `log_time` int(11) NOT NULL,
  `log_admin` int(11) NOT NULL,
  `log_ip` varchar(255) NOT NULL,
  `log_status` tinyint(1) NOT NULL,
  `module` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14489 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%mail_list`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%mail_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail_address` varchar(255) NOT NULL,
  `city_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_address_idx` (`mail_address`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%mail_server`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%mail_server` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `smtp_server` varchar(255) NOT NULL,
  `smtp_name` varchar(255) NOT NULL,
  `smtp_pwd` varchar(255) NOT NULL,
  `is_ssl` tinyint(1) NOT NULL,
  `smtp_port` varchar(255) NOT NULL,
  `use_limit` int(11) NOT NULL,
  `is_reset` tinyint(1) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `total_use` int(11) NOT NULL,
  `is_verify` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%medal`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%medal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `config` text NOT NULL,
  `icon` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `route` text NOT NULL,
  `allow_check` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%message`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `admin_reply` text NOT NULL,
  `admin_id` int(11) NOT NULL,
  `rel_table` varchar(255) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_0` (`user_id`,`is_effect`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=226 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%message_type`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%message_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) NOT NULL,
  `is_fix` tinyint(1) NOT NULL,
  `show_name` varchar(255) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `%DB_PREFIX%message_type`
--

INSERT INTO `%DB_PREFIX%message_type` (`id`, `type_name`, `is_fix`, `show_name`, `is_effect`, `sort`) VALUES
(1, 'deal', 1, '普通贷款', 1, 0),
(2, 'transfer', 1, '债券转让', 1, 0),
(3, 'transfer', 1, '债券转让', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%mobile_list`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%mobile_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(255) NOT NULL,
  `city_id` int(11) NOT NULL,
  `verify_code` varchar(255) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mobile_idx` (`mobile`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%mobile_verify_code`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%mobile_verify_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `verify_code` varchar(10) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `create_time` int(11) NOT NULL,
  `client_ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `%DB_PREFIX%mobile_verify_code`
--

INSERT INTO `%DB_PREFIX%mobile_verify_code` (`id`, `verify_code`, `mobile`, `create_time`, `client_ip`) VALUES
(1, '550048', '13788888888', 1455434659, '127.0.0.1');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%money_type`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%money_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '分类名称',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT 'type类型 0 ~ ？',
  `class` varchar(100) NOT NULL DEFAULT '' COMMENT '所属分类 money  lock_money site_money  point  score',
  `sort` int(11) NOT NULL DEFAULT '0',
  `is_effect` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='资金日志分类类型表' AUTO_INCREMENT=135 ;

--
-- 转存表中的数据 `%DB_PREFIX%money_type`
--

INSERT INTO `%DB_PREFIX%money_type` (`id`, `name`, `type`, `class`, `sort`, `is_effect`) VALUES
(1, '结存', 0, 'money', 0, 1),
(2, '充值', 1, 'money', 1, 1),
(3, '投标成功', 2, 'money', 2, 1),
(4, '招标成功', 3, 'money', 3, 1),
(5, '偿还本息', 4, 'money', 4, 1),
(6, '回收本息', 5, 'money', 5, 1),
(7, '提前还款', 6, 'money', 6, 1),
(8, '提前回收', 7, 'money', 7, 1),
(9, '申请提现', 8, 'money', 8, 1),
(10, '提现手续费', 9, 'money', 9, 1),
(11, '借款管理费', 10, 'money', 10, 1),
(12, '逾期罚息', 11, 'money', 11, 1),
(13, '逾期管理费', 12, 'money', 12, 1),
(14, '人工充值', 13, 'money', 13, 1),
(15, '借款服务费', 14, 'money', 14, 1),
(16, '出售债权', 15, 'money', 15, 1),
(17, '购买债权', 16, 'money', 16, 1),
(18, '债权转让管理费', 17, 'money', 17, 1),
(19, '开户奖励', 18, 'money', 18, 1),
(20, '流标返还', 19, 'money', 19, 1),
(21, '投标管理费', 20, 'money', 20, 1),
(22, '投标逾期收入', 21, 'money', 21, 1),
(23, '兑换', 22, 'money', 22, 1),
(24, '邀请返利', 23, 'money', 23, 1),
(25, '投标返利', 24, 'money', 24, 1),
(26, '签到奖励', 25, 'money', 25, 1),
(27, '逾期罚金（垫付后）', 26, 'money', 26, 1),
(28, '其他费用', 27, 'money', 27, 1),
(29, '投资奖励', 28, 'money', 28, 1),
(30, '非提现金奖励', 29, 'money', 29, 1),
(31, '兑换', 22, 'nmc_amount', 0, 1),
(32, '投资奖励', 28, 'nmc_amount', 1, 1),
(33, '非提现金奖励', 29, 'nmc_amount', 2, 1),
(34, '结存', 0, 'score', 0, 1),
(35, '充值', 1, 'score', 1, 1),
(36, '投标成功', 2, 'score', 2, 1),
(37, '招标成功', 3, 'score', 3, 1),
(38, '申请提现', 8, 'score', 4, 1),
(39, '提现手续费', 9, 'score', 5, 1),
(40, '人工操作', 13, 'score', 6, 1),
(41, '开户奖励', 18, 'score', 7, 1),
(42, '兑换', 22, 'score', 8, 1),
(43, '签到奖励', 25, 'score', 9, 1),
(44, '投资奖励', 28, 'score', 10, 1),
(45, '福利奖励', 29, 'score', 11, 1),
(46, '结存', 0, 'lock_money', 0, 1),
(47, '充值', 1, 'lock_money', 1, 1),
(48, '投标成功', 2, 'lock_money', 2, 1),
(49, '申请提现', 8, 'lock_money', 3, 1),
(50, '提现手续费', 9, 'lock_money', 4, 1),
(51, '人工操作', 13, 'lock_money', 5, 1),
(52, '开户奖励', 18, 'lock_money', 6, 1),
(53, '流标返还', 19, 'lock_money', 7, 1),
(54, '结存', 1, 'point', 0, 1),
(55, '偿还本息', 4, 'point', 1, 1),
(56, '回收本息', 5, 'point', 2, 1),
(57, '提前还款', 6, 'point', 3, 1),
(58, '提前回收', 7, 'point', 4, 1),
(59, '申请认证', 8, 'point', 5, 1),
(60, '逾期还款', 11, 'point', 6, 1),
(61, '人工操作', 13, 'point', 7, 1),
(62, '借款服务费', 14, 'point', 8, 1),
(63, '开户奖励', 18, 'point', 9, 1),
(64, '投标返利', 24, 'point', 10, 1),
(65, '签到奖励', 25, 'point', 11, 1),
(66, '充值手续费', 1, 'site_money', 0, 1),
(67, '提现手续费', 9, 'site_money', 1, 1),
(68, '借款管理费', 10, 'site_money', 2, 1),
(69, '逾期管理费', 12, 'site_money', 3, 1),
(70, '人工充值', 13, 'site_money', 4, 1),
(71, '借款服务费', 14, 'site_money', 5, 1),
(72, '债权转让管理费', 17, 'site_money', 6, 1),
(73, '开户奖励', 18, 'site_money', 7, 1),
(74, '投标管理费', 20, 'site_money', 8, 1),
(75, '兑换', 22, 'site_money', 9, 1),
(76, '邀请返利', 23, 'site_money', 10, 1),
(77, '投标返利', 24, 'site_money', 11, 1),
(78, '签到奖励', 25, 'site_money', 12, 1),
(79, '逾期罚金（垫付后）', 26, 'site_money', 13, 1),
(80, '其他费用', 27, 'site_money', 14, 1),
(81, '投资奖励', 28, 'site_money', 15, 1),
(82, '非提现金奖励', 29, 'site_money', 16, 1),
(83, '配资本金', 30, 'money', 30, 1),
(84, '配资本金', 30, 'lock_money', 30, 1),
(85, '配资预交款', 31, 'money', 31, 1),
(86, '配资预交款', 31, 'lock_money', 31, 1),
(87, '配资审核费', 32, 'money', 32, 1),
(88, '配资审核费', 32, 'lock_money', 32, 1),
(89, '配资审核费', 32, 'site_money', 32, 1),
(90, '配资服务费', 33, 'money', 33, 1),
(91, '配资服务费', 33, 'site_money', 33, 1),
(92, '配资利息', 34, 'money', 34, 1),
(93, '配资利息', 34, 'site_money', 34, 1),
(94, '配资收益', 35, 'money', 35, 1),
(95, '配资收益', 35, 'site_money', 35, 1),
(98, '配资提取赢余', 37, 'money', 37, 1),
(99, '配资交易佣金', 38, 'money', 38, 1),
(96, '配资投资', 36, 'money', 36, 1),
(97, '配资投资', 36, 'lock_money', 33, 1),
(100, '配资交易佣金', 38, 'site_money', 38, 1),
(101, '理财赎回本金', 39, 'money', 0, 1),
(102, '理财赎回收益', 40, 'money', 0, 1),
(103, '理财赎回手续费', 41, 'money', 0, 1),
(104, '理财本金', 42, 'money', 0, 1),
(105, '理财购买手续费', 43, 'money', 0, 1),
(106, '理财冻结资金', 44, 'lock_money', 0, 1),
(107, '理财服务费', 45, 'money', 0, 1),
(108, '理财发放资金', 46, 'money', 0, 1),
(109, '体验金收益', 47, 'money', 0, 1),
(110, '体验金收益', 47, 'site_money', 0, 1),
(125, '众筹购买', 53, 'score', 53, 1),
(111, '平台垫付', 48, 'money', 49, 1),
(112, '签到奖励', 25, 'nmc_money', 3, 1),
(113, '平台垫付收回', 49, 'money', 50, 1),
(114, '众筹投资', 50, 'money', 51, 1),
(115, '众筹退款', 51, 'money', 52, 1),
(116, '众筹分红', 52, 'money', 53, 1),
(117, '众筹购买赠送', 50, 'score', 52, 1),
(118, '众筹购买赠送', 50, 'point', 53, 1),
(119, '众筹退款', 51, 'score', 52, 1),
(120, '众筹退款', 51, 'point', 51, 1),
(121, '加息券增加的利息', 53, 'money', 53, 1),
(122, '体验金回收', 54, 'money', 0, 1),
(123, '众筹邀请赠送', 52, 'score', 52, 1),
(124, '众筹邀请赠送', 52, 'point', 52, 1),
(126, '发放理财赎回本金', 39, 'lock_money', 54, 1),
(127, '发放理财赎回收益', 40, 'lock_money', 54, 1),
(128, '理财服务费', 45, 'lock_money', 54, 1),
(129, '冻结保证金', 44, 'lock_money', 54, 1),
(130, '理财购买手续费', 43, 'site_money', 43, 1),
(131, '理财成交服务费', 50, 'site_money', 50, 1),
(134, '理财成交服务费', 50, 'money', 50, 1),
(132, '理财赎回手续费', 41, 'site_money', 41, 1),
(133, '理财平台收益', 45, 'site_money', 45, 1);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%msg_box`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%msg_box` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `system_msg_id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `group_key` varchar(200) NOT NULL,
  `is_notice` tinyint(1) NOT NULL COMMENT '1系统通知 2材料通过 3审核失败 4额度更新 5提现申请 6提现成功 7提现失败 8还款成功 9回款成功 10借款流标 11投标流标 12三日内还款 13标被留言 14标留言被回复 15借款投标过半 16投标满标 17债权转让失败，18债权转让成功 19续约成功 20续约失败 0用户信息',
  `fav_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4526 ;

--
-- 转存表中的数据 `%DB_PREFIX%msg_box`
--

INSERT INTO `%DB_PREFIX%msg_box` (`id`, `title`, `content`, `from_user_id`, `to_user_id`, `create_time`, `is_read`, `is_delete`, `system_msg_id`, `type`, `group_key`, `is_notice`, `fav_id`) VALUES
(4525, '您信用等级升级为：HR', '', 0, 1, 1455434549, 0, 0, 0, 0, '0_1_1_4525', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%msg_conf`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%msg_conf` (
  `user_id` int(11) NOT NULL,
  `mail_asked` tinyint(1) NOT NULL COMMENT '有人对我的借款列表提问（邮件）',
  `sms_asked` tinyint(1) NOT NULL COMMENT '有人对我的借款列表提问（邮件）',
  `mail_bid` tinyint(1) NOT NULL COMMENT '有人向我的借款列表投标（邮件）',
  `sms_bid` tinyint(1) NOT NULL COMMENT '有人向我的借款列表投标（短信）',
  `mail_myfail` tinyint(1) NOT NULL COMMENT '我的借款列表流标（邮件）',
  `sms_myfail` tinyint(1) NOT NULL COMMENT '我的借款列表流标（短信）',
  `mail_half` tinyint(1) NOT NULL COMMENT '我的借款列表完成度超过50%',
  `sms_half` tinyint(1) NOT NULL COMMENT '我的借款列表完成度超过50%',
  `mail_bidsuccess` tinyint(1) NOT NULL COMMENT '我的投标成功',
  `sms_bidsuccess` tinyint(1) NOT NULL COMMENT '我的投标成功',
  `mail_fail` tinyint(1) NOT NULL COMMENT '我的投标流标',
  `sms_fail` tinyint(1) NOT NULL COMMENT '我的投标流标',
  `mail_bidrepaid` tinyint(1) NOT NULL COMMENT '我收到一笔还款',
  `sms_bidrepaid` tinyint(1) NOT NULL COMMENT '我收到一笔还款',
  `mail_answer` tinyint(1) NOT NULL COMMENT '借入者回答了我对借款列表的提问',
  `sms_answer` tinyint(1) NOT NULL COMMENT '借入者回答了我对借款列表的提问',
  `mail_transferfail` tinyint(1) NOT NULL COMMENT '债权转让失败提醒',
  `sms_transferfail` tinyint(1) NOT NULL COMMENT '债权转让失败提醒',
  `mail_transfer` tinyint(1) NOT NULL COMMENT '债权转让成功提醒',
  `sms_transfer` tinyint(1) NOT NULL COMMENT '债权转让成功提醒',
  `mail_redenvelope` tinyint(1) NOT NULL COMMENT '红包奖励提醒',
  `sms_redenvelope` tinyint(1) NOT NULL COMMENT '红包奖励提醒',
  `mail_rate` tinyint(1) NOT NULL COMMENT '收益率奖励提醒',
  `sms_rate` tinyint(1) NOT NULL COMMENT '收益率奖励提醒',
  `mail_integral` tinyint(1) NOT NULL COMMENT '积分奖励提醒',
  `sms_integral` tinyint(1) NOT NULL COMMENT '积分奖励提醒',
  `mail_gift` tinyint(1) NOT NULL COMMENT '礼品奖励提醒',
  `sms_gift` tinyint(1) NOT NULL COMMENT '礼品奖励提醒',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%msg_system`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%msg_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `create_time` int(11) NOT NULL,
  `user_names` text NOT NULL,
  `user_ids` text NOT NULL,
  `end_time` int(11) NOT NULL,
  `send_type` tinyint(4) NOT NULL COMMENT '发送类型',
  `send_type_id` int(11) NOT NULL COMMENT '发送类型 ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%msg_template`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%msg_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `type` tinyint(1) NOT NULL,
  `is_html` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=86 ;

--
-- 转存表中的数据 `%DB_PREFIX%msg_template`
--

INSERT INTO `%DB_PREFIX%msg_template` (`id`, `name`, `content`, `type`, `is_html`) VALUES
(3, 'TPL_MAIL_USER_VERIFY', '尊敬的用户您的验证码是【{$verify.code}】，此验证码只能用来注册。', 1, 1),
(4, 'TPL_MAIL_USER_PASSWORD', '尊敬的用户您的验证码是【{$verify.code}】。', 1, 1),
(30, 'TPL_GEN_SUCCESS_SMS', '尊敬的{$notice.site_name}用户{$notice.user_name}，您的“{$notice.deal_name}”续约已成功通过，感谢您的关注和支持。', 0, 0),
(5, 'TPL_SMS_PAYMENT', '{$payment_notice.user_name}你好,你所下订单{$payment_notice.order_sn}的收款单{$payment_notice.notice_sn}金额{$payment_notice.money_format}于{$payment_notice.pay_time_format}支付成功', 0, 0),
(6, 'TPL_MAIL_PAYMENT', '{$payment_notice.user_name}你好,你所下订单{$payment_notice.order_sn}的收款单{$payment_notice.notice_sn}金额{$payment_notice.money_format}于{$payment_notice.pay_time_format}支付成功', 1, 0),
(9, 'TPL_SMS_VERIFY_CODE', '你的手机号为{$verify.mobile},验证码为{$verify.code}', 0, 0),
(10, 'TPL_DEAL_NOTICE_SMS', '{$notice.site_name}又有新借款啦!{$notice.deal_name},欢迎来投标{$notice.site_url}', 0, 0),
(16, 'TPL_MAIL_DEAL_FAILED', '<p>尊敬的用户{$notice.user_name}：&nbsp; </p>\r\n<p>遗憾的通知您，您于{$notice.deal_publish_time}发布的借款“{$notice.deal_name}”流标，您的本次借款行为失败。&nbsp;</p><p>您借款失败的可能原因为：&nbsp; </p>\r\n<br>\r\n<br>\r\n1. 您没能按时提交四项必要信用认证的材料。\r\n<br>\r\n<br>\r\n2. 您在招标期间没有筹集到足够的借款。&nbsp;&nbsp; \r\n<p>如果您属于认证未通过流标，为了您能够成功贷款，请凑齐申请贷款所需要的材料。您可以点击<a href="{$notice.help_url}" target="_blank">需要提供哪些材料？</a>来了解更多所需材料的详情。进行更多的信用认证将有助您获得更高的贷款额度。</p>\r\n<p>如果您属于招标到期流标，为了您能够成功贷款，请适度提高贷款利率，将有助您更快的获得贷款。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>点击 <a href="{$notice.send_deal_url}">这里</a>重新发布借款。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>感谢您对我们的支持与关注。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>{$notice.site_name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>注：此邮件由系统自动发送，请勿回复！&nbsp; </p>\r\n<p>如果您有任何疑问，请您查看 <a href="{$notice.help_url}" target="_blank">帮助</a>，或访问 <a href="{$notice.site_url}" target="_blank">客服中心</a></p>\r\n<p>如果您觉得收到过多邮件，可以点击 <a href="{$notice.msg_cof_setting_url}" target="_blank">这里</a>进行设置\r\n&nbsp; </p>', 1, 1),
(17, 'TPL_MAIL_LOAD_FAILED', '<p>尊敬的用户{$notice.user_name}：&nbsp; </p>\r\n<p>遗憾的通知您，您于{$notice.deal_load_time}所投的借款“{$notice.deal_name}”流标，您的本次投标行为失败。&nbsp;</p><p>您所投的借款失败的可能原因为：&nbsp; </p>\r\n<br>\r\n<br>\r\n1. 借款者没能按时提交四项必要信用认证的材料。\r\n<br>\r\n<br>\r\n2. 借款者在招标期间没有筹集到足够的借款。&nbsp;&nbsp; \r\n\r\n<p>感谢您对我们的支持与关注。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>{$notice.site_name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>注：此邮件由系统自动发送，请勿回复！&nbsp; </p>\r\n<p>如果您有任何疑问，请您查看 <a href="{$notice.help_url}" target="_blank">帮助</a>，或访问 <a href="{$notice.site_url}" target="_blank">客服中心</a></p>\r\n<p>如果您觉得收到过多邮件，可以点击 <a href="{$notice.msg_cof_setting_url}" target="_blank">这里</a>进行设置\r\n&nbsp; </p>', 1, 1),
(18, 'TPL_DEAL_THREE_SMS', '尊敬的{$notice.site_name}用户 {$notice.user_name} ，您本期贷款的还款日是{$notice.repay_time_d}日，还款金额{$notice.repay_money}元，请按时还款。', 0, 0),
(19, 'TPL_MAIL_DEAL_MSG', '<p>尊敬的用户{$notice.user_name}：</p>\r\n<p>您好，用户{$notice.msg_user_name}对您发布的借款列表“{$notice.deal_name}”进行了以下留言：</p>\r\n<p>“{$notice.message}”</p>\r\n<p>请您登录{$notice.site_name}借款详情页面查看答复。</p>\r\n<p>点击 <a href="{$notice.deal_url}" target="_blank">这里</a>进行答复。</p>\r\n<p>感谢您对我们的支持与关注！</p>\r\n<p>{$notice.site_name}</p>\r\n<p>注：此邮件由系统自动发送，请勿回复！</p>\r\n<p>如果您有任何疑问，请您查看 <a href="{$notice.help_url}" target="_blank">帮助</a>，或访问 <a href="#" target="_blank">客服中心</a></p>', 1, 1),
(20, 'TPL_MAIL_DEAL_REPLY_MSG', '<p>尊敬的用户{$notice.user_name}：</p>\r\n<p>您好，用户{$notice.msg_user_name}回复了您对借款列表“{$notice.deal_name}”的留言。具体回复如下：</p>\r\n<p>“{$notice.message}”</p>\r\n<p>点击 <a href="{$notice.deal_url}" target="_blank">这里</a>查看借款列表详情或进行投标。</p>\r\n<p>感谢您对我们的支持与关注！</p>\r\n<p>{$notice.site_name}</p>\r\n<p>注：此邮件由系统自动发送，请勿回复！</p>\r\n<p>如果您有任何疑问，请您查看 <a href="{$notice.help_url}" target="_blank">帮助</a>，或访问 <a href="#" target="_blank">客服中心</a></p>', 1, 1),
(21, 'TPL_DEAL_THREE_EMAIL', '<p>尊敬的用户{$notice.user_name}：&nbsp; </p>\r\n<p>您的借款“<a href="{$notice.deal_url}">{$notice.deal_name}</a>”本期还款日是{$notice.repay_time_d}日，还款金额{$notice.repay_money}元，请按时还款。【{$notice.site_name}】 </p>\r\n<p>点击 <a href="{$notice.repay_url}">这里</a>进行还款。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>感谢您对我们的支持与关注。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>{$notice.site_name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>注：此邮件由系统自动发送，请勿回复！&nbsp; </p>\r\n<p>如果您有任何疑问，请您查看 <a href="{$notice.help_url}" target="_blank">帮助</a>，或访问 <a href="{$notice.site_url}" target="_blank">客服中心</a></p>\r\n<p>如果您觉得收到过多邮件，可以点击 <a href="{$notice.msg_cof_setting_url}" target="_blank">这里</a>进行设置rn&nbsp; </p>', 1, 1),
(22, 'TPL_DEAL_HALF_EMAIL', '<p>尊敬的用户{$notice.user_name}：&nbsp; </p>\r\n<p>您的借款“<a href="{$notice.deal_url}">{$notice.deal_name}</a>”招标完成度超过50%【{$notice.site_name}】 </p>\r\n<p>感谢您对我们的支持与关注。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>{$notice.site_name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>注：此邮件由系统自动发送，请勿回复！&nbsp; </p>\r\n<p>如果您有任何疑问，请您查看 <a href="{$notice.help_url}" target="_blank">帮助</a>，或访问 <a href="{$notice.site_url}" target="_blank">客服中心</a></p>\r\n<p>如果您觉得收到过多邮件，可以点击 <a href="{$notice.msg_cof_setting_url}" target="_blank">这里</a>进行设置\r\n&nbsp; </p>', 1, 1),
(24, 'TPL_DEAL_LOAD_REPAY_SMS', '尊敬的{$notice.site_name}用户{$notice.user_name}，您所投的标“{$notice.deal_name}”回款{$notice.repay_money}元，感谢您的关注和支持。', 0, 0),
(25, 'TPL_CARYY_SUCCESS_SMS', '尊敬的{$notice.site_name}用户{$notice.user_name}，您的{$notice.carry_money}元提现已成功转入您的银行账户，请注意查收，感谢您的关注和支持。', 0, 0),
(26, 'TPL_MAIL_LOAD_SUCCESS', '<p>尊敬的用户{$notice.user_name}：&nbsp; </p>\r\n<p>很高兴的通知您，您于{$notice.deal_load_time}所投的借款“{$notice.deal_name}”满标，您的本次投标行为成功。&nbsp;</p>\r\n<br>\r\n<br>\r\n<p>点击 <a href="{$notice.send_deal_url}">这里</a>查看您所发布借款。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>感谢您对我们的支持与关注。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>{$notice.site_name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>注：此邮件由系统自动发送，请勿回复！&nbsp; </p>\r\n<p>如果您有任何疑问，请您查看 <a href="{$notice.help_url}" target="_blank">帮助</a>，或访问 <a href="{$notice.site_url}" target="_blank">客服中心</a></p>\r\n<p>如果您觉得收到过多邮件，可以点击 <a href="{$notice.msg_cof_setting_url}" target="_blank">这里</a>进行设置\r\n&nbsp; </p>', 1, 1),
(27, 'TPL_MAIL_TRANSFER_FAILED', '<p>尊敬的用户{$notice.user_name}：&nbsp; </p>\r\n<p>很遗憾的通知您，您于{$notice.transfer_time}转让的债权，编号：“{$notice.transfer_id}”因为“{$notice.bad_msg}”自动撤销了。&nbsp;</p>\r\n<br>\r\n<br>\r\n<p>点击 <a href="{$notice.send_transfer_url}">这里</a>查看您所发布的转让信息。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>感谢您对我们的支持与关注。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>{$notice.site_name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>注：此邮件由系统自动发送，请勿回复！&nbsp; </p>\r\n<p>如果您有任何疑问，请您查看 <a href="{$notice.help_url}" target="_blank">帮助</a>，或访问 <a href="{$notice.site_url}" target="_blank">客服中心</a></p>\r\n<p>如果您觉得收到过多邮件，可以点击 <a href="{$notice.msg_cof_setting_url}" target="_blank">这里</a>进行设置\r\n&nbsp; </p>', 1, 1),
(28, 'TPL_MAIL_TRANSFER_SUCCESS', '<p>尊敬的用户{$notice.user_name}：&nbsp; </p>\r\n<p>很高兴的通知您，您于{$notice.transfer_time}转让的债权，编号：“{$notice.transfer_id}”已成功转让。&nbsp;</p>\r\n<br>\r\n<br>\r\n<p>点击 <a href="{$notice.send_deal_url}">这里</a>查看您所发布的转让信息。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>感谢您对我们的支持与关注。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>{$notice.site_name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>注：此邮件由系统自动发送，请勿回复！&nbsp; </p>\r\n<p>如果您有任何疑问，请您查看 <a href="{$notice.help_url}" target="_blank">帮助</a>，或访问 <a href="{$notice.site_url}" target="_blank">客服中心</a></p>\r\n<p>如果您觉得收到过多邮件，可以点击 <a href="{$notice.msg_cof_setting_url}" target="_blank">这里</a>进行设置\r\n&nbsp; </p>', 1, 1),
(29, 'TPL_SMS_DEAL_DELETE', '尊敬的用户{$notice.user_name}，遗憾的通知您，您于{$notice.deal_publish_time}发布的借款“{$notice.deal_name}”因“{$notice.delete_msg}”审核失败了。', 0, 0),
(31, 'TPL_QUOTA_SUCCESS_SMS', '尊敬的{$notice.site_name}用户{$notice.user_name}，您的{$notice.quota_money}元信用额度申请已成功，感谢您的关注和支持。', 0, 0),
(32, 'TPL_QUOTA_FAILED_SMS', '尊敬的{$notice.site_name}用户{$notice.user_name}，您的{$notice.quota_money}元信用额度申请 因 “{$notice.msg}” 审核失败了。', 0, 0),
(33, 'TPL_SMS_REPAY_SUCCESS_MSG', '尊敬的{$notice.site_name}用户{$notice.user_name}，您的借款“{$notice.deal_name}”在第{$notice.index}期{$notice.status}还款{$notice.all_money}元，感谢您的关注和支持。', 0, 0),
(34, 'TPL_QUOTA_SUCCESS_SMS', '尊敬的{$notice.site_name}用户{$notice.user_name}，您的{$notice.quota_money}元信用额度申请已成功，感谢您的关注和支持。', 0, 0),
(35, 'TPL_QUOTA_FAILED_SMS', '尊敬的{$notice.site_name}用户{$notice.user_name}，您的{$notice.quota_money}元信用额度申请 因 “{$notice.msg}” 审核失败了。', 0, 0),
(36, 'TPL_SMS_REPAY_SUCCESS_MSG', '尊敬的{$notice.site_name}用户{$notice.user_name}，您的借款“{$notice.deal_name}”在第{$notice.index}期{$notice.status}还款{$notice.all_money}元，感谢您的关注和支持。', 0, 0),
(37, 'TPL_CARYY_SUCCESS_SMS', '尊敬的{$notice.site_name}用户{$notice.user_name}，您的{$notice.carry_money}元提现已成功转入您的银行账户，请注意查收，感谢您的关注和支持。', 0, 0),
(38, 'TPL_MAIL_LOAD_SUCCESS', '<p>尊敬的用户{$notice.user_name}：&nbsp; </p>\r\n<p>很高兴的通知您，您于{$notice.deal_load_time}所投的借款“{$notice.deal_name}”满标，您的本次投标行为成功。&nbsp;</p>\r\n<br>\r\n<br>\r\n<p>点击 <a href="{$notice.send_deal_url}">这里</a>查看您所发布借款。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>感谢您对我们的支持与关注。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>{$notice.site_name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>注：此邮件由系统自动发送，请勿回复！&nbsp; </p>\r\n<p>如果您有任何疑问，请您查看 <a href="{$notice.help_url}" target="_blank">帮助</a>，或访问 <a href="{$notice.site_url}" target="_blank">客服中心</a></p>\r\n<p>如果您觉得收到过多邮件，可以点击 <a href="{$notice.msg_cof_setting_url}" target="_blank">这里</a>进行设置\r\n&nbsp; </p>', 1, 1),
(39, 'TPL_MAIL_TRANSFER_FAILED', '<p>尊敬的用户{$notice.user_name}：&nbsp; </p>\r\n<p>很遗憾的通知您，您于{$notice.transfer_time}转让的债权，编号：“{$notice.transfer_id}”因为“{$notice.bad_msg}”自动撤销了。&nbsp;</p>\r\n<br>\r\n<br>\r\n<p>点击 <a href="{$notice.send_transfer_url}">这里</a>查看您所发布的转让信息。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>感谢您对我们的支持与关注。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>{$notice.site_name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>注：此邮件由系统自动发送，请勿回复！&nbsp; </p>\r\n<p>如果您有任何疑问，请您查看 <a href="{$notice.help_url}" target="_blank">帮助</a>，或访问 <a href="{$notice.site_url}" target="_blank">客服中心</a></p>\r\n<p>如果您觉得收到过多邮件，可以点击 <a href="{$notice.msg_cof_setting_url}" target="_blank">这里</a>进行设置\r\n&nbsp; </p>', 1, 1),
(40, 'TPL_MAIL_TRANSFER_SUCCESS', '<p>尊敬的用户{$notice.user_name}：&nbsp; </p>\r\n<p>很高兴的通知您，您于{$notice.transfer_time}转让的债权，编号：“{$notice.transfer_id}”已成功转让。&nbsp;</p>\r\n<br>\r\n<br>\r\n<p>点击 <a href="{$notice.send_deal_url}">这里</a>查看您所发布的转让信息。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>感谢您对我们的支持与关注。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>{$notice.site_name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>\r\n<p>注：此邮件由系统自动发送，请勿回复！&nbsp; </p>\r\n<p>如果您有任何疑问，请您查看 <a href="{$notice.help_url}" target="_blank">帮助</a>，或访问 <a href="{$notice.site_url}" target="_blank">客服中心</a></p>\r\n<p>如果您觉得收到过多邮件，可以点击 <a href="{$notice.msg_cof_setting_url}" target="_blank">这里</a>进行设置\r\n&nbsp; </p>', 1, 1),
(41, 'TPL_SMS_DEAL_DELETE', '尊敬的用户{$notice.user_name}，遗憾的通知您，您于{$notice.deal_publish_time}发布的借款“{$notice.deal_name}”因“{$notice.delete_msg}”审核失败了。', 0, 0),
(42, 'TPL_GEN_SUCCESS_SMS', '尊敬的{$notice.site_name}用户{$notice.user_name}，您的“{$notice.deal_name}”续约已成功通过，感谢您的关注和支持。', 0, 0),
(43, 'TPL_QUOTA_SUCCESS_SMS', '尊敬的{$notice.site_name}用户{$notice.user_name}，您的{$notice.quota_money}元信用额度申请已成功，感谢您的关注和支持。', 0, 0),
(44, 'TPL_QUOTA_FAILED_SMS', '尊敬的{$notice.site_name}用户{$notice.user_name}，您的{$notice.quota_money}元信用额度申请 因 “{$notice.msg}” 审核失败了。', 0, 0),
(45, 'TPL_SMS_REPAY_SUCCESS_MSG', '尊敬的{$notice.site_name}用户{$notice.user_name}，您的借款“{$notice.deal_name}”在第{$notice.index}期{$notice.status}还款{$notice.all_money}元，感谢您的关注和支持。', 0, 0),
(46, 'TPL_MAIL_RED_ENVELOPE', '尊敬的{$notice.site_name}用户{$notice.user_name}，您的投标“{$notice.deal_name}”获得非提现金额奖励，奖励金额{$notice.gift_value}，已于{$notice.release_date}发送。', 1, 0),
(47, 'TPL_SMS_RED_ENVELOPE', '尊敬的{$notice.site_name}用户{$notice.user_name}，您的投标“{$notice.deal_name}”获得非提现金额奖励，奖励金额{$notice.gift_value}，已于{$notice.release_date}发送。', 0, 0),
(48, 'TPL_MAIL_RATE', '尊敬的{$notice.site_name}用户{$notice.user_name}，您的投标“{$notice.deal_name}”获得收益率奖励，收益率{$notice.gift_value}，奖励已于{$notice.release_date}发送。', 1, 0),
(49, 'TPL_SMS_RATE', '尊敬的{$notice.site_name}用户{$notice.user_name}，您的投标“{$notice.deal_name}”获得收益率奖励，收益率{$notice.gift_value}，奖励已于{$notice.release_date}发送。', 0, 0),
(50, 'TPL_MAIL_INTEGRAL', '尊敬的{$notice.site_name}用户{$notice.user_name}，您的投标“{$notice.deal_name}”获得积分奖励，积分值{$notice.gift_value}，奖励已于{$notice.release_date}发送。', 1, 0),
(51, 'TPL_SMS_INTEGRAL', '尊敬的{$notice.site_name}用户{$notice.user_name}，您的投标“{$notice.deal_name}”获得积分奖励，积分值{$notice.gift_value}，奖励已于{$notice.release_date}发送。', 0, 0),
(52, 'TPL_MAIL_GIFT', '尊敬的{$notice.site_name}用户{$notice.user_name}，您的投标“{$notice.deal_name}”获得礼品奖励，礼品{$notice.gift_value}，奖励已于{$notice.release_date}发送。', 1, 0),
(53, 'TPL_SMS_GIFT', '尊敬的{$notice.site_name}用户{$notice.user_name}，您的投标“{$notice.deal_name}”获得礼品奖励，礼品{$notice.gift_value}，奖励已于{$notice.release_date}发送。', 0, 0),
(54, 'TPL_DEAL_OVER_FIVE', '<p>您在".app_conf("SHOP_TITLE")."的借款“<a href=\\"".$deal[''url'']."\\">".$deal[''name'']."</a>”完成度超过50%', 0, 0),
(67, 'TPL_INS_SUCCESS_SHEN_HE', '您好，您于 {$sh_notice.time}在{$sh_notice.shop_title}提交的{$sh_notice.type_name}信息已经成功通过审核。<br>您目前的信用分数为{$sh_notice.point}分({$sh_notice.dengji}级),信用额度为{$sh_notice.quota}', 2, 0),
(68, 'TPL_INS_DEAL_REPAY_SMS', '您在{$sh_notice.shop_title}的借款{$sh_notice.deal_name}，最近一期还款将于{$sh_notice.repay_time}日到期，需还金额{$sh_notice.money}元。', 2, 0),
(69, 'TPL_INS_FAILED_SHEN_HE', '您好，您于 {$sh_notice.time}在{$sh_notice.shop_title}提交的{$sh_notice.type_name}信息未能通过审核。未能通过的原因是{$sh_notice.msg}.', 2, 0),
(70, 'TPL_INS_SXQUORA_SUCCESS_SMS', '您于{$sh_notice.time}提交的{$sh_notice.quota}授信额度申请成功，请查看您的申请记录。', 2, 0),
(71, 'TPL_INS_SXQUORA_FAILED_SMS', '您于{$sh_notice.time}提交的{$sh_notice.quota}授信额度申请申请被我们驳回，驳回原因{$sh_notice.msg};', 2, 0),
(72, 'TPL_INS_XY_SUCCESS_SMS', '您于{$sh_notice.time}提交的{$sh_notice.deal_name}续约申请通过。', 2, 0),
(73, 'TPL_INS_XY_FAILED_SMS', '您于{$sh_notice.time}提交的{$sh_notice.deal_name}续约申请被我们驳回，驳回原因{$sh_notice.msg}.', 2, 0),
(74, 'TPL_INS_QUORA_SUCCESS', '您于{$sh_notice.time}提交的{$sh_notice.quota}信用额度申请成功，请查看您的申请记录。', 2, 0),
(75, 'TPL_INS_QUOTA_TZ', '您好，{$sh_notice.shop_title}审核部门经过综合评估您的信用资料及网站还款记录，将您的信用额度调整为：{$sh_notice.quota}元.', 2, 0),
(76, 'TPL_INS_QUORA_FAILED', '您于{$sh_notice.time}信用额度申请申请被我们驳回，驳回原因{$sh_notice.msg}.', 2, 0),
(77, 'TPL_INS_WITHDRAWS_SUCCESS', '您于{$sh_notice.time}提交的{$sh_notice.money}提现申请汇款成功，请查看您的资金记录。', 2, 0),
(78, 'TPL_INS_WITHDRAWS_FAILED', '您于{$sh_notice.time}提交的{$sh_notice.money}提现申请提现申请被我们驳回，驳回原因{$sh_notice.msg}.', 2, 0),
(79, 'TPL_SMS_DEAL_SUCCESS', '尊敬的{$notice.site_name}用户{$notice.user_name}，您的借款“{$notice.deal_name}” 已满标放款！', 0, 0),
(80, 'TPL_DEAL_OVER_FIVE', '尊敬的用户{$notice.user_name}，您于{$notice.time}投标了借款“{$notice.deal_name}”，冻结资金{$notice.money}。', 0, 0),
(81, 'TPL_SMS_CHARGING_FAILED_MSG', '尊敬的{$notice.site_name}用户{$notice.user_name}，您的{$notice.order_sn}配资单号,{$notice.fee_date}自动扣费失败,请及时备足资金{$notice.rate_money}到帐户余额,否则将会被强制平仓。', 0, 0),
(82, 'TPL_SMS_CHARGING_SUCCESS_MSG', '尊敬的{$notice.site_name}用户{$notice.user_name}，您的{$notice.order_sn}配资单号,{$notice.fee_date}自动扣费{$notice.rate_money}成功,预计下次扣费时间为{$notice.next_fee_date}。', 0, 0),
(83, 'TPL_SMS_PEIZI_SUCCESS_MSG', '尊敬的{$notice.site_name}用户{$notice.user_name}，您的{$notice.order_sn}配资单号审核通过,股票帐户:{$notice.stock_sn},密码:{$notice.stock_pwd};交易开始时间:{$notice.begin_date}。', 0, 0),
(84, 'TPL_INS_VIP_UPGRADE', '尊敬的{由于{$sh_notice.causes} 您的VIP等级从{$sh_notice.original_vip_id}升级为 {$sh_notice.now_vip_id}', 2, 0),
(85, 'TPL_INS_VIP_DOWNGRADE', '尊敬的{由于{$sh_notice.causes} 您的VIP等级从{$sh_notice.original_vip_id}降级为 {$sh_notice.now_vip_id}', 2, 0);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%m_adv`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%m_adv` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `img` varchar(255) DEFAULT '',
  `page` varchar(20) DEFAULT '',
  `type` tinyint(1) DEFAULT '0' COMMENT '1.标签集,2.url地址,3.分类排行,4.最亮达人,5.搜索发现,6.一起拍,7.热门单品排行,8.直接显示某个分享',
  `data` text,
  `sort` smallint(5) DEFAULT '10',
  `status` tinyint(1) DEFAULT '1',
  `open_url_type` int(11) DEFAULT '0' COMMENT '0:使用内置浏览器打开url;1:使用外置浏览器打开',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- 转存表中的数据 `%DB_PREFIX%m_adv`
--

INSERT INTO `%DB_PREFIX%m_adv` (`id`, `name`, `img`, `page`, `type`, `data`, `sort`, `status`, `open_url_type`) VALUES
(20, '贷款1', '', 'deal', 1, '349', 12, 1, 0),
(13, '贷款2', '', 'deal', 1, '351', 5, 1, 0),
(11, '手机广告', './public/attachment/201203/03/09/4f5175debd973.jpg', 'top', 2, 'http://t2.fanwe.net/', 4, 0, 0),
(19, '贷款3', '', 'deal', 1, '350', 11, 1, 0),
(23, '平整占2', '', 'top', 1, '1', 15, 0, 0),
(17, '首页', './public/attachment/201602/14/23/56c0a2a1024ae.jpg', 'top', 2, 'http://t2.fanwe.net/', 9, 1, 0),
(18, '信贷', './public/attachment/201602/14/23/56c0a275e1145.jpg', 'top', 2, 'http://www.fanwe.com', 10, 1, 1),
(24, '贷款4', '', 'deal', 1, '348', 16, 1, 0),
(25, '贷款5', '', 'deal', 1, '331', 17, 1, 0),
(26, '贷款6', '', 'deal', 1, '332', 18, 1, 0),
(27, '贷款7', '', 'deal', 1, '334', 19, 1, 0),
(28, '贷款8', '', 'deal', 1, '300', 20, 1, 0),
(29, '贷款9', '', 'deal', 1, '', 21, 1, 0),
(30, '贷款10', '', 'deal', 1, '', 22, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%m_config`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%m_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `val` text,
  `type` tinyint(1) NOT NULL,
  `sort` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- 转存表中的数据 `%DB_PREFIX%m_config`
--

INSERT INTO `%DB_PREFIX%m_config` (`id`, `code`, `title`, `val`, `type`, `sort`) VALUES
(10, 'kf_phone', '客服电话', '400-000-0000', 0, 1),
(11, 'kf_email', '客服邮箱', 'qq@fanwe.com', 0, 2),
(29, 'ios_upgrade', 'ios版本升级内容', '', 3, 9),
(16, 'page_size', '分页大小', '10', 0, 10),
(17, 'about_info', '关于我们(填文章ID)', '66', 0, 3),
(18, 'program_title', '程序标题名称', '方维P2P信贷系统', 0, 0),
(22, 'android_version', 'android版本号', '2014070802', 0, 4),
(23, 'android_filename', 'android下载包名', 'p2p.apk', 0, 5),
(24, 'ios_version', 'ios版本号', '0', 0, 7),
(25, 'ios_down_url', 'ios下载地址', '', 0, 8),
(28, 'android_upgrade', 'android版本升级内容', '更新版本号0，更新内容：', 3, 6),
(30, 'article_cate_id', '文章分类ID', '15', 0, 11),
(31, 'wx_appid', '微信APPID', 'wxe4390206746d9367', 0, 12),
(32, 'wx_secrit', '微信SECRIT', '0f1f8a34faf467bf8acc3729b789905e', 0, 13);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%nav`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '菜单名称',
  `url` varchar(255) NOT NULL COMMENT '跳转的外链URL',
  `blank` tinyint(1) NOT NULL COMMENT '是否在新窗口打开',
  `sort` int(11) NOT NULL COMMENT '排序 大到小',
  `is_effect` tinyint(1) NOT NULL COMMENT '有效性标识',
  `u_module` varchar(255) NOT NULL COMMENT '指向的前台module',
  `u_action` varchar(255) NOT NULL COMMENT '指向的前台action',
  `u_id` int(11) NOT NULL COMMENT '弃用',
  `u_param` varchar(255) NOT NULL COMMENT 'url的参数，以原始的url传参方式填入 如：id=1&cid=2&pid=3',
  `is_shop` tinyint(1) NOT NULL COMMENT '菜单显示的频道 保留',
  `app_index` varchar(255) NOT NULL COMMENT '指向的前台app应用入口',
  `pid` int(11) NOT NULL COMMENT '父级ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='前台导航菜单配置表' AUTO_INCREMENT=55 ;

--
-- 转存表中的数据 `%DB_PREFIX%nav`
--

INSERT INTO `%DB_PREFIX%nav` (`id`, `name`, `url`, `blank`, `sort`, `is_effect`, `u_module`, `u_action`, `u_id`, `u_param`, `is_shop`, `app_index`, `pid`) VALUES
(1, '首页', '', 0, 5, 1, 'index', '', 0, '', 0, 'index', 0),
(2, '我要理财', '', 0, 0, 1, 'deals', 'index', 0, '&select=1', 0, 'index', 0),
(3, '我要借款', '', 0, 0, 1, 'borrow', 'index', 0, '', 0, 'index', 0),
(4, '我的p2p信贷', '', 0, 0, 1, 'uc_center', '', 0, '', 0, 'index', 0),
(5, '安全保障', '', 0, 0, 1, 'guarantee', 'index', 0, '', 0, 'index', 0),
(7, '平台原理', '', 0, 0, 1, 'aboutp2p', '', 0, '', 0, 'index', 1),
(8, '政策法规', '', 0, 0, 1, 'aboutlaws', '', 0, '', 0, 'index', 1),
(9, '费用', '', 0, 0, 1, 'aboutfee', '', 0, '', 0, 'index', 1),
(10, '关于我们', '', 0, 0, 1, 'article', '', 0, 'id=1', 0, 'index', 1),
(11, '个人贷款', '', 0, 5, 1, 'deals', 'index', 0, '', 0, 'index', 2),
(12, '工具箱', '', 0, 3, 1, 'tool', '', 0, '', 0, 'index', 2),
(13, '关于理财', '', 0, 2, 1, 'deals', 'about', 0, '', 0, 'index', 2),
(14, '成为理财人', '', 0, 1, 1, 'belender', '', 0, '', 0, 'index', 2),
(15, '贷款说明', '', 0, 0, 1, 'borrow', 'aboutborrow', 0, '', 0, 'index', 3),
(16, '信用认证', '', 0, 0, 1, 'borrow', 'creditswitch', 0, '', 0, 'index', 3),
(17, '申请贷款', '', 0, 0, 1, 'borrow', 'index', 0, '', 0, 'index', 3),
(18, '我的主页', '', 0, 0, 1, 'uc_center', '', 0, '', 0, 'index', 4),
(19, '贷款管理', '', 0, 0, 1, 'uc_deal', 'refund', 0, '', 0, 'index', 4),
(20, '投标管理', '', 0, 0, 1, 'uc_invest', '', 0, '', 0, 'index', 4),
(21, '个人设置', '', 0, 0, 1, 'uc_account', '', 0, '', 0, 'index', 4),
(22, '本金保障', '', 0, 0, 1, 'guarantee', 'detail', 0, 'id=8', 0, 'index', 5),
(23, '交易安全保障', '', 0, 0, 1, 'guarantee', 'detail', 0, 'id=9', 0, 'index', 5),
(24, '贷款审核与保障', '', 0, 0, 1, 'guarantee', 'detail', 0, 'id=10', 0, 'index', 5),
(25, '网上理财安全建议', '', 0, 0, 1, 'guarantee', 'detail', 0, 'id=11', 0, 'index', 5),
(26, '债权转让', '', 0, 4, 1, 'transfer', 'index', 0, '', 0, 'index', 2),
(27, '积分商城', '', 0, 0, 1, 'score', '', 0, '', 0, 'index', 0),
(47, '按天操盘', '', 0, 0, 1, 'peizi', 'everwin', 0, '', 0, 'index', 46),
(48, '按周操盘', '', 0, 0, 1, 'peizi', 'weekwin', 0, '', 0, 'index', 46),
(49, '按月操盘', '', 0, 0, 1, 'peizi', 'scheme', 0, '', 0, 'index', 46),
(50, '理财中心', 'licai.php', 1, 0, 1, '', '', 0, '', 0, '', 0),
(51, '理财体验金', 'index.php?ctl=learn_activity', 1, 0, 1, '', '', 0, '', 0, '', 1),
(52, '登记借款', 'index.php?ctl=deal_msgboard', 0, 0, 1, '', '', 0, '', 0, '', 3);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%payment`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `online_pay` tinyint(1) NOT NULL,
  `fee_amount` decimal(20,4) NOT NULL COMMENT '手续费用的计费值',
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `total_amount` decimal(20,4) NOT NULL COMMENT '总操作金额',
  `config` text NOT NULL,
  `logo` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  `fee_type` tinyint(1) NOT NULL,
  `pay_fee_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '支付公司收费类型',
  `pay_fee_amount` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT '支付公司收费收费',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `%DB_PREFIX%payment`
--

INSERT INTO `%DB_PREFIX%payment` (`id`, `class_name`, `is_effect`, `online_pay`, `fee_amount`, `name`, `description`, `total_amount`, `config`, `logo`, `sort`, `fee_type`, `pay_fee_type`, `pay_fee_amount`) VALUES
(1, 'Account', 1, 1, '0.0000', '余额支付', '', '0.0000', 'N;', '', 1, 0, 0, '0.0000'),
(2, 'Voucher', 1, 1, '0.0000', '代金券支付', '', '0.0000', 'N;', '', 4, 0, 0, '0.0000'),
(3, 'Chinabank', 0, 1, '0.0600', '网银在线', '', '0.0000', 'a:2:{s:17:"chinabank_account";s:0:"";s:13:"chinabank_key";s:0:"";}', '', 5, 1, 0, '0.0000'),
(4, 'Alipay', 1, 1, '0.0000', '支付宝支付', '', '0.0000', 'a:4:{s:14:"alipay_partner";s:0:"";s:14:"alipay_account";s:0:"";s:10:"alipay_key";s:0:"";s:14:"alipay_service";s:1:"2";}', '', 6, 1, 0, '0.0000'),
(5, 'Otherpay', 1, 0, '0.0000', '线下支付', '', '0.0000', 'a:4:{s:8:"pay_bank";a:3:{i:0;s:15:"福州台江区";i:1;s:15:"福州台江区";i:2;s:15:"福州台江区";}s:8:"pay_name";a:3:{i:0;s:18:"中国工商银行";i:1;s:18:"中国建设银行";i:2;s:12:"中国银行";}s:11:"pay_account";a:3:{i:0;s:23:"6222 0214 1111 2222 333";i:1;s:23:"6222 0214 1111 2222 444";i:2;s:23:"6222 0214 1111 2222 555";}s:16:"pay_account_name";a:3:{i:0;s:9:"陈小信";i:1;s:9:"陈小信";i:2;s:9:"陈小信";}}', '', 7, 0, 0, '0.0000'),
(6, 'Paypal', 0, 1, '0.0600', 'Paypal在线支付', '', '0.0000', 'a:4:{s:14:"paypal_account";s:2:"45";s:15:"paypal_currency";s:0:"";s:11:"paypal_unit";s:0:"";s:11:"paypal_rate";s:0:"";}', '', 8, 1, 0, '0.0000'),
(7, 'Tenpay', 0, 1, '0.0600', '财付通支付', '', '0.0000', 'a:3:{s:13:"tencentpay_id";s:0:"";s:14:"tencentpay_key";s:0:"";s:15:"tencentpay_sign";s:0:"";}', '', 9, 1, 0, '0.0000'),
(8, 'TenpayBank', 0, 1, '0.0600', '财付通直连支付', '', '0.0000', 'a:4:{s:13:"tencentpay_id";s:0:"";s:14:"tencentpay_key";s:0:"";s:15:"tencentpay_sign";s:0:"";s:18:"tencentpay_gateway";a:18:{i:1002;s:1:"1";i:1001;s:1:"1";i:1003;s:1:"1";i:1005;s:1:"1";i:1004;s:1:"1";i:1008;s:1:"1";i:1009;s:1:"1";i:1032;s:1:"1";i:1022;s:1:"1";i:1006;s:1:"1";i:1021;s:1:"1";i:1027;s:1:"1";i:1010;s:1:"1";i:1052;s:1:"1";i:1020;s:1:"1";i:1030;s:1:"1";i:1042;s:1:"1";i:1028;s:1:"1";}}', '', 10, 1, 0, '0.0000'),
(12, 'Kuaiqian', 0, 1, '0.0000', '快钱支付', '', '0.0000', 'a:2:{s:10:"kq_account";s:0:"";s:6:"kq_key";s:0:"";}', '', 12, 0, 0, '0.0000'),
(13, 'tenpayc2c', 0, 1, '0.0600', '财付通中介担保支付', '', '0.0000', 'a:2:{s:13:"tencentpay_id";s:0:"";s:14:"tencentpay_key";s:0:"";}', '', 13, 1, 0, '0.0000'),
(11, 'Yeepay', 0, 1, '0.0000', '易宝支付', '', '0.0000', 'a:2:{s:14:"yeepay_account";s:0:"";s:10:"yeepay_key";s:0:"";}', '', 11, 0, 0, '0.0000'),
(15, 'Walipay', 1, 2, '0.0000', '支付宝手机WAP支付', '', '0.0000', 'a:3:{s:14:"alipay_partner";s:16:"2088701687941821";s:14:"alipay_account";s:12:"cw@fanwe.com";s:10:"alipay_key";s:32:"1tzqx98hvgcfxu59h54h3mye89hg03et";}', './public/attachment/201409/05/21/5409be3c36587.gif', 14, 0, 0, '0.0000'),
(16, 'Sqepay', 0, 1, '0.0010', '双乾支付', '', '0.0000', 'a:3:{s:5:"merno";s:0:"";s:6:"md5key";s:0:"";s:14:"sqepay_gateway";a:4:{i:0;s:1:"1";s:4:"ICBC";s:1:"1";s:3:"ABC";s:1:"1";s:5:"BOCSH";s:1:"1";}}', '', 15, 0, 0, '0.0000'),
(17, 'Jfb', 1, 1, '0.0000', '集付宝支付', '', '0.0000', 'a:3:{s:12:"seller_email";s:11:"18607811623";s:9:"partnerId";s:16:"1002201405082580";s:3:"key";s:32:"9309fccf6287b1e796f1fbac2c4950d5";}', '', 16, 0, 0, '0.0000'),
(18, 'Guofubao', 0, 1, '0.0000', '国付宝支付', '', '0.0000', 'a:4:{s:11:"merchant_id";s:7:"2563323";s:11:"virCardNoIn";s:6:"263325";s:15:"VerficationCode";s:5:"333+2";s:16:"guofubao_gateway";a:2:{s:3:"CCB";s:1:"1";s:3:"CMB";s:1:"1";}}', './public/attachment/201408/16/15/53ef0abe3ad78.jpg', 17, 0, 0, '0.0000'),
(19, 'Baofoo', 0, 1, '0.0000', '宝付支付', '', '0.0000', 'a:4:{s:14:"baofoo_account";s:0:"";s:10:"baofoo_key";s:0:"";s:15:"baofoo_terminal";s:0:"";s:14:"baofoo_gateway";a:4:{i:0;s:1:"1";i:3001;s:1:"1";i:3002;s:1:"1";i:3003;s:1:"1";}}', '', 18, 0, 0, '0.0000'),
(20, 'Yjwap', 0, 2, '0.0000', '易宝一键支付wap', '', '0.0000', 'a:5:{s:15:"merchantaccount";s:13:"YB01000000144";s:18:"merchantPrivateKey";s:844:"MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAPGE6DHyrUUAgqep/oGqMIsrJddJNFI1J/BL01zoTZ9+YiluJ7I3uYHtepApj+Jyc4Hfi+08CMSZBTHi5zWHlHQCl0WbdEkSxaiRX9t4aMS13WLYShKBjAZJdoLfYTGlyaw+tm7WG/MR+VWakkPX0pxfG+duZAQeIDoBLVfL++ihAgMBAAECgYAw2urBV862+5BybA/AmPWy4SqJbxR3YKtQj3YVACTbk4w1x0OeaGlNIAW/7bheXTqCVf8PISrA4hdL7RNKH7/mhxoX3sDuCO5nsI4Dj5xF24CymFaSRmvbiKU0Ylso2xAWDZqEs4Le/eDZKSy4LfXA17mxHpMBkzQffDMtiAGBpQJBAPn3mcAwZwzS4wjXldJ+Zoa5pwu1ZRH9fGNYkvhMTp9I9cf3wqJUN+fVPC6TIgLWyDf88XgFfjilNKNz0c/aGGcCQQD3WRxwots1lDcUhS4dpOYYnN3moKNgB07Hkpxkm+bw7xvjjHqI8q/4Jiou16eQURG+hlBZlZz37Y7P+PHF2XG3AkAyng/1WhfUAfRVewpsuIncaEXKWi4gSXthxrLkMteM68JRfvtb0cAMYyKvr72oY4Phyoe/LSWVJOcW3kIzW8+rAkBWekhQNRARBnXPbdS2to1f85A9btJP454udlrJbhxrBh4pC1dYBAlz59v9rpY+Ban/g7QZ7g4IPH0exzm4Y5K3AkBjEVxIKzb2sPDe34Aa6Qd/p6YpG9G6ND0afY+m5phBhH+rNkfYFkr98cBqjDm6NFhT7+CmRrF903gDQZmxCspY";s:17:"merchantPublicKey";s:216:"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDxhOgx8q1FAIKnqf6BqjCLKyXXSTRSNSfwS9Nc6E2ffmIpbieyN7mB7XqQKY/icnOB34vtPAjEmQUx4uc1h5R0ApdFm3RJEsWokV/beGjEtd1i2EoSgYwGSXaC32ExpcmsPrZu1hvzEflVmpJD19KcXxvnbmQEHiA6AS1Xy/vooQIDAQAB";s:15:"yeepayPublicKey";s:216:"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCxnYJL7fH7DVsS920LOqCu8ZzebCc78MMGImzW8MaP/cmBGd57Cw7aRTmdJxFD6jj6lrSfprXIcT7ZXoGL5EYxWUTQGRsl4HZsr1AlaOKxT5UnsuEhA/K1dN1eA4lBpNCRHf9+XDlmqVBUguhNzy6nfNjb2aGE+hkxPP99I1iMlQIDAQAB";s:20:"yeepayProductCatalog";s:1:"1";}', './public/attachment/201409/05/21/5409bda197be8.png', 19, 0, 0, '0.0000'),
(21, 'Yjpay', 0, 1, '5.0000', '易宝一键支付pc', '', '0.0000', 'a:4:{s:15:"merchantaccount";s:0:"";s:18:"merchantPrivateKey";s:0:"";s:17:"merchantPublicKey";s:0:"";s:15:"yeepayPublicKey";s:0:"";}', '', 20, 0, 0, '0.0000'),
(22, 'AlipayBank', 0, 1, '0.0000', '支付宝银行直连支付', '', '0.0000', 'a:4:{s:14:"alipay_partner";s:0:"";s:14:"alipay_account";s:0:"";s:10:"alipay_key";s:0:"";s:14:"alipay_gateway";a:4:{s:7:"ICBCB2C";s:1:"1";s:3:"CMB";s:1:"1";s:3:"CCB";s:1:"1";s:3:"SDB";s:1:"1";}}', '', 21, 0, 0, '0.0000'),
(23, 'Ips', 0, 1, '0.0600', '环讯支付', '环讯支付', '0.0000', 'a:2:{s:8:"Mer_code";s:0:"";s:7:"Mer_key";s:0:"";}', '', 22, 1, 0, '0.0000'),
(24, 'Bfwap', 1, 2, '0.0000', '宝付WAP支付', '', '0.0000', 'a:3:{s:14:"baofoo_account";s:9:"100000178";s:10:"baofoo_key";s:7:"abcdefg";s:15:"baofoo_terminal";s:8:"10000001";}', './public/attachment/201412/23/09/5498c6415e3e5.jpg', 23, 0, 0, '0.0000'),
(25, 'Wwxjspay', 1, 2, '0.1000', '微信支付(WAP版本)', '', '0.0000', 'a:5:{s:5:"appid";s:18:"wxb98af717fd2a5ba5";s:9:"appsecret";s:32:"7901e0a28927dbb564521b8648bd17f7";s:5:"mchid";s:10:"1240545402";s:3:"key";s:32:"fanwe1fanwe1fanwe1fanwe1fanwe1fa";s:4:"type";s:2:"V3";}', './public/attachment/197001/01/16/5589228fd4d78.png', 24, 0, 0, '0.0000'),
(26, 'Bfapp', 1, 2, '0.0000', '宝付SDK支付', '', '0.0000', 'a:3:{s:14:"baofoo_account";s:9:"100000178";s:10:"baofoo_key";s:7:"abcdefg";s:15:"baofoo_terminal";s:8:"10000001";}', '', 25, 0, 0, '0.0000'),
(27, 'Bfupwap', 1, 3, '0.0000', '宝付银联本SDK支付', '', '0.0000', 'a:3:{s:14:"baofoo_account";s:9:"100000178";s:10:"baofoo_key";s:7:"abcdefg";s:15:"baofoo_terminal";s:8:"10000001";}', '', 26, 0, 0, '0.0000'),
(28, 'Bfrzapp', 1, 3, '0.0000', '宝付认证支付', '', '0.0000', 'a:3:{s:14:"baofoo_account";s:9:"100000178";s:15:"baofoo_terminal";s:9:"100000916";s:10:"baofoo_key";s:16:"100000178_204500";}', '', 27, 0, 0, '0.0000');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%payment_notice`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%payment_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_sn` varchar(255) NOT NULL,
  `create_time` int(11) NOT NULL,
  `pay_time` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `is_paid` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `memo` text NOT NULL,
  `money` decimal(20,4) NOT NULL COMMENT '应付金额',
  `outer_notice_sn` varchar(255) NOT NULL,
  `pay_date` date DEFAULT NULL COMMENT '收款日期',
  `create_date` date NOT NULL COMMENT '记录充值下单时间,方便统计使用',
  `bank_id` varchar(50) DEFAULT NULL COMMENT '直联银行编号',
  `fee_amount` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '收用户手续费',
  `pay_fee_amount` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '平台付支付公司手续费',
  PRIMARY KEY (`id`),
  UNIQUE KEY `notice_sn_unk` (`notice_sn`) USING BTREE,
  KEY `idx_pn_001` (`pay_date`) USING BTREE,
  KEY `idx_pn_002` (`create_date`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2511 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%plan`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%plan` (
  `id` int(11) NOT NULL,
  `plan_sn` varchar(50) NOT NULL COMMENT '计划编号',
  `name` varchar(255) NOT NULL COMMENT '计划名称',
  `plan_id` int(11) NOT NULL COMMENT '计划分类id',
  `plan_money` decimal(20,2) NOT NULL COMMENT '计划金额',
  `rate` varchar(20) NOT NULL COMMENT '预期收益',
  `repay_time` int(11) NOT NULL COMMENT '投资期限 默认从 分类表Plan_cate中读取 可独立修改',
  `warrant` tinyint(1) NOT NULL COMMENT '保障方式 0无 1本金 2本金和利息',
  `min_load_money` decimal(20,2) NOT NULL COMMENT '最小参与金额（可以被倍计划金额整除）',
  `max_load_money` decimal(20,2) NOT NULL COMMENT '最大参与金额(需是 最小参与金额 的整数倍)',
  `advance` varchar(20) NOT NULL COMMENT '预定金额的百分比（预订金 = 加入金额 * advance * 0.01），上线 max_load_money*advance',
  `start_time` int(11) NOT NULL COMMENT '开始时间',
  `end_time` int(11) NOT NULL COMMENT '结束时间',
  `pay_end_time` int(11) NOT NULL COMMENT '支付终止时间',
  `pay_expire_type` tinyint(4) NOT NULL COMMENT '逾期支付扣订金方式 0不扣除 1全额扣除 2百分比扣除',
  `pay_exprie_fee` varchar(20) NOT NULL COMMENT 'pay_expire_type（逾期支付扣订金方式） 为2 时  填写此 百分比',
  `buy_count` int(11) NOT NULL COMMENT '参与人数',
  `description` text NOT NULL COMMENT '计划介绍',
  `repay_status` tinyint(1) NOT NULL COMMENT '本金赎回方式：0还款自动返还，1转让还返 2到期返还',
  `status` tinyint(4) NOT NULL COMMENT '1 预约中 2计划满额 3收益中(支付完成) 4失败',
  `bad_msg` text NOT NULL COMMENT 'status = 4 的时候 可以输入 计划失败原因',
  `deal_cate_ids` varchar(255) NOT NULL COMMENT '参与那种标种的投标  deal_cate表ID  以 英文 逗号隔开',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%plan_cate`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%plan_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '计划名称',
  `rate` varchar(50) NOT NULL COMMENT '预期收益率',
  `repay_time` int(11) NOT NULL COMMENT '锁定期限',
  `description` text NOT NULL COMMENT '计划简介',
  `is_effect` tinyint(10) NOT NULL COMMENT '是否有效',
  `sort` int(11) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='计划分类表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%plan_load`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%plan_load` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '会员编号',
  `advace` varchar(20) NOT NULL COMMENT '预定百分比 从plan表读取',
  `advace_money` decimal(20,2) NOT NULL,
  `money` decimal(20,2) NOT NULL COMMENT '参与金额',
  `warrant` tinyint(1) NOT NULL COMMENT '保障方式 与Plan表对应',
  `rate` varchar(20) NOT NULL COMMENT '逾期收益 与Plan表对应',
  `repay_time` int(11) NOT NULL COMMENT '投资期限 与plan 表对应',
  `deal_cate_ids` varchar(255) NOT NULL COMMENT '参与那种标种的投标  deal_cate表ID  以 英文 逗号隔开',
  `is_paid` tinyint(1) NOT NULL COMMENT '是否已支付',
  `pay_time` int(11) NOT NULL COMMENT '支付时间',
  `pay_date` date NOT NULL,
  `repay_status` tinyint(4) NOT NULL COMMENT '本金赎回方式：0还款自动返还，1转让还返 2到期返还',
  `create_time` int(11) NOT NULL COMMENT '参与时间',
  `create_date` date NOT NULL,
  `load_id` int(11) NOT NULL COMMENT '投标的ID',
  `load_time` int(11) NOT NULL COMMENT '投标时间',
  `load_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%plan_load_repay`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%plan_load_repay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `load_repay_id` int(11) NOT NULL,
  `self_money` decimal(20,2) NOT NULL COMMENT '本金',
  `repay_money` decimal(20,2) NOT NULL COMMENT '还款金额',
  `manage_money` decimal(20,2) NOT NULL COMMENT '管理费',
  `repay_manage_money` decimal(20,2) NOT NULL COMMENT '从借款者均摊下来的管理费',
  `repay_manage_impose_money` decimal(20,2) NOT NULL COMMENT '借款者均摊下来的逾期管理费',
  `reward_money` decimal(20,2) NOT NULL COMMENT '预计奖励收益',
  `true_reward_money` decimal(20,2) NOT NULL COMMENT '实际奖励收益',
  `impose_money` decimal(20,2) NOT NULL COMMENT '罚息',
  `repay_time` int(11) NOT NULL COMMENT '预计回款时间',
  `repay_date` date NOT NULL COMMENT '预计回款时间,方便统计',
  `true_repay_time` int(11) NOT NULL COMMENT '实际回款时间',
  `true_repay_date` date NOT NULL COMMENT '实际回款时间,方便统计使用',
  `true_repay_money` decimal(20,2) NOT NULL COMMENT '真实还款本息',
  `true_self_money` decimal(20,2) NOT NULL COMMENT '真实还款本金',
  `interest_money` decimal(20,2) NOT NULL COMMENT '利息   repay_money - self_money',
  `true_interest_money` decimal(20,2) NOT NULL COMMENT '实际利息',
  `true_manage_money` decimal(20,2) NOT NULL COMMENT '实际管理费',
  `true_repay_manage_money` decimal(20,2) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0提前，1准时，2逾期，3严重逾期',
  `is_site_repay` tinyint(1) NOT NULL COMMENT '0自付，1网站垫付 2担保机构垫付',
  `l_key` int(11) NOT NULL DEFAULT '0' COMMENT '还的是第几期',
  `u_key` int(11) NOT NULL DEFAULT '0' COMMENT '还的是第几个投标人',
  `repay_id` int(11) NOT NULL COMMENT '还款计划ID',
  `load_id` int(11) NOT NULL COMMENT '投标记录ID',
  `has_repay` tinyint(11) NOT NULL DEFAULT '0' COMMENT '0未收到还款，1已收到还款',
  `loantype` int(11) NOT NULL COMMENT '还款方式',
  `manage_interest_money` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '预计能收到：利息管理费,是在满标放款时生成',
  `true_manage_interest_money` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '实际收到：利息管理费,是在还款时生成',
  `manage_interest_money_rebate` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '预计返佣金额(返给授权机构)',
  `true_manage_interest_money_rebate` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '实际返佣金额(返给授权机构)',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%point_group`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%point_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `%DB_PREFIX%point_group`
--

INSERT INTO `%DB_PREFIX%point_group` (`id`, `name`, `sort`) VALUES
(1, '卫生', 100),
(2, '服务', 100);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%point_group_link`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%point_group_link` (
  `point_group_id` int(11) NOT NULL COMMENT '商户子类点评评分分组ID %DB_PREFIX%merchant_type_point_group',
  `category_id` int(11) NOT NULL,
  KEY `group_id` (`point_group_id`) USING BTREE,
  KEY `type_id` (`category_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `%DB_PREFIX%point_group_link`
--

INSERT INTO `%DB_PREFIX%point_group_link` (`point_group_id`, `category_id`) VALUES
(2, 12),
(2, 11),
(1, 10),
(2, 10),
(2, 9),
(1, 8),
(2, 8),
(1, 14),
(2, 14),
(1, 15),
(1, 16),
(2, 16),
(1, 17),
(2, 17);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%promote_msg`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%promote_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `send_time` int(11) NOT NULL,
  `send_status` tinyint(1) NOT NULL,
  `deal_id` int(11) NOT NULL,
  `send_type` tinyint(1) NOT NULL,
  `send_type_id` int(11) NOT NULL,
  `send_define_data` text NOT NULL,
  `is_html` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%promote_msg_list`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%promote_msg_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dest` varchar(255) NOT NULL,
  `send_type` tinyint(1) NOT NULL,
  `content` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `send_time` int(11) NOT NULL,
  `is_send` tinyint(1) NOT NULL,
  `create_time` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `result` text NOT NULL,
  `is_success` tinyint(1) NOT NULL,
  `is_html` tinyint(1) NOT NULL,
  `msg_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dest_idx` (`dest`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%provisions_risk`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%provisions_risk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL COMMENT '操作员',
  `amount` decimal(20,4) NOT NULL COMMENT '金额',
  `money` decimal(20,4) NOT NULL COMMENT '余额',
  `optime` int(11) NOT NULL COMMENT '操作时间',
  `memo` text NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%quota_submit`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%quota_submit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `money` int(11) NOT NULL COMMENT '申请金额',
  `referraler` varchar(100) NOT NULL COMMENT '推荐人',
  `memo` text NOT NULL COMMENT '详细说明',
  `other_memo` text NOT NULL COMMENT ' 其他地方借款详细说明',
  `create_time` int(11) NOT NULL COMMENT '申请时间',
  `status` tinyint(1) NOT NULL COMMENT '0未处理 1申请通过  2申请失败',
  `op_time` int(11) NOT NULL COMMENT '审核时间',
  `bad_msg` text NOT NULL COMMENT '失败原因',
  `note` text COMMENT '操作备注',
  PRIMARY KEY (`id`),
  KEY `idx0` (`status`,`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- 转存表中的数据 `%DB_PREFIX%quota_submit`
--

INSERT INTO `%DB_PREFIX%quota_submit` (`id`, `user_id`, `money`, `referraler`, `memo`, `other_memo`, `create_time`, `status`, `op_time`, `bad_msg`, `note`) VALUES
(24, 1271, 100000, '测二', '123456', '123456', 1423438451, 1, 1423438467, '', '栽植'),
(25, 440226, 5000, '', '事实上身上', '事实上是事实', 1451865948, 1, 1451865963, '', ''),
(26, 440225, 15000, '', '微微威武哇哇哇问问', '微微威武哇哇哇问问', 1451866129, 1, 1451866142, '', ''),
(27, 440228, 5000, '', 'test3--sxed-1', 'test3--sxed-1', 1451867841, 1, 1451867853, '', ''),
(28, 440230, 10, '', 'test3--sxed-1', 'test3--sxed-1', 1451868018, 1, 1451868025, '', ''),
(29, 440230, 2500, '', 'test3--sxed-1', '', 1451868163, 1, 1451868174, '', ''),
(30, 440226, 150, '', 'test3--sxed-1', '', 1451868695, 1, 1451868758, '', ''),
(31, 440226, 10, '', 'test3--sxed-1', '', 1451869057, 1, 1451869066, '', ''),
(33, 440225, 10000, '', 'dddddddddd', 'dddddddddddd', 1454105557, 1, 1454105626, '', ''),
(34, 440256, 10000, '', 'gthtrhtrhtrh', '', 1454541222, 1, 1454541233, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%red_envelope_record`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%red_envelope_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL COMMENT '借款ID',
  `deal_load_id` int(11) NOT NULL COMMENT '投标ID',
  `reward_name` varchar(100) NOT NULL COMMENT '奖励名称',
  `money` decimal(20,0) NOT NULL COMMENT '红包金额',
  `user_id` int(11) NOT NULL COMMENT '所属人ID',
  `status` tinyint(1) NOT NULL COMMENT '发放状态 0未发放，1已发放',
  `generation_date` date NOT NULL COMMENT '生成时间',
  `release_date` date NOT NULL COMMENT '发放时间',
  PRIMARY KEY (`id`),
  KEY `idx_rer_001` (`user_id`,`status`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='红包记录列表' AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%referrals`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%referrals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT ' 被邀请人ID，即返利生成的用户ID',
  `rel_user_id` int(11) NOT NULL COMMENT '邀请人ID（即需要返利的会员ID）',
  `money` decimal(20,2) NOT NULL COMMENT '返利的现金',
  `create_time` int(11) NOT NULL COMMENT '返利生成的时间',
  `repay_time` int(11) NOT NULL COMMENT '返利时间',
  `pay_time` int(11) NOT NULL COMMENT '返利发放的时间',
  `deal_id` int(11) NOT NULL COMMENT '关联的借款id',
  `load_id` int(11) NOT NULL COMMENT '关联的投标id',
  `l_key` int(11) NOT NULL COMMENT '关联的投标第几期还款',
  `score` int(11) NOT NULL COMMENT '返利的积分',
  `point` int(11) NOT NULL COMMENT '返利的信用',
  `referral_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '返利方式 0利息 1本金',
  `deal_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0为正常借款订单返利，1为众筹订单返利',
  `referral_rate` decimal(10,4) NOT NULL COMMENT '返利抽成比',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='邀请返利记录表' AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `%DB_PREFIX%referrals`
--

INSERT INTO `%DB_PREFIX%referrals` (`id`, `user_id`, `rel_user_id`, `money`, `create_time`, `repay_time`, `pay_time`, `deal_id`, `load_id`, `l_key`, `score`, `point`, `referral_type`, `deal_type`, `referral_rate`) VALUES
(7, 440011, 0, '3.38', 1425663617, 1427788800, 1437009343, 35422, 740, 2, 0, 0, 0, 0, '10.0000'),
(8, 440011, 0, '2.55', 1425664817, 1430380800, 1437009343, 35422, 740, 3, 0, 0, 0, 0, '10.0000'),
(9, 440121, 440090, '8.50', 1436915462, 1439539200, 1437009343, 354300, 842, 0, 0, 0, 0, 0, '10.0000'),
(10, 440121, 440090, '0.75', 1438024728, 1438416000, 0, 354314, 868, 0, 0, 0, 0, 0, '10.0000'),
(11, 440121, 440090, '4.50', 1438036462, 1440662400, 0, 354313, 871, 0, 0, 0, 0, 0, '10.0000'),
(12, 440121, 440090, '3.02', 1438037909, 1443340800, 0, 354313, 871, 1, 0, 0, 0, 0, '10.0000'),
(13, 440121, 440090, '5.00', 1438125544, 1440748800, 0, 354317, 876, 0, 0, 0, 0, 0, '10.0000'),
(14, 440121, 440090, '5.00', 1438126096, 1443427200, 0, 354317, 876, 1, 0, 0, 0, 0, '10.0000'),
(15, 440121, 440090, '4.00', 1438199531, 1440835200, 0, 354319, 880, 0, 0, 0, 0, 0, '10.0000'),
(16, 440121, 440090, '5.00', 1438736820, 1441353600, 0, 354343, 902, 0, 0, 0, 0, 0, '10.0000'),
(17, 440121, 440090, '2.00', 1439409606, 1442044800, 0, 354347, 913, 0, 0, 0, 0, 0, '10.0000'),
(18, 440121, 440090, '1.34', 1439409643, 1444636800, 0, 354347, 913, 1, 0, 0, 0, 0, '10.0000'),
(19, 440121, 440090, '0.67', 1439409664, 1447315200, 0, 354347, 913, 2, 0, 0, 0, 0, '10.0000'),
(20, 440121, 440090, '1.39', 1439745602, 1441872000, 0, 354351, 917, 0, 0, 0, 0, 0, '10.0000'),
(21, 440128, 440094, '2.24', 1439750406, 1441440000, 0, 354353, 922, 0, 0, 0, 0, 0, '10.1000'),
(22, 440121, 440090, '0.56', 1439750406, 1441440000, 0, 354353, 923, 0, 0, 0, 0, 0, '10.0000'),
(23, 440121, 440090, '1.11', 1439755258, 1441440000, 0, 354354, 926, 0, 0, 0, 0, 0, '10.0000'),
(24, 440121, 440090, '0.50', 1439764119, 1442390400, 0, 354356, 929, 0, 0, 0, 0, 0, '10.0000'),
(25, 440121, 440090, '0.50', 1439765014, 1444982400, 0, 354356, 929, 1, 0, 0, 0, 0, '10.0000'),
(26, 440121, 440090, '0.50', 1439765237, 1442390400, 0, 354355, 932, 0, 0, 0, 0, 0, '10.0000'),
(27, 440121, 440090, '1.00', 1439922507, 1440921600, 0, 354359, 939, 0, 0, 0, 0, 0, '10.0000'),
(28, 440121, 440090, '1.50', 1439924225, 1442563200, 0, 354360, 942, 0, 0, 0, 0, 0, '10.0000');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%region_conf`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%region_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '地区名称',
  `region_level` tinyint(4) NOT NULL COMMENT '1:国 2:省 3:市(县) 4:区(镇)',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3419 ;

--
-- 转存表中的数据 `%DB_PREFIX%region_conf`
--

INSERT INTO `%DB_PREFIX%region_conf` (`id`, `pid`, `name`, `region_level`) VALUES
(2, 1, '北京', 2),
(3, 1, '安徽', 2),
(4, 1, '福建', 2),
(5, 1, '甘肃', 2),
(6, 1, '广东', 2),
(7, 1, '广西', 2),
(8, 1, '贵州', 2),
(9, 1, '海南', 2),
(10, 1, '河北', 2),
(11, 1, '河南', 2),
(12, 1, '黑龙江', 2),
(13, 1, '湖北', 2),
(14, 1, '湖南', 2),
(15, 1, '吉林', 2),
(16, 1, '江苏', 2),
(17, 1, '江西', 2),
(18, 1, '辽宁', 2),
(19, 1, '内蒙古', 2),
(20, 1, '宁夏', 2),
(21, 1, '青海', 2),
(22, 1, '山东', 2),
(23, 1, '山西', 2),
(24, 1, '陕西', 2),
(25, 1, '上海', 2),
(26, 1, '四川', 2),
(27, 1, '天津', 2),
(28, 1, '西藏', 2),
(29, 1, '新疆', 2),
(30, 1, '云南', 2),
(31, 1, '浙江', 2),
(32, 1, '重庆', 2),
(33, 1, '香港', 2),
(34, 1, '澳门', 2),
(35, 1, '台湾', 2),
(36, 3, '安庆', 3),
(37, 3, '蚌埠', 3),
(38, 3, '巢湖', 3),
(39, 3, '池州', 3),
(40, 3, '滁州', 3),
(41, 3, '阜阳', 3),
(42, 3, '淮北', 3),
(43, 3, '淮南', 3),
(44, 3, '黄山', 3),
(45, 3, '六安', 3),
(46, 3, '马鞍山', 3),
(47, 3, '宿州', 3),
(48, 3, '铜陵', 3),
(49, 3, '芜湖', 3),
(50, 3, '宣城', 3),
(51, 3, '亳州', 3),
(52, 2, '北京', 3),
(53, 4, '福州', 3),
(54, 4, '龙岩', 3),
(55, 4, '南平', 3),
(56, 4, '宁德', 3),
(57, 4, '莆田', 3),
(58, 4, '泉州', 3),
(59, 4, '三明', 3),
(60, 4, '厦门', 3),
(61, 4, '漳州', 3),
(62, 5, '兰州', 3),
(63, 5, '白银', 3),
(64, 5, '定西', 3),
(65, 5, '甘南', 3),
(66, 5, '嘉峪关', 3),
(67, 5, '金昌', 3),
(68, 5, '酒泉', 3),
(69, 5, '临夏', 3),
(70, 5, '陇南', 3),
(71, 5, '平凉', 3),
(72, 5, '庆阳', 3),
(73, 5, '天水', 3),
(74, 5, '武威', 3),
(75, 5, '张掖', 3),
(76, 6, '广州', 3),
(77, 6, '深圳', 3),
(78, 6, '潮州', 3),
(79, 6, '东莞', 3),
(80, 6, '佛山', 3),
(81, 6, '河源', 3),
(82, 6, '惠州', 3),
(83, 6, '江门', 3),
(84, 6, '揭阳', 3),
(85, 6, '茂名', 3),
(86, 6, '梅州', 3),
(87, 6, '清远', 3),
(88, 6, '汕头', 3),
(89, 6, '汕尾', 3),
(90, 6, '韶关', 3),
(91, 6, '阳江', 3),
(92, 6, '云浮', 3),
(93, 6, '湛江', 3),
(94, 6, '肇庆', 3),
(95, 6, '中山', 3),
(96, 6, '珠海', 3),
(97, 7, '南宁', 3),
(98, 7, '桂林', 3),
(99, 7, '百色', 3),
(100, 7, '北海', 3),
(101, 7, '崇左', 3),
(102, 7, '防城港', 3),
(103, 7, '贵港', 3),
(104, 7, '河池', 3),
(105, 7, '贺州', 3),
(106, 7, '来宾', 3),
(107, 7, '柳州', 3),
(108, 7, '钦州', 3),
(109, 7, '梧州', 3),
(110, 7, '玉林', 3),
(111, 8, '贵阳', 3),
(112, 8, '安顺', 3),
(113, 8, '毕节', 3),
(114, 8, '六盘水', 3),
(115, 8, '黔东南', 3),
(116, 8, '黔南', 3),
(117, 8, '黔西南', 3),
(118, 8, '铜仁', 3),
(119, 8, '遵义', 3),
(120, 9, '海口', 3),
(121, 9, '三亚', 3),
(122, 9, '白沙', 3),
(123, 9, '保亭', 3),
(124, 9, '昌江', 3),
(125, 9, '澄迈县', 3),
(126, 9, '定安县', 3),
(127, 9, '东方', 3),
(128, 9, '乐东', 3),
(129, 9, '临高县', 3),
(130, 9, '陵水', 3),
(131, 9, '琼海', 3),
(132, 9, '琼中', 3),
(133, 9, '屯昌县', 3),
(134, 9, '万宁', 3),
(135, 9, '文昌', 3),
(136, 9, '五指山', 3),
(137, 9, '儋州', 3),
(138, 10, '石家庄', 3),
(139, 10, '保定', 3),
(140, 10, '沧州', 3),
(141, 10, '承德', 3),
(142, 10, '邯郸', 3),
(143, 10, '衡水', 3),
(144, 10, '廊坊', 3),
(145, 10, '秦皇岛', 3),
(146, 10, '唐山', 3),
(147, 10, '邢台', 3),
(148, 10, '张家口', 3),
(149, 11, '郑州', 3),
(150, 11, '洛阳', 3),
(151, 11, '开封', 3),
(152, 11, '安阳', 3),
(153, 11, '鹤壁', 3),
(154, 11, '济源', 3),
(155, 11, '焦作', 3),
(156, 11, '南阳', 3),
(157, 11, '平顶山', 3),
(158, 11, '三门峡', 3),
(159, 11, '商丘', 3),
(160, 11, '新乡', 3),
(161, 11, '信阳', 3),
(162, 11, '许昌', 3),
(163, 11, '周口', 3),
(164, 11, '驻马店', 3),
(165, 11, '漯河', 3),
(166, 11, '濮阳', 3),
(167, 12, '哈尔滨', 3),
(168, 12, '大庆', 3),
(169, 12, '大兴安岭', 3),
(170, 12, '鹤岗', 3),
(171, 12, '黑河', 3),
(172, 12, '鸡西', 3),
(173, 12, '佳木斯', 3),
(174, 12, '牡丹江', 3),
(175, 12, '七台河', 3),
(176, 12, '齐齐哈尔', 3),
(177, 12, '双鸭山', 3),
(178, 12, '绥化', 3),
(179, 12, '伊春', 3),
(180, 13, '武汉', 3),
(181, 13, '仙桃', 3),
(182, 13, '鄂州', 3),
(183, 13, '黄冈', 3),
(184, 13, '黄石', 3),
(185, 13, '荆门', 3),
(186, 13, '荆州', 3),
(187, 13, '潜江', 3),
(188, 13, '神农架林区', 3),
(189, 13, '十堰', 3),
(190, 13, '随州', 3),
(191, 13, '天门', 3),
(192, 13, '咸宁', 3),
(193, 13, '襄樊', 3),
(194, 13, '孝感', 3),
(195, 13, '宜昌', 3),
(196, 13, '恩施', 3),
(197, 14, '长沙', 3),
(198, 14, '张家界', 3),
(199, 14, '常德', 3),
(200, 14, '郴州', 3),
(201, 14, '衡阳', 3),
(202, 14, '怀化', 3),
(203, 14, '娄底', 3),
(204, 14, '邵阳', 3),
(205, 14, '湘潭', 3),
(206, 14, '湘西', 3),
(207, 14, '益阳', 3),
(208, 14, '永州', 3),
(209, 14, '岳阳', 3),
(210, 14, '株洲', 3),
(211, 15, '长春', 3),
(212, 15, '吉林', 3),
(213, 15, '白城', 3),
(214, 15, '白山', 3),
(215, 15, '辽源', 3),
(216, 15, '四平', 3),
(217, 15, '松原', 3),
(218, 15, '通化', 3),
(219, 15, '延边', 3),
(220, 16, '南京', 3),
(221, 16, '苏州', 3),
(222, 16, '无锡', 3),
(223, 16, '常州', 3),
(224, 16, '淮安', 3),
(225, 16, '连云港', 3),
(226, 16, '南通', 3),
(227, 16, '宿迁', 3),
(228, 16, '泰州', 3),
(229, 16, '徐州', 3),
(230, 16, '盐城', 3),
(231, 16, '扬州', 3),
(232, 16, '镇江', 3),
(233, 17, '南昌', 3),
(234, 17, '抚州', 3),
(235, 17, '赣州', 3),
(236, 17, '吉安', 3),
(237, 17, '景德镇', 3),
(238, 17, '九江', 3),
(239, 17, '萍乡', 3),
(240, 17, '上饶', 3),
(241, 17, '新余', 3),
(242, 17, '宜春', 3),
(243, 17, '鹰潭', 3),
(244, 18, '沈阳', 3),
(245, 18, '大连', 3),
(246, 18, '鞍山', 3),
(247, 18, '本溪', 3),
(248, 18, '朝阳', 3),
(249, 18, '丹东', 3),
(250, 18, '抚顺', 3),
(251, 18, '阜新', 3),
(252, 18, '葫芦岛', 3),
(253, 18, '锦州', 3),
(254, 18, '辽阳', 3),
(255, 18, '盘锦', 3),
(256, 18, '铁岭', 3),
(257, 18, '营口', 3),
(258, 19, '呼和浩特', 3),
(259, 19, '阿拉善盟', 3),
(260, 19, '巴彦淖尔盟', 3),
(261, 19, '包头', 3),
(262, 19, '赤峰', 3),
(263, 19, '鄂尔多斯', 3),
(264, 19, '呼伦贝尔', 3),
(265, 19, '通辽', 3),
(266, 19, '乌海', 3),
(267, 19, '乌兰察布市', 3),
(268, 19, '锡林郭勒盟', 3),
(269, 19, '兴安盟', 3),
(270, 20, '银川', 3),
(271, 20, '固原', 3),
(272, 20, '石嘴山', 3),
(273, 20, '吴忠', 3),
(274, 20, '中卫', 3),
(275, 21, '西宁', 3),
(276, 21, '果洛', 3),
(277, 21, '海北', 3),
(278, 21, '海东', 3),
(279, 21, '海南', 3),
(280, 21, '海西', 3),
(281, 21, '黄南', 3),
(282, 21, '玉树', 3),
(283, 22, '济南', 3),
(284, 22, '青岛', 3),
(285, 22, '滨州', 3),
(286, 22, '德州', 3),
(287, 22, '东营', 3),
(288, 22, '菏泽', 3),
(289, 22, '济宁', 3),
(290, 22, '莱芜', 3),
(291, 22, '聊城', 3),
(292, 22, '临沂', 3),
(293, 22, '日照', 3),
(294, 22, '泰安', 3),
(295, 22, '威海', 3),
(296, 22, '潍坊', 3),
(297, 22, '烟台', 3),
(298, 22, '枣庄', 3),
(299, 22, '淄博', 3),
(300, 23, '太原', 3),
(301, 23, '长治', 3),
(302, 23, '大同', 3),
(303, 23, '晋城', 3),
(304, 23, '晋中', 3),
(305, 23, '临汾', 3),
(306, 23, '吕梁', 3),
(307, 23, '朔州', 3),
(308, 23, '忻州', 3),
(309, 23, '阳泉', 3),
(310, 23, '运城', 3),
(311, 24, '西安', 3),
(312, 24, '安康', 3),
(313, 24, '宝鸡', 3),
(314, 24, '汉中', 3),
(315, 24, '商洛', 3),
(316, 24, '铜川', 3),
(317, 24, '渭南', 3),
(318, 24, '咸阳', 3),
(319, 24, '延安', 3),
(320, 24, '榆林', 3),
(321, 25, '上海', 3),
(322, 26, '成都', 3),
(323, 26, '绵阳', 3),
(324, 26, '阿坝', 3),
(325, 26, '巴中', 3),
(326, 26, '达州', 3),
(327, 26, '德阳', 3),
(328, 26, '甘孜', 3),
(329, 26, '广安', 3),
(330, 26, '广元', 3),
(331, 26, '乐山', 3),
(332, 26, '凉山', 3),
(333, 26, '眉山', 3),
(334, 26, '南充', 3),
(335, 26, '内江', 3),
(336, 26, '攀枝花', 3),
(337, 26, '遂宁', 3),
(338, 26, '雅安', 3),
(339, 26, '宜宾', 3),
(340, 26, '资阳', 3),
(341, 26, '自贡', 3),
(342, 26, '泸州', 3),
(343, 27, '天津', 3),
(344, 28, '拉萨', 3),
(345, 28, '阿里', 3),
(346, 28, '昌都', 3),
(347, 28, '林芝', 3),
(348, 28, '那曲', 3),
(349, 28, '日喀则', 3),
(350, 28, '山南', 3),
(351, 29, '乌鲁木齐', 3),
(352, 29, '阿克苏', 3),
(353, 29, '阿拉尔', 3),
(354, 29, '巴音郭楞', 3),
(355, 29, '博尔塔拉', 3),
(356, 29, '昌吉', 3),
(357, 29, '哈密', 3),
(358, 29, '和田', 3),
(359, 29, '喀什', 3),
(360, 29, '克拉玛依', 3),
(361, 29, '克孜勒苏', 3),
(362, 29, '石河子', 3),
(363, 29, '图木舒克', 3),
(364, 29, '吐鲁番', 3),
(365, 29, '五家渠', 3),
(366, 29, '伊犁', 3),
(367, 30, '昆明', 3),
(368, 30, '怒江', 3),
(369, 30, '普洱', 3),
(370, 30, '丽江', 3),
(371, 30, '保山', 3),
(372, 30, '楚雄', 3),
(373, 30, '大理', 3),
(374, 30, '德宏', 3),
(375, 30, '迪庆', 3),
(376, 30, '红河', 3),
(377, 30, '临沧', 3),
(378, 30, '曲靖', 3),
(379, 30, '文山', 3),
(380, 30, '西双版纳', 3),
(381, 30, '玉溪', 3),
(382, 30, '昭通', 3),
(383, 31, '杭州', 3),
(384, 31, '湖州', 3),
(385, 31, '嘉兴', 3),
(386, 31, '金华', 3),
(387, 31, '丽水', 3),
(388, 31, '宁波', 3),
(389, 31, '绍兴', 3),
(390, 31, '台州', 3),
(391, 31, '温州', 3),
(392, 31, '舟山', 3),
(393, 31, '衢州', 3),
(394, 32, '重庆', 3),
(395, 33, '香港', 3),
(396, 34, '澳门', 3),
(397, 35, '台湾', 3),
(398, 36, '迎江区', 4),
(399, 36, '大观区', 4),
(400, 36, '宜秀区', 4),
(401, 36, '桐城市', 4),
(402, 36, '怀宁县', 4),
(403, 36, '枞阳县', 4),
(404, 36, '潜山县', 4),
(405, 36, '太湖县', 4),
(406, 36, '宿松县', 4),
(407, 36, '望江县', 4),
(408, 36, '岳西县', 4),
(409, 37, '中市区', 4),
(410, 37, '东市区', 4),
(411, 37, '西市区', 4),
(412, 37, '郊区', 4),
(413, 37, '怀远县', 4),
(414, 37, '五河县', 4),
(415, 37, '固镇县', 4),
(416, 38, '居巢区', 4),
(417, 38, '庐江县', 4),
(418, 38, '无为县', 4),
(419, 38, '含山县', 4),
(420, 38, '和县', 4),
(421, 39, '贵池区', 4),
(422, 39, '东至县', 4),
(423, 39, '石台县', 4),
(424, 39, '青阳县', 4),
(425, 40, '琅琊区', 4),
(426, 40, '南谯区', 4),
(427, 40, '天长市', 4),
(428, 40, '明光市', 4),
(429, 40, '来安县', 4),
(430, 40, '全椒县', 4),
(431, 40, '定远县', 4),
(432, 40, '凤阳县', 4),
(433, 41, '蚌山区', 4),
(434, 41, '龙子湖区', 4),
(435, 41, '禹会区', 4),
(436, 41, '淮上区', 4),
(437, 41, '颍州区', 4),
(438, 41, '颍东区', 4),
(439, 41, '颍泉区', 4),
(440, 41, '界首市', 4),
(441, 41, '临泉县', 4),
(442, 41, '太和县', 4),
(443, 41, '阜南县', 4),
(444, 41, '颖上县', 4),
(445, 42, '相山区', 4),
(446, 42, '杜集区', 4),
(447, 42, '烈山区', 4),
(448, 42, '濉溪县', 4),
(449, 43, '田家庵区', 4),
(450, 43, '大通区', 4),
(451, 43, '谢家集区', 4),
(452, 43, '八公山区', 4),
(453, 43, '潘集区', 4),
(454, 43, '凤台县', 4),
(455, 44, '屯溪区', 4),
(456, 44, '黄山区', 4),
(457, 44, '徽州区', 4),
(458, 44, '歙县', 4),
(459, 44, '休宁县', 4),
(460, 44, '黟县', 4),
(461, 44, '祁门县', 4),
(462, 45, '金安区', 4),
(463, 45, '裕安区', 4),
(464, 45, '寿县', 4),
(465, 45, '霍邱县', 4),
(466, 45, '舒城县', 4),
(467, 45, '金寨县', 4),
(468, 45, '霍山县', 4),
(469, 46, '雨山区', 4),
(470, 46, '花山区', 4),
(471, 46, '金家庄区', 4),
(472, 46, '当涂县', 4),
(473, 47, '埇桥区', 4),
(474, 47, '砀山县', 4),
(475, 47, '萧县', 4),
(476, 47, '灵璧县', 4),
(477, 47, '泗县', 4),
(478, 48, '铜官山区', 4),
(479, 48, '狮子山区', 4),
(480, 48, '郊区', 4),
(481, 48, '铜陵县', 4),
(482, 49, '镜湖区', 4),
(483, 49, '弋江区', 4),
(484, 49, '鸠江区', 4),
(485, 49, '三山区', 4),
(486, 49, '芜湖县', 4),
(487, 49, '繁昌县', 4),
(488, 49, '南陵县', 4),
(489, 50, '宣州区', 4),
(490, 50, '宁国市', 4),
(491, 50, '郎溪县', 4),
(492, 50, '广德县', 4),
(493, 50, '泾县', 4),
(494, 50, '绩溪县', 4),
(495, 50, '旌德县', 4),
(496, 51, '涡阳县', 4),
(497, 51, '蒙城县', 4),
(498, 51, '利辛县', 4),
(499, 51, '谯城区', 4),
(500, 52, '东城区', 4),
(501, 52, '西城区', 4),
(502, 52, '海淀区', 4),
(503, 52, '朝阳区', 4),
(504, 52, '崇文区', 4),
(505, 52, '宣武区', 4),
(506, 52, '丰台区', 4),
(507, 52, '石景山区', 4),
(508, 52, '房山区', 4),
(509, 52, '门头沟区', 4),
(510, 52, '通州区', 4),
(511, 52, '顺义区', 4),
(512, 52, '昌平区', 4),
(513, 52, '怀柔区', 4),
(514, 52, '平谷区', 4),
(515, 52, '大兴区', 4),
(516, 52, '密云县', 4),
(517, 52, '延庆县', 4),
(518, 53, '鼓楼区', 4),
(519, 53, '台江区', 4),
(520, 53, '仓山区', 4),
(521, 53, '马尾区', 4),
(522, 53, '晋安区', 4),
(523, 53, '福清市', 4),
(524, 53, '长乐市', 4),
(525, 53, '闽侯县', 4),
(526, 53, '连江县', 4),
(527, 53, '罗源县', 4),
(528, 53, '闽清县', 4),
(529, 53, '永泰县', 4),
(530, 53, '平潭县', 4),
(531, 54, '新罗区', 4),
(532, 54, '漳平市', 4),
(533, 54, '长汀县', 4),
(534, 54, '永定县', 4),
(535, 54, '上杭县', 4),
(536, 54, '武平县', 4),
(537, 54, '连城县', 4),
(538, 55, '延平区', 4),
(539, 55, '邵武市', 4),
(540, 55, '武夷山市', 4),
(541, 55, '建瓯市', 4),
(542, 55, '建阳市', 4),
(543, 55, '顺昌县', 4),
(544, 55, '浦城县', 4),
(545, 55, '光泽县', 4),
(546, 55, '松溪县', 4),
(547, 55, '政和县', 4),
(548, 56, '蕉城区', 4),
(549, 56, '福安市', 4),
(550, 56, '福鼎市', 4),
(551, 56, '霞浦县', 4),
(552, 56, '古田县', 4),
(553, 56, '屏南县', 4),
(554, 56, '寿宁县', 4),
(555, 56, '周宁县', 4),
(556, 56, '柘荣县', 4),
(557, 57, '城厢区', 4),
(558, 57, '涵江区', 4),
(559, 57, '荔城区', 4),
(560, 57, '秀屿区', 4),
(561, 57, '仙游县', 4),
(562, 58, '鲤城区', 4),
(563, 58, '丰泽区', 4),
(564, 58, '洛江区', 4),
(565, 58, '清濛开发区', 4),
(566, 58, '泉港区', 4),
(567, 58, '石狮市', 4),
(568, 58, '晋江市', 4),
(569, 58, '南安市', 4),
(570, 58, '惠安县', 4),
(571, 58, '安溪县', 4),
(572, 58, '永春县', 4),
(573, 58, '德化县', 4),
(574, 58, '金门县', 4),
(575, 59, '梅列区', 4),
(576, 59, '三元区', 4),
(577, 59, '永安市', 4),
(578, 59, '明溪县', 4),
(579, 59, '清流县', 4),
(580, 59, '宁化县', 4),
(581, 59, '大田县', 4),
(582, 59, '尤溪县', 4),
(583, 59, '沙县', 4),
(584, 59, '将乐县', 4),
(585, 59, '泰宁县', 4),
(586, 59, '建宁县', 4),
(587, 60, '思明区', 4),
(588, 60, '海沧区', 4),
(589, 60, '湖里区', 4),
(590, 60, '集美区', 4),
(591, 60, '同安区', 4),
(592, 60, '翔安区', 4),
(593, 61, '芗城区', 4),
(594, 61, '龙文区', 4),
(595, 61, '龙海市', 4),
(596, 61, '云霄县', 4),
(597, 61, '漳浦县', 4),
(598, 61, '诏安县', 4),
(599, 61, '长泰县', 4),
(600, 61, '东山县', 4),
(601, 61, '南靖县', 4),
(602, 61, '平和县', 4),
(603, 61, '华安县', 4),
(604, 62, '皋兰县', 4),
(605, 62, '城关区', 4),
(606, 62, '七里河区', 4),
(607, 62, '西固区', 4),
(608, 62, '安宁区', 4),
(609, 62, '红古区', 4),
(610, 62, '永登县', 4),
(611, 62, '榆中县', 4),
(612, 63, '白银区', 4),
(613, 63, '平川区', 4),
(614, 63, '会宁县', 4),
(615, 63, '景泰县', 4),
(616, 63, '靖远县', 4),
(617, 64, '临洮县', 4),
(618, 64, '陇西县', 4),
(619, 64, '通渭县', 4),
(620, 64, '渭源县', 4),
(621, 64, '漳县', 4),
(622, 64, '岷县', 4),
(623, 64, '安定区', 4),
(624, 64, '安定区', 4),
(625, 65, '合作市', 4),
(626, 65, '临潭县', 4),
(627, 65, '卓尼县', 4),
(628, 65, '舟曲县', 4),
(629, 65, '迭部县', 4),
(630, 65, '玛曲县', 4),
(631, 65, '碌曲县', 4),
(632, 65, '夏河县', 4),
(633, 66, '嘉峪关市', 4),
(634, 67, '金川区', 4),
(635, 67, '永昌县', 4),
(636, 68, '肃州区', 4),
(637, 68, '玉门市', 4),
(638, 68, '敦煌市', 4),
(639, 68, '金塔县', 4),
(640, 68, '瓜州县', 4),
(641, 68, '肃北', 4),
(642, 68, '阿克塞', 4),
(643, 69, '临夏市', 4),
(644, 69, '临夏县', 4),
(645, 69, '康乐县', 4),
(646, 69, '永靖县', 4),
(647, 69, '广河县', 4),
(648, 69, '和政县', 4),
(649, 69, '东乡族自治县', 4),
(650, 69, '积石山', 4),
(651, 70, '成县', 4),
(652, 70, '徽县', 4),
(653, 70, '康县', 4),
(654, 70, '礼县', 4),
(655, 70, '两当县', 4),
(656, 70, '文县', 4),
(657, 70, '西和县', 4),
(658, 70, '宕昌县', 4),
(659, 70, '武都区', 4),
(660, 71, '崇信县', 4),
(661, 71, '华亭县', 4),
(662, 71, '静宁县', 4),
(663, 71, '灵台县', 4),
(664, 71, '崆峒区', 4),
(665, 71, '庄浪县', 4),
(666, 71, '泾川县', 4),
(667, 72, '合水县', 4),
(668, 72, '华池县', 4),
(669, 72, '环县', 4),
(670, 72, '宁县', 4),
(671, 72, '庆城县', 4),
(672, 72, '西峰区', 4),
(673, 72, '镇原县', 4),
(674, 72, '正宁县', 4),
(675, 73, '甘谷县', 4),
(676, 73, '秦安县', 4),
(677, 73, '清水县', 4),
(678, 73, '秦州区', 4),
(679, 73, '麦积区', 4),
(680, 73, '武山县', 4),
(681, 73, '张家川', 4),
(682, 74, '古浪县', 4),
(683, 74, '民勤县', 4),
(684, 74, '天祝', 4),
(685, 74, '凉州区', 4),
(686, 75, '高台县', 4),
(687, 75, '临泽县', 4),
(688, 75, '民乐县', 4),
(689, 75, '山丹县', 4),
(690, 75, '肃南', 4),
(691, 75, '甘州区', 4),
(692, 76, '从化市', 4),
(693, 76, '天河区', 4),
(694, 76, '东山区', 4),
(695, 76, '白云区', 4),
(696, 76, '海珠区', 4),
(697, 76, '荔湾区', 4),
(698, 76, '越秀区', 4),
(699, 76, '黄埔区', 4),
(700, 76, '番禺区', 4),
(701, 76, '花都区', 4),
(702, 76, '增城区', 4),
(703, 76, '从化区', 4),
(704, 76, '市郊', 4),
(705, 77, '福田区', 4),
(706, 77, '罗湖区', 4),
(707, 77, '南山区', 4),
(708, 77, '宝安区', 4),
(709, 77, '龙岗区', 4),
(710, 77, '盐田区', 4),
(711, 78, '湘桥区', 4),
(712, 78, '潮安县', 4),
(713, 78, '饶平县', 4),
(714, 79, '南城区', 4),
(715, 79, '东城区', 4),
(716, 79, '万江区', 4),
(717, 79, '莞城区', 4),
(718, 79, '石龙镇', 4),
(719, 79, '虎门镇', 4),
(720, 79, '麻涌镇', 4),
(721, 79, '道滘镇', 4),
(722, 79, '石碣镇', 4),
(723, 79, '沙田镇', 4),
(724, 79, '望牛墩镇', 4),
(725, 79, '洪梅镇', 4),
(726, 79, '茶山镇', 4),
(727, 79, '寮步镇', 4),
(728, 79, '大岭山镇', 4),
(729, 79, '大朗镇', 4),
(730, 79, '黄江镇', 4),
(731, 79, '樟木头', 4),
(732, 79, '凤岗镇', 4),
(733, 79, '塘厦镇', 4),
(734, 79, '谢岗镇', 4),
(735, 79, '厚街镇', 4),
(736, 79, '清溪镇', 4),
(737, 79, '常平镇', 4),
(738, 79, '桥头镇', 4),
(739, 79, '横沥镇', 4),
(740, 79, '东坑镇', 4),
(741, 79, '企石镇', 4),
(742, 79, '石排镇', 4),
(743, 79, '长安镇', 4),
(744, 79, '中堂镇', 4),
(745, 79, '高埗镇', 4),
(746, 80, '禅城区', 4),
(747, 80, '南海区', 4),
(748, 80, '顺德区', 4),
(749, 80, '三水区', 4),
(750, 80, '高明区', 4),
(751, 81, '东源县', 4),
(752, 81, '和平县', 4),
(753, 81, '源城区', 4),
(754, 81, '连平县', 4),
(755, 81, '龙川县', 4),
(756, 81, '紫金县', 4),
(757, 82, '惠阳区', 4),
(758, 82, '惠城区', 4),
(759, 82, '大亚湾', 4),
(760, 82, '博罗县', 4),
(761, 82, '惠东县', 4),
(762, 82, '龙门县', 4),
(763, 83, '江海区', 4),
(764, 83, '蓬江区', 4),
(765, 83, '新会区', 4),
(766, 83, '台山市', 4),
(767, 83, '开平市', 4),
(768, 83, '鹤山市', 4),
(769, 83, '恩平市', 4),
(770, 84, '榕城区', 4),
(771, 84, '普宁市', 4),
(772, 84, '揭东县', 4),
(773, 84, '揭西县', 4),
(774, 84, '惠来县', 4),
(775, 85, '茂南区', 4),
(776, 85, '茂港区', 4),
(777, 85, '高州市', 4),
(778, 85, '化州市', 4),
(779, 85, '信宜市', 4),
(780, 85, '电白县', 4),
(781, 86, '梅县', 4),
(782, 86, '梅江区', 4),
(783, 86, '兴宁市', 4),
(784, 86, '大埔县', 4),
(785, 86, '丰顺县', 4),
(786, 86, '五华县', 4),
(787, 86, '平远县', 4),
(788, 86, '蕉岭县', 4),
(789, 87, '清城区', 4),
(790, 87, '英德市', 4),
(791, 87, '连州市', 4),
(792, 87, '佛冈县', 4),
(793, 87, '阳山县', 4),
(794, 87, '清新县', 4),
(795, 87, '连山', 4),
(796, 87, '连南', 4),
(797, 88, '南澳县', 4),
(798, 88, '潮阳区', 4),
(799, 88, '澄海区', 4),
(800, 88, '龙湖区', 4),
(801, 88, '金平区', 4),
(802, 88, '濠江区', 4),
(803, 88, '潮南区', 4),
(804, 89, '城区', 4),
(805, 89, '陆丰市', 4),
(806, 89, '海丰县', 4),
(807, 89, '陆河县', 4),
(808, 90, '曲江县', 4),
(809, 90, '浈江区', 4),
(810, 90, '武江区', 4),
(811, 90, '曲江区', 4),
(812, 90, '乐昌市', 4),
(813, 90, '南雄市', 4),
(814, 90, '始兴县', 4),
(815, 90, '仁化县', 4),
(816, 90, '翁源县', 4),
(817, 90, '新丰县', 4),
(818, 90, '乳源', 4),
(819, 91, '江城区', 4),
(820, 91, '阳春市', 4),
(821, 91, '阳西县', 4),
(822, 91, '阳东县', 4),
(823, 92, '云城区', 4),
(824, 92, '罗定市', 4),
(825, 92, '新兴县', 4),
(826, 92, '郁南县', 4),
(827, 92, '云安县', 4),
(828, 93, '赤坎区', 4),
(829, 93, '霞山区', 4),
(830, 93, '坡头区', 4),
(831, 93, '麻章区', 4),
(832, 93, '廉江市', 4),
(833, 93, '雷州市', 4),
(834, 93, '吴川市', 4),
(835, 93, '遂溪县', 4),
(836, 93, '徐闻县', 4),
(837, 94, '肇庆市', 4),
(838, 94, '高要市', 4),
(839, 94, '四会市', 4),
(840, 94, '广宁县', 4),
(841, 94, '怀集县', 4),
(842, 94, '封开县', 4),
(843, 94, '德庆县', 4),
(844, 95, '石岐街道', 4),
(845, 95, '东区街道', 4),
(846, 95, '西区街道', 4),
(847, 95, '环城街道', 4),
(848, 95, '中山港街道', 4),
(849, 95, '五桂山街道', 4),
(850, 96, '香洲区', 4),
(851, 96, '斗门区', 4),
(852, 96, '金湾区', 4),
(853, 97, '邕宁区', 4),
(854, 97, '青秀区', 4),
(855, 97, '兴宁区', 4),
(856, 97, '良庆区', 4),
(857, 97, '西乡塘区', 4),
(858, 97, '江南区', 4),
(859, 97, '武鸣县', 4),
(860, 97, '隆安县', 4),
(861, 97, '马山县', 4),
(862, 97, '上林县', 4),
(863, 97, '宾阳县', 4),
(864, 97, '横县', 4),
(865, 98, '秀峰区', 4),
(866, 98, '叠彩区', 4),
(867, 98, '象山区', 4),
(868, 98, '七星区', 4),
(869, 98, '雁山区', 4),
(870, 98, '阳朔县', 4),
(871, 98, '临桂县', 4),
(872, 98, '灵川县', 4),
(873, 98, '全州县', 4),
(874, 98, '平乐县', 4),
(875, 98, '兴安县', 4),
(876, 98, '灌阳县', 4),
(877, 98, '荔浦县', 4),
(878, 98, '资源县', 4),
(879, 98, '永福县', 4),
(880, 98, '龙胜', 4),
(881, 98, '恭城', 4),
(882, 99, '右江区', 4),
(883, 99, '凌云县', 4),
(884, 99, '平果县', 4),
(885, 99, '西林县', 4),
(886, 99, '乐业县', 4),
(887, 99, '德保县', 4),
(888, 99, '田林县', 4),
(889, 99, '田阳县', 4),
(890, 99, '靖西县', 4),
(891, 99, '田东县', 4),
(892, 99, '那坡县', 4),
(893, 99, '隆林', 4),
(894, 100, '海城区', 4),
(895, 100, '银海区', 4),
(896, 100, '铁山港区', 4),
(897, 100, '合浦县', 4),
(898, 101, '江州区', 4),
(899, 101, '凭祥市', 4),
(900, 101, '宁明县', 4),
(901, 101, '扶绥县', 4),
(902, 101, '龙州县', 4),
(903, 101, '大新县', 4),
(904, 101, '天等县', 4),
(905, 102, '港口区', 4),
(906, 102, '防城区', 4),
(907, 102, '东兴市', 4),
(908, 102, '上思县', 4),
(909, 103, '港北区', 4),
(910, 103, '港南区', 4),
(911, 103, '覃塘区', 4),
(912, 103, '桂平市', 4),
(913, 103, '平南县', 4),
(914, 104, '金城江区', 4),
(915, 104, '宜州市', 4),
(916, 104, '天峨县', 4),
(917, 104, '凤山县', 4),
(918, 104, '南丹县', 4),
(919, 104, '东兰县', 4),
(920, 104, '都安', 4),
(921, 104, '罗城', 4),
(922, 104, '巴马', 4),
(923, 104, '环江', 4),
(924, 104, '大化', 4),
(925, 105, '八步区', 4),
(926, 105, '钟山县', 4),
(927, 105, '昭平县', 4),
(928, 105, '富川', 4),
(929, 106, '兴宾区', 4),
(930, 106, '合山市', 4),
(931, 106, '象州县', 4),
(932, 106, '武宣县', 4),
(933, 106, '忻城县', 4),
(934, 106, '金秀', 4),
(935, 107, '城中区', 4),
(936, 107, '鱼峰区', 4),
(937, 107, '柳北区', 4),
(938, 107, '柳南区', 4),
(939, 107, '柳江县', 4),
(940, 107, '柳城县', 4),
(941, 107, '鹿寨县', 4),
(942, 107, '融安县', 4),
(943, 107, '融水', 4),
(944, 107, '三江', 4),
(945, 108, '钦南区', 4),
(946, 108, '钦北区', 4),
(947, 108, '灵山县', 4),
(948, 108, '浦北县', 4),
(949, 109, '万秀区', 4),
(950, 109, '蝶山区', 4),
(951, 109, '长洲区', 4),
(952, 109, '岑溪市', 4),
(953, 109, '苍梧县', 4),
(954, 109, '藤县', 4),
(955, 109, '蒙山县', 4),
(956, 110, '玉州区', 4),
(957, 110, '北流市', 4),
(958, 110, '容县', 4),
(959, 110, '陆川县', 4),
(960, 110, '博白县', 4),
(961, 110, '兴业县', 4),
(962, 111, '南明区', 4),
(963, 111, '云岩区', 4),
(964, 111, '花溪区', 4),
(965, 111, '乌当区', 4),
(966, 111, '白云区', 4),
(967, 111, '小河区', 4),
(968, 111, '金阳新区', 4),
(969, 111, '新天园区', 4),
(970, 111, '清镇市', 4),
(971, 111, '开阳县', 4),
(972, 111, '修文县', 4),
(973, 111, '息烽县', 4),
(974, 112, '西秀区', 4),
(975, 112, '关岭', 4),
(976, 112, '镇宁', 4),
(977, 112, '紫云', 4),
(978, 112, '平坝县', 4),
(979, 112, '普定县', 4),
(980, 113, '毕节市', 4),
(981, 113, '大方县', 4),
(982, 113, '黔西县', 4),
(983, 113, '金沙县', 4),
(984, 113, '织金县', 4),
(985, 113, '纳雍县', 4),
(986, 113, '赫章县', 4),
(987, 113, '威宁', 4),
(988, 114, '钟山区', 4),
(989, 114, '六枝特区', 4),
(990, 114, '水城县', 4),
(991, 114, '盘县', 4),
(992, 115, '凯里市', 4),
(993, 115, '黄平县', 4),
(994, 115, '施秉县', 4),
(995, 115, '三穗县', 4),
(996, 115, '镇远县', 4),
(997, 115, '岑巩县', 4),
(998, 115, '天柱县', 4),
(999, 115, '锦屏县', 4),
(1000, 115, '剑河县', 4),
(1001, 115, '台江县', 4),
(1002, 115, '黎平县', 4),
(1003, 115, '榕江县', 4),
(1004, 115, '从江县', 4),
(1005, 115, '雷山县', 4),
(1006, 115, '麻江县', 4),
(1007, 115, '丹寨县', 4),
(1008, 116, '都匀市', 4),
(1009, 116, '福泉市', 4),
(1010, 116, '荔波县', 4),
(1011, 116, '贵定县', 4),
(1012, 116, '瓮安县', 4),
(1013, 116, '独山县', 4),
(1014, 116, '平塘县', 4),
(1015, 116, '罗甸县', 4),
(1016, 116, '长顺县', 4),
(1017, 116, '龙里县', 4),
(1018, 116, '惠水县', 4),
(1019, 116, '三都', 4),
(1020, 117, '兴义市', 4),
(1021, 117, '兴仁县', 4),
(1022, 117, '普安县', 4),
(1023, 117, '晴隆县', 4),
(1024, 117, '贞丰县', 4),
(1025, 117, '望谟县', 4),
(1026, 117, '册亨县', 4),
(1027, 117, '安龙县', 4),
(1028, 118, '铜仁市', 4),
(1029, 118, '江口县', 4),
(1030, 118, '石阡县', 4),
(1031, 118, '思南县', 4),
(1032, 118, '德江县', 4),
(1033, 118, '玉屏', 4),
(1034, 118, '印江', 4),
(1035, 118, '沿河', 4),
(1036, 118, '松桃', 4),
(1037, 118, '万山特区', 4),
(1038, 119, '红花岗区', 4),
(1039, 119, '务川县', 4),
(1040, 119, '道真县', 4),
(1041, 119, '汇川区', 4),
(1042, 119, '赤水市', 4),
(1043, 119, '仁怀市', 4),
(1044, 119, '遵义县', 4),
(1045, 119, '桐梓县', 4),
(1046, 119, '绥阳县', 4),
(1047, 119, '正安县', 4),
(1048, 119, '凤冈县', 4),
(1049, 119, '湄潭县', 4),
(1050, 119, '余庆县', 4),
(1051, 119, '习水县', 4),
(1052, 119, '道真', 4),
(1053, 119, '务川', 4),
(1054, 120, '秀英区', 4),
(1055, 120, '龙华区', 4),
(1056, 120, '琼山区', 4),
(1057, 120, '美兰区', 4),
(1058, 137, '市区', 4),
(1059, 137, '洋浦开发区', 4),
(1060, 137, '那大镇', 4),
(1061, 137, '王五镇', 4),
(1062, 137, '雅星镇', 4),
(1063, 137, '大成镇', 4),
(1064, 137, '中和镇', 4),
(1065, 137, '峨蔓镇', 4),
(1066, 137, '南丰镇', 4),
(1067, 137, '白马井镇', 4),
(1068, 137, '兰洋镇', 4),
(1069, 137, '和庆镇', 4),
(1070, 137, '海头镇', 4),
(1071, 137, '排浦镇', 4),
(1072, 137, '东成镇', 4),
(1073, 137, '光村镇', 4),
(1074, 137, '木棠镇', 4),
(1075, 137, '新州镇', 4),
(1076, 137, '三都镇', 4),
(1077, 137, '其他', 4),
(1078, 138, '长安区', 4),
(1079, 138, '桥东区', 4),
(1080, 138, '桥西区', 4),
(1081, 138, '新华区', 4),
(1082, 138, '裕华区', 4),
(1083, 138, '井陉矿区', 4),
(1084, 138, '高新区', 4),
(1085, 138, '辛集市', 4),
(1086, 138, '藁城市', 4),
(1087, 138, '晋州市', 4),
(1088, 138, '新乐市', 4),
(1089, 138, '鹿泉市', 4),
(1090, 138, '井陉县', 4),
(1091, 138, '正定县', 4),
(1092, 138, '栾城县', 4),
(1093, 138, '行唐县', 4),
(1094, 138, '灵寿县', 4),
(1095, 138, '高邑县', 4),
(1096, 138, '深泽县', 4),
(1097, 138, '赞皇县', 4),
(1098, 138, '无极县', 4),
(1099, 138, '平山县', 4),
(1100, 138, '元氏县', 4),
(1101, 138, '赵县', 4),
(1102, 139, '新市区', 4),
(1103, 139, '南市区', 4),
(1104, 139, '北市区', 4),
(1105, 139, '涿州市', 4),
(1106, 139, '定州市', 4),
(1107, 139, '安国市', 4),
(1108, 139, '高碑店市', 4),
(1109, 139, '满城县', 4),
(1110, 139, '清苑县', 4),
(1111, 139, '涞水县', 4),
(1112, 139, '阜平县', 4),
(1113, 139, '徐水县', 4),
(1114, 139, '定兴县', 4),
(1115, 139, '唐县', 4),
(1116, 139, '高阳县', 4),
(1117, 139, '容城县', 4),
(1118, 139, '涞源县', 4),
(1119, 139, '望都县', 4),
(1120, 139, '安新县', 4),
(1121, 139, '易县', 4),
(1122, 139, '曲阳县', 4),
(1123, 139, '蠡县', 4),
(1124, 139, '顺平县', 4),
(1125, 139, '博野县', 4),
(1126, 139, '雄县', 4),
(1127, 140, '运河区', 4),
(1128, 140, '新华区', 4),
(1129, 140, '泊头市', 4),
(1130, 140, '任丘市', 4),
(1131, 140, '黄骅市', 4),
(1132, 140, '河间市', 4),
(1133, 140, '沧县', 4),
(1134, 140, '青县', 4),
(1135, 140, '东光县', 4),
(1136, 140, '海兴县', 4),
(1137, 140, '盐山县', 4),
(1138, 140, '肃宁县', 4),
(1139, 140, '南皮县', 4),
(1140, 140, '吴桥县', 4),
(1141, 140, '献县', 4),
(1142, 140, '孟村', 4),
(1143, 141, '双桥区', 4),
(1144, 141, '双滦区', 4),
(1145, 141, '鹰手营子矿区', 4),
(1146, 141, '承德县', 4),
(1147, 141, '兴隆县', 4),
(1148, 141, '平泉县', 4),
(1149, 141, '滦平县', 4),
(1150, 141, '隆化县', 4),
(1151, 141, '丰宁', 4),
(1152, 141, '宽城', 4),
(1153, 141, '围场', 4),
(1154, 142, '从台区', 4),
(1155, 142, '复兴区', 4),
(1156, 142, '邯山区', 4),
(1157, 142, '峰峰矿区', 4),
(1158, 142, '武安市', 4),
(1159, 142, '邯郸县', 4),
(1160, 142, '临漳县', 4),
(1161, 142, '成安县', 4),
(1162, 142, '大名县', 4),
(1163, 142, '涉县', 4),
(1164, 142, '磁县', 4),
(1165, 142, '肥乡县', 4),
(1166, 142, '永年县', 4),
(1167, 142, '邱县', 4),
(1168, 142, '鸡泽县', 4),
(1169, 142, '广平县', 4),
(1170, 142, '馆陶县', 4),
(1171, 142, '魏县', 4),
(1172, 142, '曲周县', 4),
(1173, 143, '桃城区', 4),
(1174, 143, '冀州市', 4),
(1175, 143, '深州市', 4),
(1176, 143, '枣强县', 4),
(1177, 143, '武邑县', 4),
(1178, 143, '武强县', 4),
(1179, 143, '饶阳县', 4),
(1180, 143, '安平县', 4),
(1181, 143, '故城县', 4),
(1182, 143, '景县', 4),
(1183, 143, '阜城县', 4),
(1184, 144, '安次区', 4),
(1185, 144, '广阳区', 4),
(1186, 144, '霸州市', 4),
(1187, 144, '三河市', 4),
(1188, 144, '固安县', 4),
(1189, 144, '永清县', 4),
(1190, 144, '香河县', 4),
(1191, 144, '大城县', 4),
(1192, 144, '文安县', 4),
(1193, 144, '大厂', 4),
(1194, 145, '海港区', 4),
(1195, 145, '山海关区', 4),
(1196, 145, '北戴河区', 4),
(1197, 145, '昌黎县', 4),
(1198, 145, '抚宁县', 4),
(1199, 145, '卢龙县', 4),
(1200, 145, '青龙', 4),
(1201, 146, '路北区', 4),
(1202, 146, '路南区', 4),
(1203, 146, '古冶区', 4),
(1204, 146, '开平区', 4),
(1205, 146, '丰南区', 4),
(1206, 146, '丰润区', 4),
(1207, 146, '遵化市', 4),
(1208, 146, '迁安市', 4),
(1209, 146, '滦县', 4),
(1210, 146, '滦南县', 4),
(1211, 146, '乐亭县', 4),
(1212, 146, '迁西县', 4),
(1213, 146, '玉田县', 4),
(1214, 146, '唐海县', 4),
(1215, 147, '桥东区', 4),
(1216, 147, '桥西区', 4),
(1217, 147, '南宫市', 4),
(1218, 147, '沙河市', 4),
(1219, 147, '邢台县', 4),
(1220, 147, '临城县', 4),
(1221, 147, '内丘县', 4),
(1222, 147, '柏乡县', 4),
(1223, 147, '隆尧县', 4),
(1224, 147, '任县', 4),
(1225, 147, '南和县', 4),
(1226, 147, '宁晋县', 4),
(1227, 147, '巨鹿县', 4),
(1228, 147, '新河县', 4),
(1229, 147, '广宗县', 4),
(1230, 147, '平乡县', 4),
(1231, 147, '威县', 4),
(1232, 147, '清河县', 4),
(1233, 147, '临西县', 4),
(1234, 148, '桥西区', 4),
(1235, 148, '桥东区', 4),
(1236, 148, '宣化区', 4),
(1237, 148, '下花园区', 4),
(1238, 148, '宣化县', 4),
(1239, 148, '张北县', 4),
(1240, 148, '康保县', 4),
(1241, 148, '沽源县', 4),
(1242, 148, '尚义县', 4),
(1243, 148, '蔚县', 4),
(1244, 148, '阳原县', 4),
(1245, 148, '怀安县', 4),
(1246, 148, '万全县', 4),
(1247, 148, '怀来县', 4),
(1248, 148, '涿鹿县', 4),
(1249, 148, '赤城县', 4),
(1250, 148, '崇礼县', 4),
(1251, 149, '金水区', 4),
(1252, 149, '邙山区', 4),
(1253, 149, '二七区', 4),
(1254, 149, '管城区', 4),
(1255, 149, '中原区', 4),
(1256, 149, '上街区', 4),
(1257, 149, '惠济区', 4),
(1258, 149, '郑东新区', 4),
(1259, 149, '经济技术开发区', 4),
(1260, 149, '高新开发区', 4),
(1261, 149, '出口加工区', 4),
(1262, 149, '巩义市', 4),
(1263, 149, '荥阳市', 4),
(1264, 149, '新密市', 4),
(1265, 149, '新郑市', 4),
(1266, 149, '登封市', 4),
(1267, 149, '中牟县', 4),
(1268, 150, '西工区', 4),
(1269, 150, '老城区', 4),
(1270, 150, '涧西区', 4),
(1271, 150, '瀍河回族区', 4),
(1272, 150, '洛龙区', 4),
(1273, 150, '吉利区', 4),
(1274, 150, '偃师市', 4),
(1275, 150, '孟津县', 4),
(1276, 150, '新安县', 4),
(1277, 150, '栾川县', 4),
(1278, 150, '嵩县', 4),
(1279, 150, '汝阳县', 4),
(1280, 150, '宜阳县', 4),
(1281, 150, '洛宁县', 4),
(1282, 150, '伊川县', 4),
(1283, 151, '鼓楼区', 4),
(1284, 151, '龙亭区', 4),
(1285, 151, '顺河回族区', 4),
(1286, 151, '金明区', 4),
(1287, 151, '禹王台区', 4),
(1288, 151, '杞县', 4),
(1289, 151, '通许县', 4),
(1290, 151, '尉氏县', 4),
(1291, 151, '开封县', 4),
(1292, 151, '兰考县', 4),
(1293, 152, '北关区', 4),
(1294, 152, '文峰区', 4),
(1295, 152, '殷都区', 4),
(1296, 152, '龙安区', 4),
(1297, 152, '林州市', 4),
(1298, 152, '安阳县', 4),
(1299, 152, '汤阴县', 4),
(1300, 152, '滑县', 4),
(1301, 152, '内黄县', 4),
(1302, 153, '淇滨区', 4),
(1303, 153, '山城区', 4),
(1304, 153, '鹤山区', 4),
(1305, 153, '浚县', 4),
(1306, 153, '淇县', 4),
(1307, 154, '济源市', 4),
(1308, 155, '解放区', 4),
(1309, 155, '中站区', 4),
(1310, 155, '马村区', 4),
(1311, 155, '山阳区', 4),
(1312, 155, '沁阳市', 4),
(1313, 155, '孟州市', 4),
(1314, 155, '修武县', 4),
(1315, 155, '博爱县', 4),
(1316, 155, '武陟县', 4),
(1317, 155, '温县', 4),
(1318, 156, '卧龙区', 4),
(1319, 156, '宛城区', 4),
(1320, 156, '邓州市', 4),
(1321, 156, '南召县', 4),
(1322, 156, '方城县', 4),
(1323, 156, '西峡县', 4),
(1324, 156, '镇平县', 4),
(1325, 156, '内乡县', 4),
(1326, 156, '淅川县', 4),
(1327, 156, '社旗县', 4),
(1328, 156, '唐河县', 4),
(1329, 156, '新野县', 4),
(1330, 156, '桐柏县', 4),
(1331, 157, '新华区', 4),
(1332, 157, '卫东区', 4),
(1333, 157, '湛河区', 4),
(1334, 157, '石龙区', 4),
(1335, 157, '舞钢市', 4),
(1336, 157, '汝州市', 4),
(1337, 157, '宝丰县', 4),
(1338, 157, '叶县', 4),
(1339, 157, '鲁山县', 4),
(1340, 157, '郏县', 4),
(1341, 158, '湖滨区', 4),
(1342, 158, '义马市', 4),
(1343, 158, '灵宝市', 4),
(1344, 158, '渑池县', 4),
(1345, 158, '陕县', 4),
(1346, 158, '卢氏县', 4),
(1347, 159, '梁园区', 4),
(1348, 159, '睢阳区', 4),
(1349, 159, '永城市', 4),
(1350, 159, '民权县', 4),
(1351, 159, '睢县', 4),
(1352, 159, '宁陵县', 4),
(1353, 159, '虞城县', 4),
(1354, 159, '柘城县', 4),
(1355, 159, '夏邑县', 4),
(1356, 160, '卫滨区', 4),
(1357, 160, '红旗区', 4),
(1358, 160, '凤泉区', 4),
(1359, 160, '牧野区', 4),
(1360, 160, '卫辉市', 4),
(1361, 160, '辉县市', 4),
(1362, 160, '新乡县', 4),
(1363, 160, '获嘉县', 4),
(1364, 160, '原阳县', 4),
(1365, 160, '延津县', 4),
(1366, 160, '封丘县', 4),
(1367, 160, '长垣县', 4),
(1368, 161, '浉河区', 4),
(1369, 161, '平桥区', 4),
(1370, 161, '罗山县', 4),
(1371, 161, '光山县', 4),
(1372, 161, '新县', 4),
(1373, 161, '商城县', 4),
(1374, 161, '固始县', 4),
(1375, 161, '潢川县', 4),
(1376, 161, '淮滨县', 4),
(1377, 161, '息县', 4),
(1378, 162, '魏都区', 4),
(1379, 162, '禹州市', 4),
(1380, 162, '长葛市', 4),
(1381, 162, '许昌县', 4),
(1382, 162, '鄢陵县', 4),
(1383, 162, '襄城县', 4),
(1384, 163, '川汇区', 4),
(1385, 163, '项城市', 4),
(1386, 163, '扶沟县', 4),
(1387, 163, '西华县', 4),
(1388, 163, '商水县', 4),
(1389, 163, '沈丘县', 4),
(1390, 163, '郸城县', 4),
(1391, 163, '淮阳县', 4),
(1392, 163, '太康县', 4),
(1393, 163, '鹿邑县', 4),
(1394, 164, '驿城区', 4),
(1395, 164, '西平县', 4),
(1396, 164, '上蔡县', 4),
(1397, 164, '平舆县', 4),
(1398, 164, '正阳县', 4),
(1399, 164, '确山县', 4),
(1400, 164, '泌阳县', 4),
(1401, 164, '汝南县', 4),
(1402, 164, '遂平县', 4),
(1403, 164, '新蔡县', 4),
(1404, 165, '郾城区', 4),
(1405, 165, '源汇区', 4),
(1406, 165, '召陵区', 4),
(1407, 165, '舞阳县', 4),
(1408, 165, '临颍县', 4),
(1409, 166, '华龙区', 4),
(1410, 166, '清丰县', 4),
(1411, 166, '南乐县', 4),
(1412, 166, '范县', 4),
(1413, 166, '台前县', 4),
(1414, 166, '濮阳县', 4),
(1415, 167, '道里区', 4),
(1416, 167, '南岗区', 4),
(1417, 167, '动力区', 4),
(1418, 167, '平房区', 4),
(1419, 167, '香坊区', 4),
(1420, 167, '太平区', 4),
(1421, 167, '道外区', 4),
(1422, 167, '阿城区', 4),
(1423, 167, '呼兰区', 4),
(1424, 167, '松北区', 4),
(1425, 167, '尚志市', 4),
(1426, 167, '双城市', 4),
(1427, 167, '五常市', 4),
(1428, 167, '方正县', 4),
(1429, 167, '宾县', 4),
(1430, 167, '依兰县', 4),
(1431, 167, '巴彦县', 4),
(1432, 167, '通河县', 4),
(1433, 167, '木兰县', 4),
(1434, 167, '延寿县', 4),
(1435, 168, '萨尔图区', 4),
(1436, 168, '红岗区', 4),
(1437, 168, '龙凤区', 4),
(1438, 168, '让胡路区', 4),
(1439, 168, '大同区', 4),
(1440, 168, '肇州县', 4),
(1441, 168, '肇源县', 4),
(1442, 168, '林甸县', 4),
(1443, 168, '杜尔伯特', 4),
(1444, 169, '呼玛县', 4),
(1445, 169, '漠河县', 4),
(1446, 169, '塔河县', 4),
(1447, 170, '兴山区', 4),
(1448, 170, '工农区', 4),
(1449, 170, '南山区', 4),
(1450, 170, '兴安区', 4),
(1451, 170, '向阳区', 4),
(1452, 170, '东山区', 4),
(1453, 170, '萝北县', 4),
(1454, 170, '绥滨县', 4),
(1455, 171, '爱辉区', 4),
(1456, 171, '五大连池市', 4),
(1457, 171, '北安市', 4),
(1458, 171, '嫩江县', 4),
(1459, 171, '逊克县', 4),
(1460, 171, '孙吴县', 4),
(1461, 172, '鸡冠区', 4),
(1462, 172, '恒山区', 4),
(1463, 172, '城子河区', 4),
(1464, 172, '滴道区', 4),
(1465, 172, '梨树区', 4),
(1466, 172, '虎林市', 4),
(1467, 172, '密山市', 4),
(1468, 172, '鸡东县', 4),
(1469, 173, '前进区', 4),
(1470, 173, '郊区', 4),
(1471, 173, '向阳区', 4),
(1472, 173, '东风区', 4),
(1473, 173, '同江市', 4),
(1474, 173, '富锦市', 4),
(1475, 173, '桦南县', 4),
(1476, 173, '桦川县', 4),
(1477, 173, '汤原县', 4),
(1478, 173, '抚远县', 4),
(1479, 174, '爱民区', 4),
(1480, 174, '东安区', 4),
(1481, 174, '阳明区', 4),
(1482, 174, '西安区', 4),
(1483, 174, '绥芬河市', 4),
(1484, 174, '海林市', 4),
(1485, 174, '宁安市', 4),
(1486, 174, '穆棱市', 4),
(1487, 174, '东宁县', 4),
(1488, 174, '林口县', 4),
(1489, 175, '桃山区', 4),
(1490, 175, '新兴区', 4),
(1491, 175, '茄子河区', 4),
(1492, 175, '勃利县', 4),
(1493, 176, '龙沙区', 4),
(1494, 176, '昂昂溪区', 4),
(1495, 176, '铁峰区', 4),
(1496, 176, '建华区', 4),
(1497, 176, '富拉尔基区', 4),
(1498, 176, '碾子山区', 4),
(1499, 176, '梅里斯达斡尔区', 4),
(1500, 176, '讷河市', 4),
(1501, 176, '龙江县', 4),
(1502, 176, '依安县', 4),
(1503, 176, '泰来县', 4),
(1504, 176, '甘南县', 4),
(1505, 176, '富裕县', 4),
(1506, 176, '克山县', 4),
(1507, 176, '克东县', 4),
(1508, 176, '拜泉县', 4),
(1509, 177, '尖山区', 4),
(1510, 177, '岭东区', 4),
(1511, 177, '四方台区', 4),
(1512, 177, '宝山区', 4),
(1513, 177, '集贤县', 4),
(1514, 177, '友谊县', 4),
(1515, 177, '宝清县', 4),
(1516, 177, '饶河县', 4),
(1517, 178, '北林区', 4),
(1518, 178, '安达市', 4),
(1519, 178, '肇东市', 4),
(1520, 178, '海伦市', 4),
(1521, 178, '望奎县', 4),
(1522, 178, '兰西县', 4),
(1523, 178, '青冈县', 4),
(1524, 178, '庆安县', 4),
(1525, 178, '明水县', 4),
(1526, 178, '绥棱县', 4),
(1527, 179, '伊春区', 4),
(1528, 179, '带岭区', 4),
(1529, 179, '南岔区', 4),
(1530, 179, '金山屯区', 4),
(1531, 179, '西林区', 4),
(1532, 179, '美溪区', 4),
(1533, 179, '乌马河区', 4),
(1534, 179, '翠峦区', 4),
(1535, 179, '友好区', 4),
(1536, 179, '上甘岭区', 4),
(1537, 179, '五营区', 4),
(1538, 179, '红星区', 4),
(1539, 179, '新青区', 4),
(1540, 179, '汤旺河区', 4),
(1541, 179, '乌伊岭区', 4),
(1542, 179, '铁力市', 4),
(1543, 179, '嘉荫县', 4),
(1544, 180, '江岸区', 4),
(1545, 180, '武昌区', 4),
(1546, 180, '江汉区', 4),
(1547, 180, '硚口区', 4),
(1548, 180, '汉阳区', 4),
(1549, 180, '青山区', 4),
(1550, 180, '洪山区', 4),
(1551, 180, '东西湖区', 4),
(1552, 180, '汉南区', 4),
(1553, 180, '蔡甸区', 4),
(1554, 180, '江夏区', 4),
(1555, 180, '黄陂区', 4),
(1556, 180, '新洲区', 4),
(1557, 180, '经济开发区', 4),
(1558, 181, '仙桃市', 4),
(1559, 182, '鄂城区', 4),
(1560, 182, '华容区', 4),
(1561, 182, '梁子湖区', 4),
(1562, 183, '黄州区', 4),
(1563, 183, '麻城市', 4),
(1564, 183, '武穴市', 4),
(1565, 183, '团风县', 4),
(1566, 183, '红安县', 4),
(1567, 183, '罗田县', 4),
(1568, 183, '英山县', 4),
(1569, 183, '浠水县', 4),
(1570, 183, '蕲春县', 4),
(1571, 183, '黄梅县', 4),
(1572, 184, '黄石港区', 4),
(1573, 184, '西塞山区', 4),
(1574, 184, '下陆区', 4),
(1575, 184, '铁山区', 4),
(1576, 184, '大冶市', 4),
(1577, 184, '阳新县', 4),
(1578, 185, '东宝区', 4),
(1579, 185, '掇刀区', 4),
(1580, 185, '钟祥市', 4),
(1581, 185, '京山县', 4),
(1582, 185, '沙洋县', 4),
(1583, 186, '沙市区', 4),
(1584, 186, '荆州区', 4),
(1585, 186, '石首市', 4),
(1586, 186, '洪湖市', 4),
(1587, 186, '松滋市', 4),
(1588, 186, '公安县', 4),
(1589, 186, '监利县', 4),
(1590, 186, '江陵县', 4),
(1591, 187, '潜江市', 4),
(1592, 188, '神农架林区', 4),
(1593, 189, '张湾区', 4),
(1594, 189, '茅箭区', 4),
(1595, 189, '丹江口市', 4),
(1596, 189, '郧县', 4),
(1597, 189, '郧西县', 4),
(1598, 189, '竹山县', 4),
(1599, 189, '竹溪县', 4),
(1600, 189, '房县', 4),
(1601, 190, '曾都区', 4),
(1602, 190, '广水市', 4),
(1603, 191, '天门市', 4),
(1604, 192, '咸安区', 4),
(1605, 192, '赤壁市', 4),
(1606, 192, '嘉鱼县', 4),
(1607, 192, '通城县', 4),
(1608, 192, '崇阳县', 4),
(1609, 192, '通山县', 4),
(1610, 193, '襄城区', 4),
(1611, 193, '樊城区', 4),
(1612, 193, '襄阳区', 4),
(1613, 193, '老河口市', 4),
(1614, 193, '枣阳市', 4),
(1615, 193, '宜城市', 4),
(1616, 193, '南漳县', 4),
(1617, 193, '谷城县', 4),
(1618, 193, '保康县', 4),
(1619, 194, '孝南区', 4),
(1620, 194, '应城市', 4),
(1621, 194, '安陆市', 4),
(1622, 194, '汉川市', 4),
(1623, 194, '孝昌县', 4),
(1624, 194, '大悟县', 4),
(1625, 194, '云梦县', 4),
(1626, 195, '长阳', 4),
(1627, 195, '五峰', 4),
(1628, 195, '西陵区', 4),
(1629, 195, '伍家岗区', 4),
(1630, 195, '点军区', 4),
(1631, 195, '猇亭区', 4),
(1632, 195, '夷陵区', 4),
(1633, 195, '宜都市', 4),
(1634, 195, '当阳市', 4),
(1635, 195, '枝江市', 4),
(1636, 195, '远安县', 4),
(1637, 195, '兴山县', 4),
(1638, 195, '秭归县', 4),
(1639, 196, '恩施市', 4),
(1640, 196, '利川市', 4),
(1641, 196, '建始县', 4),
(1642, 196, '巴东县', 4),
(1643, 196, '宣恩县', 4),
(1644, 196, '咸丰县', 4),
(1645, 196, '来凤县', 4),
(1646, 196, '鹤峰县', 4),
(1647, 197, '岳麓区', 4),
(1648, 197, '芙蓉区', 4),
(1649, 197, '天心区', 4),
(1650, 197, '开福区', 4),
(1651, 197, '雨花区', 4),
(1652, 197, '开发区', 4),
(1653, 197, '浏阳市', 4),
(1654, 197, '长沙县', 4),
(1655, 197, '望城县', 4),
(1656, 197, '宁乡县', 4),
(1657, 198, '永定区', 4),
(1658, 198, '武陵源区', 4),
(1659, 198, '慈利县', 4),
(1660, 198, '桑植县', 4),
(1661, 199, '武陵区', 4),
(1662, 199, '鼎城区', 4),
(1663, 199, '津市市', 4),
(1664, 199, '安乡县', 4),
(1665, 199, '汉寿县', 4),
(1666, 199, '澧县', 4),
(1667, 199, '临澧县', 4),
(1668, 199, '桃源县', 4),
(1669, 199, '石门县', 4),
(1670, 200, '北湖区', 4),
(1671, 200, '苏仙区', 4),
(1672, 200, '资兴市', 4),
(1673, 200, '桂阳县', 4),
(1674, 200, '宜章县', 4),
(1675, 200, '永兴县', 4),
(1676, 200, '嘉禾县', 4),
(1677, 200, '临武县', 4),
(1678, 200, '汝城县', 4),
(1679, 200, '桂东县', 4),
(1680, 200, '安仁县', 4),
(1681, 201, '雁峰区', 4),
(1682, 201, '珠晖区', 4),
(1683, 201, '石鼓区', 4),
(1684, 201, '蒸湘区', 4),
(1685, 201, '南岳区', 4),
(1686, 201, '耒阳市', 4),
(1687, 201, '常宁市', 4),
(1688, 201, '衡阳县', 4),
(1689, 201, '衡南县', 4),
(1690, 201, '衡山县', 4),
(1691, 201, '衡东县', 4),
(1692, 201, '祁东县', 4),
(1693, 202, '鹤城区', 4),
(1694, 202, '靖州', 4),
(1695, 202, '麻阳', 4),
(1696, 202, '通道', 4),
(1697, 202, '新晃', 4),
(1698, 202, '芷江', 4),
(1699, 202, '沅陵县', 4),
(1700, 202, '辰溪县', 4),
(1701, 202, '溆浦县', 4),
(1702, 202, '中方县', 4),
(1703, 202, '会同县', 4),
(1704, 202, '洪江市', 4),
(1705, 203, '娄星区', 4),
(1706, 203, '冷水江市', 4),
(1707, 203, '涟源市', 4),
(1708, 203, '双峰县', 4),
(1709, 203, '新化县', 4),
(1710, 204, '城步', 4),
(1711, 204, '双清区', 4),
(1712, 204, '大祥区', 4),
(1713, 204, '北塔区', 4),
(1714, 204, '武冈市', 4),
(1715, 204, '邵东县', 4),
(1716, 204, '新邵县', 4),
(1717, 204, '邵阳县', 4),
(1718, 204, '隆回县', 4),
(1719, 204, '洞口县', 4),
(1720, 204, '绥宁县', 4),
(1721, 204, '新宁县', 4),
(1722, 205, '岳塘区', 4),
(1723, 205, '雨湖区', 4),
(1724, 205, '湘乡市', 4),
(1725, 205, '韶山市', 4),
(1726, 205, '湘潭县', 4),
(1727, 206, '吉首市', 4),
(1728, 206, '泸溪县', 4),
(1729, 206, '凤凰县', 4),
(1730, 206, '花垣县', 4),
(1731, 206, '保靖县', 4),
(1732, 206, '古丈县', 4),
(1733, 206, '永顺县', 4),
(1734, 206, '龙山县', 4),
(1735, 207, '赫山区', 4),
(1736, 207, '资阳区', 4),
(1737, 207, '沅江市', 4),
(1738, 207, '南县', 4),
(1739, 207, '桃江县', 4),
(1740, 207, '安化县', 4),
(1741, 208, '江华', 4),
(1742, 208, '冷水滩区', 4),
(1743, 208, '零陵区', 4),
(1744, 208, '祁阳县', 4),
(1745, 208, '东安县', 4),
(1746, 208, '双牌县', 4),
(1747, 208, '道县', 4),
(1748, 208, '江永县', 4),
(1749, 208, '宁远县', 4),
(1750, 208, '蓝山县', 4),
(1751, 208, '新田县', 4),
(1752, 209, '岳阳楼区', 4),
(1753, 209, '君山区', 4),
(1754, 209, '云溪区', 4),
(1755, 209, '汨罗市', 4),
(1756, 209, '临湘市', 4),
(1757, 209, '岳阳县', 4),
(1758, 209, '华容县', 4),
(1759, 209, '湘阴县', 4),
(1760, 209, '平江县', 4),
(1761, 210, '天元区', 4),
(1762, 210, '荷塘区', 4),
(1763, 210, '芦淞区', 4),
(1764, 210, '石峰区', 4),
(1765, 210, '醴陵市', 4),
(1766, 210, '株洲县', 4),
(1767, 210, '攸县', 4),
(1768, 210, '茶陵县', 4),
(1769, 210, '炎陵县', 4),
(1770, 211, '朝阳区', 4),
(1771, 211, '宽城区', 4),
(1772, 211, '二道区', 4),
(1773, 211, '南关区', 4),
(1774, 211, '绿园区', 4),
(1775, 211, '双阳区', 4),
(1776, 211, '净月潭开发区', 4),
(1777, 211, '高新技术开发区', 4),
(1778, 211, '经济技术开发区', 4),
(1779, 211, '汽车产业开发区', 4),
(1780, 211, '德惠市', 4),
(1781, 211, '九台市', 4),
(1782, 211, '榆树市', 4),
(1783, 211, '农安县', 4),
(1784, 212, '船营区', 4),
(1785, 212, '昌邑区', 4),
(1786, 212, '龙潭区', 4),
(1787, 212, '丰满区', 4),
(1788, 212, '蛟河市', 4),
(1789, 212, '桦甸市', 4),
(1790, 212, '舒兰市', 4),
(1791, 212, '磐石市', 4),
(1792, 212, '永吉县', 4),
(1793, 213, '洮北区', 4),
(1794, 213, '洮南市', 4),
(1795, 213, '大安市', 4),
(1796, 213, '镇赉县', 4),
(1797, 213, '通榆县', 4),
(1798, 214, '江源区', 4),
(1799, 214, '八道江区', 4),
(1800, 214, '长白', 4),
(1801, 214, '临江市', 4),
(1802, 214, '抚松县', 4),
(1803, 214, '靖宇县', 4),
(1804, 215, '龙山区', 4),
(1805, 215, '西安区', 4),
(1806, 215, '东丰县', 4),
(1807, 215, '东辽县', 4),
(1808, 216, '铁西区', 4),
(1809, 216, '铁东区', 4),
(1810, 216, '伊通', 4),
(1811, 216, '公主岭市', 4),
(1812, 216, '双辽市', 4),
(1813, 216, '梨树县', 4),
(1814, 217, '前郭尔罗斯', 4),
(1815, 217, '宁江区', 4),
(1816, 217, '长岭县', 4),
(1817, 217, '乾安县', 4),
(1818, 217, '扶余县', 4),
(1819, 218, '东昌区', 4),
(1820, 218, '二道江区', 4),
(1821, 218, '梅河口市', 4),
(1822, 218, '集安市', 4),
(1823, 218, '通化县', 4),
(1824, 218, '辉南县', 4),
(1825, 218, '柳河县', 4),
(1826, 219, '延吉市', 4),
(1827, 219, '图们市', 4),
(1828, 219, '敦化市', 4),
(1829, 219, '珲春市', 4),
(1830, 219, '龙井市', 4),
(1831, 219, '和龙市', 4),
(1832, 219, '安图县', 4),
(1833, 219, '汪清县', 4),
(1834, 220, '玄武区', 4),
(1835, 220, '鼓楼区', 4),
(1836, 220, '白下区', 4),
(1837, 220, '建邺区', 4),
(1838, 220, '秦淮区', 4),
(1839, 220, '雨花台区', 4),
(1840, 220, '下关区', 4),
(1841, 220, '栖霞区', 4),
(1842, 220, '浦口区', 4),
(1843, 220, '江宁区', 4),
(1844, 220, '六合区', 4),
(1845, 220, '溧水县', 4),
(1846, 220, '高淳县', 4),
(1847, 221, '沧浪区', 4),
(1848, 221, '金阊区', 4),
(1849, 221, '平江区', 4),
(1850, 221, '虎丘区', 4),
(1851, 221, '吴中区', 4),
(1852, 221, '相城区', 4),
(1853, 221, '园区', 4),
(1854, 221, '新区', 4),
(1855, 221, '常熟市', 4),
(1856, 221, '张家港市', 4),
(1857, 221, '玉山镇', 4),
(1858, 221, '巴城镇', 4),
(1859, 221, '周市镇', 4),
(1860, 221, '陆家镇', 4),
(1861, 221, '花桥镇', 4),
(1862, 221, '淀山湖镇', 4),
(1863, 221, '张浦镇', 4),
(1864, 221, '周庄镇', 4),
(1865, 221, '千灯镇', 4),
(1866, 221, '锦溪镇', 4),
(1867, 221, '开发区', 4),
(1868, 221, '吴江市', 4),
(1869, 221, '太仓市', 4),
(1870, 222, '崇安区', 4),
(1871, 222, '北塘区', 4),
(1872, 222, '南长区', 4),
(1873, 222, '锡山区', 4),
(1874, 222, '惠山区', 4),
(1875, 222, '滨湖区', 4),
(1876, 222, '新区', 4),
(1877, 222, '江阴市', 4),
(1878, 222, '宜兴市', 4),
(1879, 223, '天宁区', 4),
(1880, 223, '钟楼区', 4),
(1881, 223, '戚墅堰区', 4),
(1882, 223, '郊区', 4),
(1883, 223, '新北区', 4),
(1884, 223, '武进区', 4),
(1885, 223, '溧阳市', 4),
(1886, 223, '金坛市', 4),
(1887, 224, '清河区', 4),
(1888, 224, '清浦区', 4),
(1889, 224, '楚州区', 4),
(1890, 224, '淮阴区', 4),
(1891, 224, '涟水县', 4),
(1892, 224, '洪泽县', 4),
(1893, 224, '盱眙县', 4),
(1894, 224, '金湖县', 4),
(1895, 225, '新浦区', 4),
(1896, 225, '连云区', 4),
(1897, 225, '海州区', 4),
(1898, 225, '赣榆县', 4),
(1899, 225, '东海县', 4),
(1900, 225, '灌云县', 4),
(1901, 225, '灌南县', 4),
(1902, 226, '崇川区', 4),
(1903, 226, '港闸区', 4),
(1904, 226, '经济开发区', 4),
(1905, 226, '启东市', 4),
(1906, 226, '如皋市', 4),
(1907, 226, '通州市', 4),
(1908, 226, '海门市', 4),
(1909, 226, '海安县', 4),
(1910, 226, '如东县', 4),
(1911, 227, '宿城区', 4),
(1912, 227, '宿豫区', 4),
(1913, 227, '宿豫县', 4),
(1914, 227, '沭阳县', 4),
(1915, 227, '泗阳县', 4),
(1916, 227, '泗洪县', 4),
(1917, 228, '海陵区', 4),
(1918, 228, '高港区', 4),
(1919, 228, '兴化市', 4),
(1920, 228, '靖江市', 4),
(1921, 228, '泰兴市', 4),
(1922, 228, '姜堰市', 4),
(1923, 229, '云龙区', 4),
(1924, 229, '鼓楼区', 4),
(1925, 229, '九里区', 4),
(1926, 229, '贾汪区', 4),
(1927, 229, '泉山区', 4),
(1928, 229, '新沂市', 4),
(1929, 229, '邳州市', 4),
(1930, 229, '丰县', 4),
(1931, 229, '沛县', 4),
(1932, 229, '铜山县', 4),
(1933, 229, '睢宁县', 4),
(1934, 230, '城区', 4),
(1935, 230, '亭湖区', 4),
(1936, 230, '盐都区', 4),
(1937, 230, '盐都县', 4),
(1938, 230, '东台市', 4),
(1939, 230, '大丰市', 4),
(1940, 230, '响水县', 4),
(1941, 230, '滨海县', 4),
(1942, 230, '阜宁县', 4),
(1943, 230, '射阳县', 4),
(1944, 230, '建湖县', 4),
(1945, 231, '广陵区', 4),
(1946, 231, '维扬区', 4),
(1947, 231, '邗江区', 4),
(1948, 231, '仪征市', 4),
(1949, 231, '高邮市', 4),
(1950, 231, '江都市', 4),
(1951, 231, '宝应县', 4),
(1952, 232, '京口区', 4),
(1953, 232, '润州区', 4),
(1954, 232, '丹徒区', 4),
(1955, 232, '丹阳市', 4),
(1956, 232, '扬中市', 4),
(1957, 232, '句容市', 4),
(1958, 233, '东湖区', 4),
(1959, 233, '西湖区', 4),
(1960, 233, '青云谱区', 4),
(1961, 233, '湾里区', 4),
(1962, 233, '青山湖区', 4),
(1963, 233, '红谷滩新区', 4);
INSERT INTO `%DB_PREFIX%region_conf` (`id`, `pid`, `name`, `region_level`) VALUES
(1964, 233, '昌北区', 4),
(1965, 233, '高新区', 4),
(1966, 233, '南昌县', 4),
(1967, 233, '新建县', 4),
(1968, 233, '安义县', 4),
(1969, 233, '进贤县', 4),
(1970, 234, '临川区', 4),
(1971, 234, '南城县', 4),
(1972, 234, '黎川县', 4),
(1973, 234, '南丰县', 4),
(1974, 234, '崇仁县', 4),
(1975, 234, '乐安县', 4),
(1976, 234, '宜黄县', 4),
(1977, 234, '金溪县', 4),
(1978, 234, '资溪县', 4),
(1979, 234, '东乡县', 4),
(1980, 234, '广昌县', 4),
(1981, 235, '章贡区', 4),
(1982, 235, '于都县', 4),
(1983, 235, '瑞金市', 4),
(1984, 235, '南康市', 4),
(1985, 235, '赣县', 4),
(1986, 235, '信丰县', 4),
(1987, 235, '大余县', 4),
(1988, 235, '上犹县', 4),
(1989, 235, '崇义县', 4),
(1990, 235, '安远县', 4),
(1991, 235, '龙南县', 4),
(1992, 235, '定南县', 4),
(1993, 235, '全南县', 4),
(1994, 235, '宁都县', 4),
(1995, 235, '兴国县', 4),
(1996, 235, '会昌县', 4),
(1997, 235, '寻乌县', 4),
(1998, 235, '石城县', 4),
(1999, 236, '安福县', 4),
(2000, 236, '吉州区', 4),
(2001, 236, '青原区', 4),
(2002, 236, '井冈山市', 4),
(2003, 236, '吉安县', 4),
(2004, 236, '吉水县', 4),
(2005, 236, '峡江县', 4),
(2006, 236, '新干县', 4),
(2007, 236, '永丰县', 4),
(2008, 236, '泰和县', 4),
(2009, 236, '遂川县', 4),
(2010, 236, '万安县', 4),
(2011, 236, '永新县', 4),
(2012, 237, '珠山区', 4),
(2013, 237, '昌江区', 4),
(2014, 237, '乐平市', 4),
(2015, 237, '浮梁县', 4),
(2016, 238, '浔阳区', 4),
(2017, 238, '庐山区', 4),
(2018, 238, '瑞昌市', 4),
(2019, 238, '九江县', 4),
(2020, 238, '武宁县', 4),
(2021, 238, '修水县', 4),
(2022, 238, '永修县', 4),
(2023, 238, '德安县', 4),
(2024, 238, '星子县', 4),
(2025, 238, '都昌县', 4),
(2026, 238, '湖口县', 4),
(2027, 238, '彭泽县', 4),
(2028, 239, '安源区', 4),
(2029, 239, '湘东区', 4),
(2030, 239, '莲花县', 4),
(2031, 239, '芦溪县', 4),
(2032, 239, '上栗县', 4),
(2033, 240, '信州区', 4),
(2034, 240, '德兴市', 4),
(2035, 240, '上饶县', 4),
(2036, 240, '广丰县', 4),
(2037, 240, '玉山县', 4),
(2038, 240, '铅山县', 4),
(2039, 240, '横峰县', 4),
(2040, 240, '弋阳县', 4),
(2041, 240, '余干县', 4),
(2042, 240, '波阳县', 4),
(2043, 240, '万年县', 4),
(2044, 240, '婺源县', 4),
(2045, 241, '渝水区', 4),
(2046, 241, '分宜县', 4),
(2047, 242, '袁州区', 4),
(2048, 242, '丰城市', 4),
(2049, 242, '樟树市', 4),
(2050, 242, '高安市', 4),
(2051, 242, '奉新县', 4),
(2052, 242, '万载县', 4),
(2053, 242, '上高县', 4),
(2054, 242, '宜丰县', 4),
(2055, 242, '靖安县', 4),
(2056, 242, '铜鼓县', 4),
(2057, 243, '月湖区', 4),
(2058, 243, '贵溪市', 4),
(2059, 243, '余江县', 4),
(2060, 244, '沈河区', 4),
(2061, 244, '皇姑区', 4),
(2062, 244, '和平区', 4),
(2063, 244, '大东区', 4),
(2064, 244, '铁西区', 4),
(2065, 244, '苏家屯区', 4),
(2066, 244, '东陵区', 4),
(2067, 244, '沈北新区', 4),
(2068, 244, '于洪区', 4),
(2069, 244, '浑南新区', 4),
(2070, 244, '新民市', 4),
(2071, 244, '辽中县', 4),
(2072, 244, '康平县', 4),
(2073, 244, '法库县', 4),
(2074, 245, '西岗区', 4),
(2075, 245, '中山区', 4),
(2076, 245, '沙河口区', 4),
(2077, 245, '甘井子区', 4),
(2078, 245, '旅顺口区', 4),
(2079, 245, '金州区', 4),
(2080, 245, '开发区', 4),
(2081, 245, '瓦房店市', 4),
(2082, 245, '普兰店市', 4),
(2083, 245, '庄河市', 4),
(2084, 245, '长海县', 4),
(2085, 246, '铁东区', 4),
(2086, 246, '铁西区', 4),
(2087, 246, '立山区', 4),
(2088, 246, '千山区', 4),
(2089, 246, '岫岩', 4),
(2090, 246, '海城市', 4),
(2091, 246, '台安县', 4),
(2092, 247, '本溪', 4),
(2093, 247, '平山区', 4),
(2094, 247, '明山区', 4),
(2095, 247, '溪湖区', 4),
(2096, 247, '南芬区', 4),
(2097, 247, '桓仁', 4),
(2098, 248, '双塔区', 4),
(2099, 248, '龙城区', 4),
(2100, 248, '喀喇沁左翼蒙古族自治', 4),
(2101, 248, '北票市', 4),
(2102, 248, '凌源市', 4),
(2103, 248, '朝阳县', 4),
(2104, 248, '建平县', 4),
(2105, 249, '振兴区', 4),
(2106, 249, '元宝区', 4),
(2107, 249, '振安区', 4),
(2108, 249, '宽甸', 4),
(2109, 249, '东港市', 4),
(2110, 249, '凤城市', 4),
(2111, 250, '顺城区', 4),
(2112, 250, '新抚区', 4),
(2113, 250, '东洲区', 4),
(2114, 250, '望花区', 4),
(2115, 250, '清原', 4),
(2116, 250, '新宾', 4),
(2117, 250, '抚顺县', 4),
(2118, 251, '阜新', 4),
(2119, 251, '海州区', 4),
(2120, 251, '新邱区', 4),
(2121, 251, '太平区', 4),
(2122, 251, '清河门区', 4),
(2123, 251, '细河区', 4),
(2124, 251, '彰武县', 4),
(2125, 252, '龙港区', 4),
(2126, 252, '南票区', 4),
(2127, 252, '连山区', 4),
(2128, 252, '兴城市', 4),
(2129, 252, '绥中县', 4),
(2130, 252, '建昌县', 4),
(2131, 253, '太和区', 4),
(2132, 253, '古塔区', 4),
(2133, 253, '凌河区', 4),
(2134, 253, '凌海市', 4),
(2135, 253, '北镇市', 4),
(2136, 253, '黑山县', 4),
(2137, 253, '义县', 4),
(2138, 254, '白塔区', 4),
(2139, 254, '文圣区', 4),
(2140, 254, '宏伟区', 4),
(2141, 254, '太子河区', 4),
(2142, 254, '弓长岭区', 4),
(2143, 254, '灯塔市', 4),
(2144, 254, '辽阳县', 4),
(2145, 255, '双台子区', 4),
(2146, 255, '兴隆台区', 4),
(2147, 255, '大洼县', 4),
(2148, 255, '盘山县', 4),
(2149, 256, '银州区', 4),
(2150, 256, '清河区', 4),
(2151, 256, '调兵山市', 4),
(2152, 256, '开原市', 4),
(2153, 256, '铁岭县', 4),
(2154, 256, '西丰县', 4),
(2155, 256, '昌图县', 4),
(2156, 257, '站前区', 4),
(2157, 257, '西市区', 4),
(2158, 257, '鲅鱼圈区', 4),
(2159, 257, '老边区', 4),
(2160, 257, '盖州市', 4),
(2161, 257, '大石桥市', 4),
(2162, 258, '回民区', 4),
(2163, 258, '玉泉区', 4),
(2164, 258, '新城区', 4),
(2165, 258, '赛罕区', 4),
(2166, 258, '清水河县', 4),
(2167, 258, '土默特左旗', 4),
(2168, 258, '托克托县', 4),
(2169, 258, '和林格尔县', 4),
(2170, 258, '武川县', 4),
(2171, 259, '阿拉善左旗', 4),
(2172, 259, '阿拉善右旗', 4),
(2173, 259, '额济纳旗', 4),
(2174, 260, '临河区', 4),
(2175, 260, '五原县', 4),
(2176, 260, '磴口县', 4),
(2177, 260, '乌拉特前旗', 4),
(2178, 260, '乌拉特中旗', 4),
(2179, 260, '乌拉特后旗', 4),
(2180, 260, '杭锦后旗', 4),
(2181, 261, '昆都仑区', 4),
(2182, 261, '青山区', 4),
(2183, 261, '东河区', 4),
(2184, 261, '九原区', 4),
(2185, 261, '石拐区', 4),
(2186, 261, '白云矿区', 4),
(2187, 261, '土默特右旗', 4),
(2188, 261, '固阳县', 4),
(2189, 261, '达尔罕茂明安联合旗', 4),
(2190, 262, '红山区', 4),
(2191, 262, '元宝山区', 4),
(2192, 262, '松山区', 4),
(2193, 262, '阿鲁科尔沁旗', 4),
(2194, 262, '巴林左旗', 4),
(2195, 262, '巴林右旗', 4),
(2196, 262, '林西县', 4),
(2197, 262, '克什克腾旗', 4),
(2198, 262, '翁牛特旗', 4),
(2199, 262, '喀喇沁旗', 4),
(2200, 262, '宁城县', 4),
(2201, 262, '敖汉旗', 4),
(2202, 263, '东胜区', 4),
(2203, 263, '达拉特旗', 4),
(2204, 263, '准格尔旗', 4),
(2205, 263, '鄂托克前旗', 4),
(2206, 263, '鄂托克旗', 4),
(2207, 263, '杭锦旗', 4),
(2208, 263, '乌审旗', 4),
(2209, 263, '伊金霍洛旗', 4),
(2210, 264, '海拉尔区', 4),
(2211, 264, '莫力达瓦', 4),
(2212, 264, '满洲里市', 4),
(2213, 264, '牙克石市', 4),
(2214, 264, '扎兰屯市', 4),
(2215, 264, '额尔古纳市', 4),
(2216, 264, '根河市', 4),
(2217, 264, '阿荣旗', 4),
(2218, 264, '鄂伦春自治旗', 4),
(2219, 264, '鄂温克族自治旗', 4),
(2220, 264, '陈巴尔虎旗', 4),
(2221, 264, '新巴尔虎左旗', 4),
(2222, 264, '新巴尔虎右旗', 4),
(2223, 265, '科尔沁区', 4),
(2224, 265, '霍林郭勒市', 4),
(2225, 265, '科尔沁左翼中旗', 4),
(2226, 265, '科尔沁左翼后旗', 4),
(2227, 265, '开鲁县', 4),
(2228, 265, '库伦旗', 4),
(2229, 265, '奈曼旗', 4),
(2230, 265, '扎鲁特旗', 4),
(2231, 266, '海勃湾区', 4),
(2232, 266, '乌达区', 4),
(2233, 266, '海南区', 4),
(2234, 267, '化德县', 4),
(2235, 267, '集宁区', 4),
(2236, 267, '丰镇市', 4),
(2237, 267, '卓资县', 4),
(2238, 267, '商都县', 4),
(2239, 267, '兴和县', 4),
(2240, 267, '凉城县', 4),
(2241, 267, '察哈尔右翼前旗', 4),
(2242, 267, '察哈尔右翼中旗', 4),
(2243, 267, '察哈尔右翼后旗', 4),
(2244, 267, '四子王旗', 4),
(2245, 268, '二连浩特市', 4),
(2246, 268, '锡林浩特市', 4),
(2247, 268, '阿巴嘎旗', 4),
(2248, 268, '苏尼特左旗', 4),
(2249, 268, '苏尼特右旗', 4),
(2250, 268, '东乌珠穆沁旗', 4),
(2251, 268, '西乌珠穆沁旗', 4),
(2252, 268, '太仆寺旗', 4),
(2253, 268, '镶黄旗', 4),
(2254, 268, '正镶白旗', 4),
(2255, 268, '正蓝旗', 4),
(2256, 268, '多伦县', 4),
(2257, 269, '乌兰浩特市', 4),
(2258, 269, '阿尔山市', 4),
(2259, 269, '科尔沁右翼前旗', 4),
(2260, 269, '科尔沁右翼中旗', 4),
(2261, 269, '扎赉特旗', 4),
(2262, 269, '突泉县', 4),
(2263, 270, '西夏区', 4),
(2264, 270, '金凤区', 4),
(2265, 270, '兴庆区', 4),
(2266, 270, '灵武市', 4),
(2267, 270, '永宁县', 4),
(2268, 270, '贺兰县', 4),
(2269, 271, '原州区', 4),
(2270, 271, '海原县', 4),
(2271, 271, '西吉县', 4),
(2272, 271, '隆德县', 4),
(2273, 271, '泾源县', 4),
(2274, 271, '彭阳县', 4),
(2275, 272, '惠农县', 4),
(2276, 272, '大武口区', 4),
(2277, 272, '惠农区', 4),
(2278, 272, '陶乐县', 4),
(2279, 272, '平罗县', 4),
(2280, 273, '利通区', 4),
(2281, 273, '中卫县', 4),
(2282, 273, '青铜峡市', 4),
(2283, 273, '中宁县', 4),
(2284, 273, '盐池县', 4),
(2285, 273, '同心县', 4),
(2286, 274, '沙坡头区', 4),
(2287, 274, '海原县', 4),
(2288, 274, '中宁县', 4),
(2289, 275, '城中区', 4),
(2290, 275, '城东区', 4),
(2291, 275, '城西区', 4),
(2292, 275, '城北区', 4),
(2293, 275, '湟中县', 4),
(2294, 275, '湟源县', 4),
(2295, 275, '大通', 4),
(2296, 276, '玛沁县', 4),
(2297, 276, '班玛县', 4),
(2298, 276, '甘德县', 4),
(2299, 276, '达日县', 4),
(2300, 276, '久治县', 4),
(2301, 276, '玛多县', 4),
(2302, 277, '海晏县', 4),
(2303, 277, '祁连县', 4),
(2304, 277, '刚察县', 4),
(2305, 277, '门源', 4),
(2306, 278, '平安县', 4),
(2307, 278, '乐都县', 4),
(2308, 278, '民和', 4),
(2309, 278, '互助', 4),
(2310, 278, '化隆', 4),
(2311, 278, '循化', 4),
(2312, 279, '共和县', 4),
(2313, 279, '同德县', 4),
(2314, 279, '贵德县', 4),
(2315, 279, '兴海县', 4),
(2316, 279, '贵南县', 4),
(2317, 280, '德令哈市', 4),
(2318, 280, '格尔木市', 4),
(2319, 280, '乌兰县', 4),
(2320, 280, '都兰县', 4),
(2321, 280, '天峻县', 4),
(2322, 281, '同仁县', 4),
(2323, 281, '尖扎县', 4),
(2324, 281, '泽库县', 4),
(2325, 281, '河南蒙古族自治县', 4),
(2326, 282, '玉树县', 4),
(2327, 282, '杂多县', 4),
(2328, 282, '称多县', 4),
(2329, 282, '治多县', 4),
(2330, 282, '囊谦县', 4),
(2331, 282, '曲麻莱县', 4),
(2332, 283, '市中区', 4),
(2333, 283, '历下区', 4),
(2334, 283, '天桥区', 4),
(2335, 283, '槐荫区', 4),
(2336, 283, '历城区', 4),
(2337, 283, '长清区', 4),
(2338, 283, '章丘市', 4),
(2339, 283, '平阴县', 4),
(2340, 283, '济阳县', 4),
(2341, 283, '商河县', 4),
(2342, 284, '市南区', 4),
(2343, 284, '市北区', 4),
(2344, 284, '城阳区', 4),
(2345, 284, '四方区', 4),
(2346, 284, '李沧区', 4),
(2347, 284, '黄岛区', 4),
(2348, 284, '崂山区', 4),
(2349, 284, '胶州市', 4),
(2350, 284, '即墨市', 4),
(2351, 284, '平度市', 4),
(2352, 284, '胶南市', 4),
(2353, 284, '莱西市', 4),
(2354, 285, '滨城区', 4),
(2355, 285, '惠民县', 4),
(2356, 285, '阳信县', 4),
(2357, 285, '无棣县', 4),
(2358, 285, '沾化县', 4),
(2359, 285, '博兴县', 4),
(2360, 285, '邹平县', 4),
(2361, 286, '德城区', 4),
(2362, 286, '陵县', 4),
(2363, 286, '乐陵市', 4),
(2364, 286, '禹城市', 4),
(2365, 286, '宁津县', 4),
(2366, 286, '庆云县', 4),
(2367, 286, '临邑县', 4),
(2368, 286, '齐河县', 4),
(2369, 286, '平原县', 4),
(2370, 286, '夏津县', 4),
(2371, 286, '武城县', 4),
(2372, 287, '东营区', 4),
(2373, 287, '河口区', 4),
(2374, 287, '垦利县', 4),
(2375, 287, '利津县', 4),
(2376, 287, '广饶县', 4),
(2377, 288, '牡丹区', 4),
(2378, 288, '曹县', 4),
(2379, 288, '单县', 4),
(2380, 288, '成武县', 4),
(2381, 288, '巨野县', 4),
(2382, 288, '郓城县', 4),
(2383, 288, '鄄城县', 4),
(2384, 288, '定陶县', 4),
(2385, 288, '东明县', 4),
(2386, 289, '市中区', 4),
(2387, 289, '任城区', 4),
(2388, 289, '曲阜市', 4),
(2389, 289, '兖州市', 4),
(2390, 289, '邹城市', 4),
(2391, 289, '微山县', 4),
(2392, 289, '鱼台县', 4),
(2393, 289, '金乡县', 4),
(2394, 289, '嘉祥县', 4),
(2395, 289, '汶上县', 4),
(2396, 289, '泗水县', 4),
(2397, 289, '梁山县', 4),
(2398, 290, '莱城区', 4),
(2399, 290, '钢城区', 4),
(2400, 291, '东昌府区', 4),
(2401, 291, '临清市', 4),
(2402, 291, '阳谷县', 4),
(2403, 291, '莘县', 4),
(2404, 291, '茌平县', 4),
(2405, 291, '东阿县', 4),
(2406, 291, '冠县', 4),
(2407, 291, '高唐县', 4),
(2408, 292, '兰山区', 4),
(2409, 292, '罗庄区', 4),
(2410, 292, '河东区', 4),
(2411, 292, '沂南县', 4),
(2412, 292, '郯城县', 4),
(2413, 292, '沂水县', 4),
(2414, 292, '苍山县', 4),
(2415, 292, '费县', 4),
(2416, 292, '平邑县', 4),
(2417, 292, '莒南县', 4),
(2418, 292, '蒙阴县', 4),
(2419, 292, '临沭县', 4),
(2420, 293, '东港区', 4),
(2421, 293, '岚山区', 4),
(2422, 293, '五莲县', 4),
(2423, 293, '莒县', 4),
(2424, 294, '泰山区', 4),
(2425, 294, '岱岳区', 4),
(2426, 294, '新泰市', 4),
(2427, 294, '肥城市', 4),
(2428, 294, '宁阳县', 4),
(2429, 294, '东平县', 4),
(2430, 295, '荣成市', 4),
(2431, 295, '乳山市', 4),
(2432, 295, '环翠区', 4),
(2433, 295, '文登市', 4),
(2434, 296, '潍城区', 4),
(2435, 296, '寒亭区', 4),
(2436, 296, '坊子区', 4),
(2437, 296, '奎文区', 4),
(2438, 296, '青州市', 4),
(2439, 296, '诸城市', 4),
(2440, 296, '寿光市', 4),
(2441, 296, '安丘市', 4),
(2442, 296, '高密市', 4),
(2443, 296, '昌邑市', 4),
(2444, 296, '临朐县', 4),
(2445, 296, '昌乐县', 4),
(2446, 297, '芝罘区', 4),
(2447, 297, '福山区', 4),
(2448, 297, '牟平区', 4),
(2449, 297, '莱山区', 4),
(2450, 297, '开发区', 4),
(2451, 297, '龙口市', 4),
(2452, 297, '莱阳市', 4),
(2453, 297, '莱州市', 4),
(2454, 297, '蓬莱市', 4),
(2455, 297, '招远市', 4),
(2456, 297, '栖霞市', 4),
(2457, 297, '海阳市', 4),
(2458, 297, '长岛县', 4),
(2459, 298, '市中区', 4),
(2460, 298, '山亭区', 4),
(2461, 298, '峄城区', 4),
(2462, 298, '台儿庄区', 4),
(2463, 298, '薛城区', 4),
(2464, 298, '滕州市', 4),
(2465, 299, '张店区', 4),
(2466, 299, '临淄区', 4),
(2467, 299, '淄川区', 4),
(2468, 299, '博山区', 4),
(2469, 299, '周村区', 4),
(2470, 299, '桓台县', 4),
(2471, 299, '高青县', 4),
(2472, 299, '沂源县', 4),
(2473, 300, '杏花岭区', 4),
(2474, 300, '小店区', 4),
(2475, 300, '迎泽区', 4),
(2476, 300, '尖草坪区', 4),
(2477, 300, '万柏林区', 4),
(2478, 300, '晋源区', 4),
(2479, 300, '高新开发区', 4),
(2480, 300, '民营经济开发区', 4),
(2481, 300, '经济技术开发区', 4),
(2482, 300, '清徐县', 4),
(2483, 300, '阳曲县', 4),
(2484, 300, '娄烦县', 4),
(2485, 300, '古交市', 4),
(2486, 301, '城区', 4),
(2487, 301, '郊区', 4),
(2488, 301, '沁县', 4),
(2489, 301, '潞城市', 4),
(2490, 301, '长治县', 4),
(2491, 301, '襄垣县', 4),
(2492, 301, '屯留县', 4),
(2493, 301, '平顺县', 4),
(2494, 301, '黎城县', 4),
(2495, 301, '壶关县', 4),
(2496, 301, '长子县', 4),
(2497, 301, '武乡县', 4),
(2498, 301, '沁源县', 4),
(2499, 302, '城区', 4),
(2500, 302, '矿区', 4),
(2501, 302, '南郊区', 4),
(2502, 302, '新荣区', 4),
(2503, 302, '阳高县', 4),
(2504, 302, '天镇县', 4),
(2505, 302, '广灵县', 4),
(2506, 302, '灵丘县', 4),
(2507, 302, '浑源县', 4),
(2508, 302, '左云县', 4),
(2509, 302, '大同县', 4),
(2510, 303, '城区', 4),
(2511, 303, '高平市', 4),
(2512, 303, '沁水县', 4),
(2513, 303, '阳城县', 4),
(2514, 303, '陵川县', 4),
(2515, 303, '泽州县', 4),
(2516, 304, '榆次区', 4),
(2517, 304, '介休市', 4),
(2518, 304, '榆社县', 4),
(2519, 304, '左权县', 4),
(2520, 304, '和顺县', 4),
(2521, 304, '昔阳县', 4),
(2522, 304, '寿阳县', 4),
(2523, 304, '太谷县', 4),
(2524, 304, '祁县', 4),
(2525, 304, '平遥县', 4),
(2526, 304, '灵石县', 4),
(2527, 305, '尧都区', 4),
(2528, 305, '侯马市', 4),
(2529, 305, '霍州市', 4),
(2530, 305, '曲沃县', 4),
(2531, 305, '翼城县', 4),
(2532, 305, '襄汾县', 4),
(2533, 305, '洪洞县', 4),
(2534, 305, '吉县', 4),
(2535, 305, '安泽县', 4),
(2536, 305, '浮山县', 4),
(2537, 305, '古县', 4),
(2538, 305, '乡宁县', 4),
(2539, 305, '大宁县', 4),
(2540, 305, '隰县', 4),
(2541, 305, '永和县', 4),
(2542, 305, '蒲县', 4),
(2543, 305, '汾西县', 4),
(2544, 306, '离石市', 4),
(2545, 306, '离石区', 4),
(2546, 306, '孝义市', 4),
(2547, 306, '汾阳市', 4),
(2548, 306, '文水县', 4),
(2549, 306, '交城县', 4),
(2550, 306, '兴县', 4),
(2551, 306, '临县', 4),
(2552, 306, '柳林县', 4),
(2553, 306, '石楼县', 4),
(2554, 306, '岚县', 4),
(2555, 306, '方山县', 4),
(2556, 306, '中阳县', 4),
(2557, 306, '交口县', 4),
(2558, 307, '朔城区', 4),
(2559, 307, '平鲁区', 4),
(2560, 307, '山阴县', 4),
(2561, 307, '应县', 4),
(2562, 307, '右玉县', 4),
(2563, 307, '怀仁县', 4),
(2564, 308, '忻府区', 4),
(2565, 308, '原平市', 4),
(2566, 308, '定襄县', 4),
(2567, 308, '五台县', 4),
(2568, 308, '代县', 4),
(2569, 308, '繁峙县', 4),
(2570, 308, '宁武县', 4),
(2571, 308, '静乐县', 4),
(2572, 308, '神池县', 4),
(2573, 308, '五寨县', 4),
(2574, 308, '岢岚县', 4),
(2575, 308, '河曲县', 4),
(2576, 308, '保德县', 4),
(2577, 308, '偏关县', 4),
(2578, 309, '城区', 4),
(2579, 309, '矿区', 4),
(2580, 309, '郊区', 4),
(2581, 309, '平定县', 4),
(2582, 309, '盂县', 4),
(2583, 310, '盐湖区', 4),
(2584, 310, '永济市', 4),
(2585, 310, '河津市', 4),
(2586, 310, '临猗县', 4),
(2587, 310, '万荣县', 4),
(2588, 310, '闻喜县', 4),
(2589, 310, '稷山县', 4),
(2590, 310, '新绛县', 4),
(2591, 310, '绛县', 4),
(2592, 310, '垣曲县', 4),
(2593, 310, '夏县', 4),
(2594, 310, '平陆县', 4),
(2595, 310, '芮城县', 4),
(2596, 311, '莲湖区', 4),
(2597, 311, '新城区', 4),
(2598, 311, '碑林区', 4),
(2599, 311, '雁塔区', 4),
(2600, 311, '灞桥区', 4),
(2601, 311, '未央区', 4),
(2602, 311, '阎良区', 4),
(2603, 311, '临潼区', 4),
(2604, 311, '长安区', 4),
(2605, 311, '蓝田县', 4),
(2606, 311, '周至县', 4),
(2607, 311, '户县', 4),
(2608, 311, '高陵县', 4),
(2609, 312, '汉滨区', 4),
(2610, 312, '汉阴县', 4),
(2611, 312, '石泉县', 4),
(2612, 312, '宁陕县', 4),
(2613, 312, '紫阳县', 4),
(2614, 312, '岚皋县', 4),
(2615, 312, '平利县', 4),
(2616, 312, '镇坪县', 4),
(2617, 312, '旬阳县', 4),
(2618, 312, '白河县', 4),
(2619, 313, '陈仓区', 4),
(2620, 313, '渭滨区', 4),
(2621, 313, '金台区', 4),
(2622, 313, '凤翔县', 4),
(2623, 313, '岐山县', 4),
(2624, 313, '扶风县', 4),
(2625, 313, '眉县', 4),
(2626, 313, '陇县', 4),
(2627, 313, '千阳县', 4),
(2628, 313, '麟游县', 4),
(2629, 313, '凤县', 4),
(2630, 313, '太白县', 4),
(2631, 314, '汉台区', 4),
(2632, 314, '南郑县', 4),
(2633, 314, '城固县', 4),
(2634, 314, '洋县', 4),
(2635, 314, '西乡县', 4),
(2636, 314, '勉县', 4),
(2637, 314, '宁强县', 4),
(2638, 314, '略阳县', 4),
(2639, 314, '镇巴县', 4),
(2640, 314, '留坝县', 4),
(2641, 314, '佛坪县', 4),
(2642, 315, '商州区', 4),
(2643, 315, '洛南县', 4),
(2644, 315, '丹凤县', 4),
(2645, 315, '商南县', 4),
(2646, 315, '山阳县', 4),
(2647, 315, '镇安县', 4),
(2648, 315, '柞水县', 4),
(2649, 316, '耀州区', 4),
(2650, 316, '王益区', 4),
(2651, 316, '印台区', 4),
(2652, 316, '宜君县', 4),
(2653, 317, '临渭区', 4),
(2654, 317, '韩城市', 4),
(2655, 317, '华阴市', 4),
(2656, 317, '华县', 4),
(2657, 317, '潼关县', 4),
(2658, 317, '大荔县', 4),
(2659, 317, '合阳县', 4),
(2660, 317, '澄城县', 4),
(2661, 317, '蒲城县', 4),
(2662, 317, '白水县', 4),
(2663, 317, '富平县', 4),
(2664, 318, '秦都区', 4),
(2665, 318, '渭城区', 4),
(2666, 318, '杨陵区', 4),
(2667, 318, '兴平市', 4),
(2668, 318, '三原县', 4),
(2669, 318, '泾阳县', 4),
(2670, 318, '乾县', 4),
(2671, 318, '礼泉县', 4),
(2672, 318, '永寿县', 4),
(2673, 318, '彬县', 4),
(2674, 318, '长武县', 4),
(2675, 318, '旬邑县', 4),
(2676, 318, '淳化县', 4),
(2677, 318, '武功县', 4),
(2678, 319, '吴起县', 4),
(2679, 319, '宝塔区', 4),
(2680, 319, '延长县', 4),
(2681, 319, '延川县', 4),
(2682, 319, '子长县', 4),
(2683, 319, '安塞县', 4),
(2684, 319, '志丹县', 4),
(2685, 319, '甘泉县', 4),
(2686, 319, '富县', 4),
(2687, 319, '洛川县', 4),
(2688, 319, '宜川县', 4),
(2689, 319, '黄龙县', 4),
(2690, 319, '黄陵县', 4),
(2691, 320, '榆阳区', 4),
(2692, 320, '神木县', 4),
(2693, 320, '府谷县', 4),
(2694, 320, '横山县', 4),
(2695, 320, '靖边县', 4),
(2696, 320, '定边县', 4),
(2697, 320, '绥德县', 4),
(2698, 320, '米脂县', 4),
(2699, 320, '佳县', 4),
(2700, 320, '吴堡县', 4),
(2701, 320, '清涧县', 4),
(2702, 320, '子洲县', 4),
(2703, 321, '长宁区', 4),
(2704, 321, '闸北区', 4),
(2705, 321, '闵行区', 4),
(2706, 321, '徐汇区', 4),
(2707, 321, '浦东新区', 4),
(2708, 321, '杨浦区', 4),
(2709, 321, '普陀区', 4),
(2710, 321, '静安区', 4),
(2711, 321, '卢湾区', 4),
(2712, 321, '虹口区', 4),
(2713, 321, '黄浦区', 4),
(2714, 321, '南汇区', 4),
(2715, 321, '松江区', 4),
(2716, 321, '嘉定区', 4),
(2717, 321, '宝山区', 4),
(2718, 321, '青浦区', 4),
(2719, 321, '金山区', 4),
(2720, 321, '奉贤区', 4),
(2721, 321, '崇明县', 4),
(2722, 322, '青羊区', 4),
(2723, 322, '锦江区', 4),
(2724, 322, '金牛区', 4),
(2725, 322, '武侯区', 4),
(2726, 322, '成华区', 4),
(2727, 322, '龙泉驿区', 4),
(2728, 322, '青白江区', 4),
(2729, 322, '新都区', 4),
(2730, 322, '温江区', 4),
(2731, 322, '高新区', 4),
(2732, 322, '高新西区', 4),
(2733, 322, '都江堰市', 4),
(2734, 322, '彭州市', 4),
(2735, 322, '邛崃市', 4),
(2736, 322, '崇州市', 4),
(2737, 322, '金堂县', 4),
(2738, 322, '双流县', 4),
(2739, 322, '郫县', 4),
(2740, 322, '大邑县', 4),
(2741, 322, '蒲江县', 4),
(2742, 322, '新津县', 4),
(2743, 322, '都江堰市', 4),
(2744, 322, '彭州市', 4),
(2745, 322, '邛崃市', 4),
(2746, 322, '崇州市', 4),
(2747, 322, '金堂县', 4),
(2748, 322, '双流县', 4),
(2749, 322, '郫县', 4),
(2750, 322, '大邑县', 4),
(2751, 322, '蒲江县', 4),
(2752, 322, '新津县', 4),
(2753, 323, '涪城区', 4),
(2754, 323, '游仙区', 4),
(2755, 323, '江油市', 4),
(2756, 323, '盐亭县', 4),
(2757, 323, '三台县', 4),
(2758, 323, '平武县', 4),
(2759, 323, '安县', 4),
(2760, 323, '梓潼县', 4),
(2761, 323, '北川县', 4),
(2762, 324, '马尔康县', 4),
(2763, 324, '汶川县', 4),
(2764, 324, '理县', 4),
(2765, 324, '茂县', 4),
(2766, 324, '松潘县', 4),
(2767, 324, '九寨沟县', 4),
(2768, 324, '金川县', 4),
(2769, 324, '小金县', 4),
(2770, 324, '黑水县', 4),
(2771, 324, '壤塘县', 4),
(2772, 324, '阿坝县', 4),
(2773, 324, '若尔盖县', 4),
(2774, 324, '红原县', 4),
(2775, 325, '巴州区', 4),
(2776, 325, '通江县', 4),
(2777, 325, '南江县', 4),
(2778, 325, '平昌县', 4),
(2779, 326, '通川区', 4),
(2780, 326, '万源市', 4),
(2781, 326, '达县', 4),
(2782, 326, '宣汉县', 4),
(2783, 326, '开江县', 4),
(2784, 326, '大竹县', 4),
(2785, 326, '渠县', 4),
(2786, 327, '旌阳区', 4),
(2787, 327, '广汉市', 4),
(2788, 327, '什邡市', 4),
(2789, 327, '绵竹市', 4),
(2790, 327, '罗江县', 4),
(2791, 327, '中江县', 4),
(2792, 328, '康定县', 4),
(2793, 328, '丹巴县', 4),
(2794, 328, '泸定县', 4),
(2795, 328, '炉霍县', 4),
(2796, 328, '九龙县', 4),
(2797, 328, '甘孜县', 4),
(2798, 328, '雅江县', 4),
(2799, 328, '新龙县', 4),
(2800, 328, '道孚县', 4),
(2801, 328, '白玉县', 4),
(2802, 328, '理塘县', 4),
(2803, 328, '德格县', 4),
(2804, 328, '乡城县', 4),
(2805, 328, '石渠县', 4),
(2806, 328, '稻城县', 4),
(2807, 328, '色达县', 4),
(2808, 328, '巴塘县', 4),
(2809, 328, '得荣县', 4),
(2810, 329, '广安区', 4),
(2811, 329, '华蓥市', 4),
(2812, 329, '岳池县', 4),
(2813, 329, '武胜县', 4),
(2814, 329, '邻水县', 4),
(2815, 330, '利州区', 4),
(2816, 330, '元坝区', 4),
(2817, 330, '朝天区', 4),
(2818, 330, '旺苍县', 4),
(2819, 330, '青川县', 4),
(2820, 330, '剑阁县', 4),
(2821, 330, '苍溪县', 4),
(2822, 331, '峨眉山市', 4),
(2823, 331, '乐山市', 4),
(2824, 331, '犍为县', 4),
(2825, 331, '井研县', 4),
(2826, 331, '夹江县', 4),
(2827, 331, '沐川县', 4),
(2828, 331, '峨边', 4),
(2829, 331, '马边', 4),
(2830, 332, '西昌市', 4),
(2831, 332, '盐源县', 4),
(2832, 332, '德昌县', 4),
(2833, 332, '会理县', 4),
(2834, 332, '会东县', 4),
(2835, 332, '宁南县', 4),
(2836, 332, '普格县', 4),
(2837, 332, '布拖县', 4),
(2838, 332, '金阳县', 4),
(2839, 332, '昭觉县', 4),
(2840, 332, '喜德县', 4),
(2841, 332, '冕宁县', 4),
(2842, 332, '越西县', 4),
(2843, 332, '甘洛县', 4),
(2844, 332, '美姑县', 4),
(2845, 332, '雷波县', 4),
(2846, 332, '木里', 4),
(2847, 333, '东坡区', 4),
(2848, 333, '仁寿县', 4),
(2849, 333, '彭山县', 4),
(2850, 333, '洪雅县', 4),
(2851, 333, '丹棱县', 4),
(2852, 333, '青神县', 4),
(2853, 334, '阆中市', 4),
(2854, 334, '南部县', 4),
(2855, 334, '营山县', 4),
(2856, 334, '蓬安县', 4),
(2857, 334, '仪陇县', 4),
(2858, 334, '顺庆区', 4),
(2859, 334, '高坪区', 4),
(2860, 334, '嘉陵区', 4),
(2861, 334, '西充县', 4),
(2862, 335, '市中区', 4),
(2863, 335, '东兴区', 4),
(2864, 335, '威远县', 4),
(2865, 335, '资中县', 4),
(2866, 335, '隆昌县', 4),
(2867, 336, '东  区', 4),
(2868, 336, '西  区', 4),
(2869, 336, '仁和区', 4),
(2870, 336, '米易县', 4),
(2871, 336, '盐边县', 4),
(2872, 337, '船山区', 4),
(2873, 337, '安居区', 4),
(2874, 337, '蓬溪县', 4),
(2875, 337, '射洪县', 4),
(2876, 337, '大英县', 4),
(2877, 338, '雨城区', 4),
(2878, 338, '名山县', 4),
(2879, 338, '荥经县', 4),
(2880, 338, '汉源县', 4),
(2881, 338, '石棉县', 4),
(2882, 338, '天全县', 4),
(2883, 338, '芦山县', 4),
(2884, 338, '宝兴县', 4),
(2885, 339, '翠屏区', 4),
(2886, 339, '宜宾县', 4),
(2887, 339, '南溪县', 4),
(2888, 339, '江安县', 4),
(2889, 339, '长宁县', 4),
(2890, 339, '高县', 4),
(2891, 339, '珙县', 4),
(2892, 339, '筠连县', 4),
(2893, 339, '兴文县', 4),
(2894, 339, '屏山县', 4),
(2895, 340, '雁江区', 4),
(2896, 340, '简阳市', 4),
(2897, 340, '安岳县', 4),
(2898, 340, '乐至县', 4),
(2899, 341, '大安区', 4),
(2900, 341, '自流井区', 4),
(2901, 341, '贡井区', 4),
(2902, 341, '沿滩区', 4),
(2903, 341, '荣县', 4),
(2904, 341, '富顺县', 4),
(2905, 342, '江阳区', 4),
(2906, 342, '纳溪区', 4),
(2907, 342, '龙马潭区', 4),
(2908, 342, '泸县', 4),
(2909, 342, '合江县', 4),
(2910, 342, '叙永县', 4),
(2911, 342, '古蔺县', 4),
(2912, 343, '和平区', 4),
(2913, 343, '河西区', 4),
(2914, 343, '南开区', 4),
(2915, 343, '河北区', 4),
(2916, 343, '河东区', 4),
(2917, 343, '红桥区', 4),
(2918, 343, '东丽区', 4),
(2919, 343, '津南区', 4),
(2920, 343, '西青区', 4),
(2921, 343, '北辰区', 4),
(2922, 343, '塘沽区', 4),
(2923, 343, '汉沽区', 4),
(2924, 343, '大港区', 4),
(2925, 343, '武清区', 4),
(2926, 343, '宝坻区', 4),
(2927, 343, '经济开发区', 4),
(2928, 343, '宁河县', 4),
(2929, 343, '静海县', 4),
(2930, 343, '蓟县', 4),
(2931, 344, '城关区', 4),
(2932, 344, '林周县', 4),
(2933, 344, '当雄县', 4),
(2934, 344, '尼木县', 4),
(2935, 344, '曲水县', 4),
(2936, 344, '堆龙德庆县', 4),
(2937, 344, '达孜县', 4),
(2938, 344, '墨竹工卡县', 4),
(2939, 345, '噶尔县', 4),
(2940, 345, '普兰县', 4),
(2941, 345, '札达县', 4),
(2942, 345, '日土县', 4),
(2943, 345, '革吉县', 4),
(2944, 345, '改则县', 4),
(2945, 345, '措勤县', 4),
(2946, 346, '昌都县', 4),
(2947, 346, '江达县', 4),
(2948, 346, '贡觉县', 4),
(2949, 346, '类乌齐县', 4),
(2950, 346, '丁青县', 4),
(2951, 346, '察雅县', 4),
(2952, 346, '八宿县', 4),
(2953, 346, '左贡县', 4),
(2954, 346, '芒康县', 4),
(2955, 346, '洛隆县', 4),
(2956, 346, '边坝县', 4),
(2957, 347, '林芝县', 4),
(2958, 347, '工布江达县', 4),
(2959, 347, '米林县', 4),
(2960, 347, '墨脱县', 4),
(2961, 347, '波密县', 4),
(2962, 347, '察隅县', 4),
(2963, 347, '朗县', 4),
(2964, 348, '那曲县', 4),
(2965, 348, '嘉黎县', 4),
(2966, 348, '比如县', 4),
(2967, 348, '聂荣县', 4),
(2968, 348, '安多县', 4),
(2969, 348, '申扎县', 4),
(2970, 348, '索县', 4),
(2971, 348, '班戈县', 4),
(2972, 348, '巴青县', 4),
(2973, 348, '尼玛县', 4),
(2974, 349, '日喀则市', 4),
(2975, 349, '南木林县', 4),
(2976, 349, '江孜县', 4),
(2977, 349, '定日县', 4),
(2978, 349, '萨迦县', 4),
(2979, 349, '拉孜县', 4),
(2980, 349, '昂仁县', 4),
(2981, 349, '谢通门县', 4),
(2982, 349, '白朗县', 4),
(2983, 349, '仁布县', 4),
(2984, 349, '康马县', 4),
(2985, 349, '定结县', 4),
(2986, 349, '仲巴县', 4),
(2987, 349, '亚东县', 4),
(2988, 349, '吉隆县', 4),
(2989, 349, '聂拉木县', 4),
(2990, 349, '萨嘎县', 4),
(2991, 349, '岗巴县', 4),
(2992, 350, '乃东县', 4),
(2993, 350, '扎囊县', 4),
(2994, 350, '贡嘎县', 4),
(2995, 350, '桑日县', 4),
(2996, 350, '琼结县', 4),
(2997, 350, '曲松县', 4),
(2998, 350, '措美县', 4),
(2999, 350, '洛扎县', 4),
(3000, 350, '加查县', 4),
(3001, 350, '隆子县', 4),
(3002, 350, '错那县', 4),
(3003, 350, '浪卡子县', 4),
(3004, 351, '天山区', 4),
(3005, 351, '沙依巴克区', 4),
(3006, 351, '新市区', 4),
(3007, 351, '水磨沟区', 4),
(3008, 351, '头屯河区', 4),
(3009, 351, '达坂城区', 4),
(3010, 351, '米东区', 4),
(3011, 351, '乌鲁木齐县', 4),
(3012, 352, '阿克苏市', 4),
(3013, 352, '温宿县', 4),
(3014, 352, '库车县', 4),
(3015, 352, '沙雅县', 4),
(3016, 352, '新和县', 4),
(3017, 352, '拜城县', 4),
(3018, 352, '乌什县', 4),
(3019, 352, '阿瓦提县', 4),
(3020, 352, '柯坪县', 4),
(3021, 353, '阿拉尔市', 4),
(3022, 354, '库尔勒市', 4),
(3023, 354, '轮台县', 4),
(3024, 354, '尉犁县', 4),
(3025, 354, '若羌县', 4),
(3026, 354, '且末县', 4),
(3027, 354, '焉耆', 4),
(3028, 354, '和静县', 4),
(3029, 354, '和硕县', 4),
(3030, 354, '博湖县', 4),
(3031, 355, '博乐市', 4),
(3032, 355, '精河县', 4),
(3033, 355, '温泉县', 4),
(3034, 356, '呼图壁县', 4),
(3035, 356, '米泉市', 4),
(3036, 356, '昌吉市', 4),
(3037, 356, '阜康市', 4),
(3038, 356, '玛纳斯县', 4),
(3039, 356, '奇台县', 4),
(3040, 356, '吉木萨尔县', 4),
(3041, 356, '木垒', 4),
(3042, 357, '哈密市', 4),
(3043, 357, '伊吾县', 4),
(3044, 357, '巴里坤', 4),
(3045, 358, '和田市', 4),
(3046, 358, '和田县', 4),
(3047, 358, '墨玉县', 4),
(3048, 358, '皮山县', 4),
(3049, 358, '洛浦县', 4),
(3050, 358, '策勒县', 4),
(3051, 358, '于田县', 4),
(3052, 358, '民丰县', 4),
(3053, 359, '喀什市', 4),
(3054, 359, '疏附县', 4),
(3055, 359, '疏勒县', 4),
(3056, 359, '英吉沙县', 4),
(3057, 359, '泽普县', 4),
(3058, 359, '莎车县', 4),
(3059, 359, '叶城县', 4),
(3060, 359, '麦盖提县', 4),
(3061, 359, '岳普湖县', 4),
(3062, 359, '伽师县', 4),
(3063, 359, '巴楚县', 4),
(3064, 359, '塔什库尔干', 4),
(3065, 360, '克拉玛依市', 4),
(3066, 361, '阿图什市', 4),
(3067, 361, '阿克陶县', 4),
(3068, 361, '阿合奇县', 4),
(3069, 361, '乌恰县', 4),
(3070, 362, '石河子市', 4),
(3071, 363, '图木舒克市', 4),
(3072, 364, '吐鲁番市', 4),
(3073, 364, '鄯善县', 4),
(3074, 364, '托克逊县', 4),
(3075, 365, '五家渠市', 4),
(3076, 366, '阿勒泰市', 4),
(3077, 366, '布克赛尔', 4),
(3078, 366, '伊宁市', 4),
(3079, 366, '布尔津县', 4),
(3080, 366, '奎屯市', 4),
(3081, 366, '乌苏市', 4),
(3082, 366, '额敏县', 4),
(3083, 366, '富蕴县', 4),
(3084, 366, '伊宁县', 4),
(3085, 366, '福海县', 4),
(3086, 366, '霍城县', 4),
(3087, 366, '沙湾县', 4),
(3088, 366, '巩留县', 4),
(3089, 366, '哈巴河县', 4),
(3090, 366, '托里县', 4),
(3091, 366, '青河县', 4),
(3092, 366, '新源县', 4),
(3093, 366, '裕民县', 4),
(3094, 366, '和布克赛尔', 4),
(3095, 366, '吉木乃县', 4),
(3096, 366, '昭苏县', 4),
(3097, 366, '特克斯县', 4),
(3098, 366, '尼勒克县', 4),
(3099, 366, '察布查尔', 4),
(3100, 367, '盘龙区', 4),
(3101, 367, '五华区', 4),
(3102, 367, '官渡区', 4),
(3103, 367, '西山区', 4),
(3104, 367, '东川区', 4),
(3105, 367, '安宁市', 4),
(3106, 367, '呈贡县', 4),
(3107, 367, '晋宁县', 4),
(3108, 367, '富民县', 4),
(3109, 367, '宜良县', 4),
(3110, 367, '嵩明县', 4),
(3111, 367, '石林县', 4),
(3112, 367, '禄劝', 4),
(3113, 367, '寻甸', 4),
(3114, 368, '兰坪', 4),
(3115, 368, '泸水县', 4),
(3116, 368, '福贡县', 4),
(3117, 368, '贡山', 4),
(3118, 369, '宁洱', 4),
(3119, 369, '思茅区', 4),
(3120, 369, '墨江', 4),
(3121, 369, '景东', 4),
(3122, 369, '景谷', 4),
(3123, 369, '镇沅', 4),
(3124, 369, '江城', 4),
(3125, 369, '孟连', 4),
(3126, 369, '澜沧', 4),
(3127, 369, '西盟', 4),
(3128, 370, '古城区', 4),
(3129, 370, '宁蒗', 4),
(3130, 370, '玉龙', 4),
(3131, 370, '永胜县', 4),
(3132, 370, '华坪县', 4),
(3133, 371, '隆阳区', 4),
(3134, 371, '施甸县', 4),
(3135, 371, '腾冲县', 4),
(3136, 371, '龙陵县', 4),
(3137, 371, '昌宁县', 4),
(3138, 372, '楚雄市', 4),
(3139, 372, '双柏县', 4),
(3140, 372, '牟定县', 4),
(3141, 372, '南华县', 4),
(3142, 372, '姚安县', 4),
(3143, 372, '大姚县', 4),
(3144, 372, '永仁县', 4),
(3145, 372, '元谋县', 4),
(3146, 372, '武定县', 4),
(3147, 372, '禄丰县', 4),
(3148, 373, '大理市', 4),
(3149, 373, '祥云县', 4),
(3150, 373, '宾川县', 4),
(3151, 373, '弥渡县', 4),
(3152, 373, '永平县', 4),
(3153, 373, '云龙县', 4),
(3154, 373, '洱源县', 4),
(3155, 373, '剑川县', 4),
(3156, 373, '鹤庆县', 4),
(3157, 373, '漾濞', 4),
(3158, 373, '南涧', 4),
(3159, 373, '巍山', 4),
(3160, 374, '潞西市', 4),
(3161, 374, '瑞丽市', 4),
(3162, 374, '梁河县', 4),
(3163, 374, '盈江县', 4),
(3164, 374, '陇川县', 4),
(3165, 375, '香格里拉县', 4),
(3166, 375, '德钦县', 4),
(3167, 375, '维西', 4),
(3168, 376, '泸西县', 4),
(3169, 376, '蒙自县', 4),
(3170, 376, '个旧市', 4),
(3171, 376, '开远市', 4),
(3172, 376, '绿春县', 4),
(3173, 376, '建水县', 4),
(3174, 376, '石屏县', 4),
(3175, 376, '弥勒县', 4),
(3176, 376, '元阳县', 4),
(3177, 376, '红河县', 4),
(3178, 376, '金平', 4),
(3179, 376, '河口', 4),
(3180, 376, '屏边', 4),
(3181, 377, '临翔区', 4),
(3182, 377, '凤庆县', 4),
(3183, 377, '云县', 4),
(3184, 377, '永德县', 4),
(3185, 377, '镇康县', 4),
(3186, 377, '双江', 4),
(3187, 377, '耿马', 4),
(3188, 377, '沧源', 4),
(3189, 378, '麒麟区', 4),
(3190, 378, '宣威市', 4),
(3191, 378, '马龙县', 4),
(3192, 378, '陆良县', 4),
(3193, 378, '师宗县', 4),
(3194, 378, '罗平县', 4),
(3195, 378, '富源县', 4),
(3196, 378, '会泽县', 4),
(3197, 378, '沾益县', 4),
(3198, 379, '文山县', 4),
(3199, 379, '砚山县', 4),
(3200, 379, '西畴县', 4),
(3201, 379, '麻栗坡县', 4),
(3202, 379, '马关县', 4),
(3203, 379, '丘北县', 4),
(3204, 379, '广南县', 4),
(3205, 379, '富宁县', 4),
(3206, 380, '景洪市', 4),
(3207, 380, '勐海县', 4),
(3208, 380, '勐腊县', 4),
(3209, 381, '红塔区', 4),
(3210, 381, '江川县', 4),
(3211, 381, '澄江县', 4),
(3212, 381, '通海县', 4),
(3213, 381, '华宁县', 4),
(3214, 381, '易门县', 4),
(3215, 381, '峨山', 4),
(3216, 381, '新平', 4),
(3217, 381, '元江', 4),
(3218, 382, '昭阳区', 4),
(3219, 382, '鲁甸县', 4),
(3220, 382, '巧家县', 4),
(3221, 382, '盐津县', 4),
(3222, 382, '大关县', 4),
(3223, 382, '永善县', 4),
(3224, 382, '绥江县', 4),
(3225, 382, '镇雄县', 4),
(3226, 382, '彝良县', 4),
(3227, 382, '威信县', 4),
(3228, 382, '水富县', 4),
(3229, 383, '西湖区', 4),
(3230, 383, '上城区', 4),
(3231, 383, '下城区', 4),
(3232, 383, '拱墅区', 4),
(3233, 383, '滨江区', 4),
(3234, 383, '江干区', 4),
(3235, 383, '萧山区', 4),
(3236, 383, '余杭区', 4),
(3237, 383, '市郊', 4),
(3238, 383, '建德市', 4),
(3239, 383, '富阳市', 4),
(3240, 383, '临安市', 4),
(3241, 383, '桐庐县', 4),
(3242, 383, '淳安县', 4),
(3243, 384, '吴兴区', 4),
(3244, 384, '南浔区', 4),
(3245, 384, '德清县', 4),
(3246, 384, '长兴县', 4),
(3247, 384, '安吉县', 4),
(3248, 385, '南湖区', 4),
(3249, 385, '秀洲区', 4),
(3250, 385, '海宁市', 4),
(3251, 385, '嘉善县', 4),
(3252, 385, '平湖市', 4),
(3253, 385, '桐乡市', 4),
(3254, 385, '海盐县', 4),
(3255, 386, '婺城区', 4),
(3256, 386, '金东区', 4),
(3257, 386, '兰溪市', 4),
(3258, 386, '市区', 4),
(3259, 386, '佛堂镇', 4),
(3260, 386, '上溪镇', 4),
(3261, 386, '义亭镇', 4),
(3262, 386, '大陈镇', 4),
(3263, 386, '苏溪镇', 4),
(3264, 386, '赤岸镇', 4),
(3265, 386, '东阳市', 4),
(3266, 386, '永康市', 4),
(3267, 386, '武义县', 4),
(3268, 386, '浦江县', 4),
(3269, 386, '磐安县', 4),
(3270, 387, '莲都区', 4),
(3271, 387, '龙泉市', 4),
(3272, 387, '青田县', 4),
(3273, 387, '缙云县', 4),
(3274, 387, '遂昌县', 4),
(3275, 387, '松阳县', 4),
(3276, 387, '云和县', 4),
(3277, 387, '庆元县', 4),
(3278, 387, '景宁', 4),
(3279, 388, '海曙区', 4),
(3280, 388, '江东区', 4),
(3281, 388, '江北区', 4),
(3282, 388, '镇海区', 4),
(3283, 388, '北仑区', 4),
(3284, 388, '鄞州区', 4),
(3285, 388, '余姚市', 4),
(3286, 388, '慈溪市', 4),
(3287, 388, '奉化市', 4),
(3288, 388, '象山县', 4),
(3289, 388, '宁海县', 4),
(3290, 389, '越城区', 4),
(3291, 389, '上虞市', 4),
(3292, 389, '嵊州市', 4),
(3293, 389, '绍兴县', 4),
(3294, 389, '新昌县', 4),
(3295, 389, '诸暨市', 4),
(3296, 390, '椒江区', 4),
(3297, 390, '黄岩区', 4),
(3298, 390, '路桥区', 4),
(3299, 390, '温岭市', 4),
(3300, 390, '临海市', 4),
(3301, 390, '玉环县', 4),
(3302, 390, '三门县', 4),
(3303, 390, '天台县', 4),
(3304, 390, '仙居县', 4),
(3305, 391, '鹿城区', 4),
(3306, 391, '龙湾区', 4),
(3307, 391, '瓯海区', 4),
(3308, 391, '瑞安市', 4),
(3309, 391, '乐清市', 4),
(3310, 391, '洞头县', 4),
(3311, 391, '永嘉县', 4),
(3312, 391, '平阳县', 4),
(3313, 391, '苍南县', 4),
(3314, 391, '文成县', 4),
(3315, 391, '泰顺县', 4),
(3316, 392, '定海区', 4),
(3317, 392, '普陀区', 4),
(3318, 392, '岱山县', 4),
(3319, 392, '嵊泗县', 4),
(3320, 393, '衢州市', 4),
(3321, 393, '江山市', 4),
(3322, 393, '常山县', 4),
(3323, 393, '开化县', 4),
(3324, 393, '龙游县', 4),
(3325, 394, '合川区', 4),
(3326, 394, '江津区', 4),
(3327, 394, '南川区', 4),
(3328, 394, '永川区', 4),
(3329, 394, '南岸区', 4),
(3330, 394, '渝北区', 4),
(3331, 394, '万盛区', 4),
(3332, 394, '大渡口区', 4),
(3333, 394, '万州区', 4),
(3334, 394, '北碚区', 4),
(3335, 394, '沙坪坝区', 4),
(3336, 394, '巴南区', 4),
(3337, 394, '涪陵区', 4),
(3338, 394, '江北区', 4),
(3339, 394, '九龙坡区', 4),
(3340, 394, '渝中区', 4),
(3341, 394, '黔江开发区', 4),
(3342, 394, '长寿区', 4),
(3343, 394, '双桥区', 4),
(3344, 394, '綦江县', 4),
(3345, 394, '潼南县', 4),
(3346, 394, '铜梁县', 4),
(3347, 394, '大足县', 4),
(3348, 394, '荣昌县', 4),
(3349, 394, '璧山县', 4),
(3350, 394, '垫江县', 4),
(3351, 394, '武隆县', 4),
(3352, 394, '丰都县', 4),
(3353, 394, '城口县', 4),
(3354, 394, '梁平县', 4),
(3355, 394, '开县', 4),
(3356, 394, '巫溪县', 4),
(3357, 394, '巫山县', 4),
(3358, 394, '奉节县', 4),
(3359, 394, '云阳县', 4),
(3360, 394, '忠县', 4),
(3361, 394, '石柱', 4),
(3362, 394, '彭水', 4),
(3363, 394, '酉阳', 4),
(3364, 394, '秀山', 4),
(3365, 395, '沙田区', 4),
(3366, 395, '东区', 4),
(3367, 395, '观塘区', 4),
(3368, 395, '黄大仙区', 4),
(3369, 395, '九龙城区', 4),
(3370, 395, '屯门区', 4),
(3371, 395, '葵青区', 4),
(3372, 395, '元朗区', 4),
(3373, 395, '深水埗区', 4),
(3374, 395, '西贡区', 4),
(3375, 395, '大埔区', 4),
(3376, 395, '湾仔区', 4),
(3377, 395, '油尖旺区', 4),
(3378, 395, '北区', 4),
(3379, 395, '南区', 4),
(3380, 395, '荃湾区', 4),
(3381, 395, '中西区', 4),
(3382, 395, '离岛区', 4),
(3383, 396, '澳门', 4),
(3384, 397, '台北', 4),
(3385, 397, '高雄', 4),
(3386, 397, '基隆', 4),
(3387, 397, '台中', 4),
(3388, 397, '台南', 4),
(3389, 397, '新竹', 4),
(3390, 397, '嘉义', 4),
(3391, 397, '宜兰县', 4),
(3392, 397, '桃园县', 4),
(3393, 397, '苗栗县', 4),
(3394, 397, '彰化县', 4),
(3395, 397, '南投县', 4),
(3396, 397, '云林县', 4),
(3397, 397, '屏东县', 4),
(3398, 397, '台东县', 4),
(3399, 397, '花莲县', 4),
(3400, 397, '澎湖县', 4),
(1, 0, '中国', 1),
(3401, 3, '合肥', 3),
(3402, 3401, '肥东县', 4),
(3403, 3401, '庐江县', 4),
(3404, 3401, '包河区', 4),
(3405, 3401, '蜀山区', 4),
(3406, 3401, '瑶海区', 4),
(3407, 3401, '庐阳区', 4),
(3408, 3401, '经济技术开发区', 4),
(3409, 3401, '高新技术开发区', 4),
(3410, 3401, '北城新区', 4),
(3411, 3401, '滨湖新区', 4),
(3412, 3401, '政务文化新区', 4),
(3413, 3401, '新站综合开发试验区', 4),
(3414, 3401, '肥西县', 4),
(3415, 3401, '巢湖市', 4),
(3416, 3401, '长丰县', 4),
(3417, 386, '义乌', 4),
(3418, 386, '义乌', 4);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%region_conf1`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%region_conf1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '地区名称',
  `region_level` tinyint(4) NOT NULL COMMENT '1:国 2:省 3:市(县) 4:区(镇)',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3402 ;

--
-- 转存表中的数据 `%DB_PREFIX%region_conf1`
--

INSERT INTO `%DB_PREFIX%region_conf1` (`id`, `pid`, `name`, `region_level`) VALUES
(3, 1, '安徽', 2),
(4, 1, '福建', 2),
(5, 1, '甘肃', 2),
(6, 1, '广东', 2),
(7, 1, '广西', 2),
(8, 1, '贵州', 2),
(9, 1, '海南', 2),
(10, 1, '河北', 2),
(11, 1, '河南', 2),
(12, 1, '黑龙江', 2),
(13, 1, '湖北', 2),
(14, 1, '湖南', 2),
(15, 1, '吉林', 2),
(16, 1, '江苏', 2),
(17, 1, '江西', 2),
(18, 1, '辽宁', 2),
(19, 1, '内蒙古', 2),
(20, 1, '宁夏', 2),
(21, 1, '青海', 2),
(22, 1, '山东', 2),
(23, 1, '山西', 2),
(24, 1, '陕西', 2),
(26, 1, '四川', 2),
(28, 1, '西藏', 2),
(29, 1, '新疆', 2),
(30, 1, '云南', 2),
(31, 1, '浙江', 2),
(36, 3, '安庆', 3),
(37, 3, '蚌埠', 3),
(38, 3, '巢湖', 3),
(39, 3, '池州', 3),
(40, 3, '滁州', 3),
(41, 3, '阜阳', 3),
(42, 3, '淮北', 3),
(43, 3, '淮南', 3),
(44, 3, '黄山', 3),
(45, 3, '六安', 3),
(46, 3, '马鞍山', 3),
(47, 3, '宿州', 3),
(48, 3, '铜陵', 3),
(49, 3, '芜湖', 3),
(50, 3, '宣城', 3),
(51, 3, '亳州', 3),
(52, 2, '北京', 2),
(53, 4, '福州', 3),
(54, 4, '龙岩', 3),
(55, 4, '南平', 3),
(56, 4, '宁德', 3),
(57, 4, '莆田', 3),
(58, 4, '泉州', 3),
(59, 4, '三明', 3),
(60, 4, '厦门', 3),
(61, 4, '漳州', 3),
(62, 5, '兰州', 3),
(63, 5, '白银', 3),
(64, 5, '定西', 3),
(65, 5, '甘南', 3),
(66, 5, '嘉峪关', 3),
(67, 5, '金昌', 3),
(68, 5, '酒泉', 3),
(69, 5, '临夏', 3),
(70, 5, '陇南', 3),
(71, 5, '平凉', 3),
(72, 5, '庆阳', 3),
(73, 5, '天水', 3),
(74, 5, '武威', 3),
(75, 5, '张掖', 3),
(76, 6, '广州', 3),
(77, 6, '深圳', 3),
(78, 6, '潮州', 3),
(79, 6, '东莞', 3),
(80, 6, '佛山', 3),
(81, 6, '河源', 3),
(82, 6, '惠州', 3),
(83, 6, '江门', 3),
(84, 6, '揭阳', 3),
(85, 6, '茂名', 3),
(86, 6, '梅州', 3),
(87, 6, '清远', 3),
(88, 6, '汕头', 3),
(89, 6, '汕尾', 3),
(90, 6, '韶关', 3),
(91, 6, '阳江', 3),
(92, 6, '云浮', 3),
(93, 6, '湛江', 3),
(94, 6, '肇庆', 3),
(95, 6, '中山', 3),
(96, 6, '珠海', 3),
(97, 7, '南宁', 3),
(98, 7, '桂林', 3),
(99, 7, '百色', 3),
(100, 7, '北海', 3),
(101, 7, '崇左', 3),
(102, 7, '防城港', 3),
(103, 7, '贵港', 3),
(104, 7, '河池', 3),
(105, 7, '贺州', 3),
(106, 7, '来宾', 3),
(107, 7, '柳州', 3),
(108, 7, '钦州', 3),
(109, 7, '梧州', 3),
(110, 7, '玉林', 3),
(111, 8, '贵阳', 3),
(112, 8, '安顺', 3),
(113, 8, '毕节', 3),
(114, 8, '六盘水', 3),
(115, 8, '黔东南', 3),
(116, 8, '黔南', 3),
(117, 8, '黔西南', 3),
(118, 8, '铜仁', 3),
(119, 8, '遵义', 3),
(120, 9, '海口', 3),
(121, 9, '三亚', 3),
(122, 9, '白沙', 3),
(123, 9, '保亭', 3),
(124, 9, '昌江', 3),
(125, 9, '澄迈县', 3),
(126, 9, '定安县', 3),
(127, 9, '东方', 3),
(128, 9, '乐东', 3),
(129, 9, '临高县', 3),
(130, 9, '陵水', 3),
(131, 9, '琼海', 3),
(132, 9, '琼中', 3),
(133, 9, '屯昌县', 3),
(134, 9, '万宁', 3),
(135, 9, '文昌', 3),
(136, 9, '五指山', 3),
(137, 9, '儋州', 3),
(138, 10, '石家庄', 3),
(139, 10, '保定', 3),
(140, 10, '沧州', 3),
(141, 10, '承德', 3),
(142, 10, '邯郸', 3),
(143, 10, '衡水', 3),
(144, 10, '廊坊', 3),
(145, 10, '秦皇岛', 3),
(146, 10, '唐山', 3),
(147, 10, '邢台', 3),
(148, 10, '张家口', 3),
(149, 11, '郑州', 3),
(150, 11, '洛阳', 3),
(151, 11, '开封', 3),
(152, 11, '安阳', 3),
(153, 11, '鹤壁', 3),
(154, 11, '济源', 3),
(155, 11, '焦作', 3),
(156, 11, '南阳', 3),
(157, 11, '平顶山', 3),
(158, 11, '三门峡', 3),
(159, 11, '商丘', 3),
(160, 11, '新乡', 3),
(161, 11, '信阳', 3),
(162, 11, '许昌', 3),
(163, 11, '周口', 3),
(164, 11, '驻马店', 3),
(165, 11, '漯河', 3),
(166, 11, '濮阳', 3),
(167, 12, '哈尔滨', 3),
(168, 12, '大庆', 3),
(169, 12, '大兴安岭', 3),
(170, 12, '鹤岗', 3),
(171, 12, '黑河', 3),
(172, 12, '鸡西', 3),
(173, 12, '佳木斯', 3),
(174, 12, '牡丹江', 3),
(175, 12, '七台河', 3),
(176, 12, '齐齐哈尔', 3),
(177, 12, '双鸭山', 3),
(178, 12, '绥化', 3),
(179, 12, '伊春', 3),
(180, 13, '武汉', 3),
(181, 13, '仙桃', 3),
(182, 13, '鄂州', 3),
(183, 13, '黄冈', 3),
(184, 13, '黄石', 3),
(185, 13, '荆门', 3),
(186, 13, '荆州', 3),
(187, 13, '潜江', 3),
(188, 13, '神农架林区', 3),
(189, 13, '十堰', 3),
(190, 13, '随州', 3),
(191, 13, '天门', 3),
(192, 13, '咸宁', 3),
(193, 13, '襄樊', 3),
(194, 13, '孝感', 3),
(195, 13, '宜昌', 3),
(196, 13, '恩施', 3),
(197, 14, '长沙', 3),
(198, 14, '张家界', 3),
(199, 14, '常德', 3),
(200, 14, '郴州', 3),
(201, 14, '衡阳', 3),
(202, 14, '怀化', 3),
(203, 14, '娄底', 3),
(204, 14, '邵阳', 3),
(205, 14, '湘潭', 3),
(206, 14, '湘西', 3),
(207, 14, '益阳', 3),
(208, 14, '永州', 3),
(209, 14, '岳阳', 3),
(210, 14, '株洲', 3),
(211, 15, '长春', 3),
(212, 15, '吉林', 3),
(213, 15, '白城', 3),
(214, 15, '白山', 3),
(215, 15, '辽源', 3),
(216, 15, '四平', 3),
(217, 15, '松原', 3),
(218, 15, '通化', 3),
(219, 15, '延边', 3),
(220, 16, '南京', 3),
(221, 16, '苏州', 3),
(222, 16, '无锡', 3),
(223, 16, '常州', 3),
(224, 16, '淮安', 3),
(225, 16, '连云港', 3),
(226, 16, '南通', 3),
(227, 16, '宿迁', 3),
(228, 16, '泰州', 3),
(229, 16, '徐州', 3),
(230, 16, '盐城', 3),
(231, 16, '扬州', 3),
(232, 16, '镇江', 3),
(233, 17, '南昌', 3),
(234, 17, '抚州', 3),
(235, 17, '赣州', 3),
(236, 17, '吉安', 3),
(237, 17, '景德镇', 3),
(238, 17, '九江', 3),
(239, 17, '萍乡', 3),
(240, 17, '上饶', 3),
(241, 17, '新余', 3),
(242, 17, '宜春', 3),
(243, 17, '鹰潭', 3),
(244, 18, '沈阳', 3),
(245, 18, '大连', 3),
(246, 18, '鞍山', 3),
(247, 18, '本溪', 3),
(248, 18, '朝阳', 3),
(249, 18, '丹东', 3),
(250, 18, '抚顺', 3),
(251, 18, '阜新', 3),
(252, 18, '葫芦岛', 3),
(253, 18, '锦州', 3),
(254, 18, '辽阳', 3),
(255, 18, '盘锦', 3),
(256, 18, '铁岭', 3),
(257, 18, '营口', 3),
(258, 19, '呼和浩特', 3),
(259, 19, '阿拉善盟', 3),
(260, 19, '巴彦淖尔盟', 3),
(261, 19, '包头', 3),
(262, 19, '赤峰', 3),
(263, 19, '鄂尔多斯', 3),
(264, 19, '呼伦贝尔', 3),
(265, 19, '通辽', 3),
(266, 19, '乌海', 3),
(267, 19, '乌兰察布市', 3),
(268, 19, '锡林郭勒盟', 3),
(269, 19, '兴安盟', 3),
(270, 20, '银川', 3),
(271, 20, '固原', 3),
(272, 20, '石嘴山', 3),
(273, 20, '吴忠', 3),
(274, 20, '中卫', 3),
(275, 21, '西宁', 3),
(276, 21, '果洛', 3),
(277, 21, '海北', 3),
(278, 21, '海东', 3),
(279, 21, '海南', 3),
(280, 21, '海西', 3),
(281, 21, '黄南', 3),
(282, 21, '玉树', 3),
(283, 22, '济南', 3),
(284, 22, '青岛', 3),
(285, 22, '滨州', 3),
(286, 22, '德州', 3),
(287, 22, '东营', 3),
(288, 22, '菏泽', 3),
(289, 22, '济宁', 3),
(290, 22, '莱芜', 3),
(291, 22, '聊城', 3),
(292, 22, '临沂', 3),
(293, 22, '日照', 3),
(294, 22, '泰安', 3),
(295, 22, '威海', 3),
(296, 22, '潍坊', 3),
(297, 22, '烟台', 3),
(298, 22, '枣庄', 3),
(299, 22, '淄博', 3),
(300, 23, '太原', 3),
(301, 23, '长治', 3),
(302, 23, '大同', 3),
(303, 23, '晋城', 3),
(304, 23, '晋中', 3),
(305, 23, '临汾', 3),
(306, 23, '吕梁', 3),
(307, 23, '朔州', 3),
(308, 23, '忻州', 3),
(309, 23, '阳泉', 3),
(310, 23, '运城', 3),
(311, 24, '西安', 3),
(312, 24, '安康', 3),
(313, 24, '宝鸡', 3),
(314, 24, '汉中', 3),
(315, 24, '商洛', 3),
(316, 24, '铜川', 3),
(317, 24, '渭南', 3),
(318, 24, '咸阳', 3),
(319, 24, '延安', 3),
(320, 24, '榆林', 3),
(321, 25, '上海', 2),
(322, 26, '成都', 3),
(323, 26, '绵阳', 3),
(324, 26, '阿坝', 3),
(325, 26, '巴中', 3),
(326, 26, '达州', 3),
(327, 26, '德阳', 3),
(328, 26, '甘孜', 3),
(329, 26, '广安', 3),
(330, 26, '广元', 3),
(331, 26, '乐山', 3),
(332, 26, '凉山', 3),
(333, 26, '眉山', 3),
(334, 26, '南充', 3),
(335, 26, '内江', 3),
(336, 26, '攀枝花', 3),
(337, 26, '遂宁', 3),
(338, 26, '雅安', 3),
(339, 26, '宜宾', 3),
(340, 26, '资阳', 3),
(341, 26, '自贡', 3),
(342, 26, '泸州', 3),
(343, 27, '天津', 2),
(344, 28, '拉萨', 3),
(345, 28, '阿里', 3),
(346, 28, '昌都', 3),
(347, 28, '林芝', 3),
(348, 28, '那曲', 3),
(349, 28, '日喀则', 3),
(350, 28, '山南', 3),
(351, 29, '乌鲁木齐', 3),
(352, 29, '阿克苏', 3),
(353, 29, '阿拉尔', 3),
(354, 29, '巴音郭楞', 3),
(355, 29, '博尔塔拉', 3),
(356, 29, '昌吉', 3),
(357, 29, '哈密', 3),
(358, 29, '和田', 3),
(359, 29, '喀什', 3),
(360, 29, '克拉玛依', 3),
(361, 29, '克孜勒苏', 3),
(362, 29, '石河子', 3),
(363, 29, '图木舒克', 3),
(364, 29, '吐鲁番', 3),
(365, 29, '五家渠', 3),
(366, 29, '伊犁', 3),
(367, 30, '昆明', 3),
(368, 30, '怒江', 3),
(369, 30, '普洱', 3),
(370, 30, '丽江', 3),
(371, 30, '保山', 3),
(372, 30, '楚雄', 3),
(373, 30, '大理', 3),
(374, 30, '德宏', 3),
(375, 30, '迪庆', 3),
(376, 30, '红河', 3),
(377, 30, '临沧', 3),
(378, 30, '曲靖', 3),
(379, 30, '文山', 3),
(380, 30, '西双版纳', 3),
(381, 30, '玉溪', 3),
(382, 30, '昭通', 3),
(383, 31, '杭州', 3),
(384, 31, '湖州', 3),
(385, 31, '嘉兴', 3),
(386, 31, '金华', 3),
(387, 31, '丽水', 3),
(388, 31, '宁波', 3),
(389, 31, '绍兴', 3),
(390, 31, '台州', 3),
(391, 31, '温州', 3),
(392, 31, '舟山', 3),
(393, 31, '衢州', 3),
(394, 32, '重庆', 2),
(395, 33, '香港', 2),
(396, 34, '澳门', 2),
(397, 35, '台湾', 2),
(500, 52, '东城区', 3),
(501, 52, '西城区', 3),
(502, 52, '海淀区', 3),
(503, 52, '朝阳区', 3),
(504, 52, '崇文区', 3),
(505, 52, '宣武区', 3),
(506, 52, '丰台区', 3),
(507, 52, '石景山区', 3),
(508, 52, '房山区', 3),
(509, 52, '门头沟区', 3),
(510, 52, '通州区', 3),
(511, 52, '顺义区', 3),
(512, 52, '昌平区', 3),
(513, 52, '怀柔区', 3),
(514, 52, '平谷区', 3),
(515, 52, '大兴区', 3),
(516, 52, '密云县', 3),
(517, 52, '延庆县', 3),
(2703, 321, '长宁区', 3),
(2704, 321, '闸北区', 3),
(2705, 321, '闵行区', 3),
(2706, 321, '徐汇区', 3),
(2707, 321, '浦东新区', 3),
(2708, 321, '杨浦区', 3),
(2709, 321, '普陀区', 3),
(2710, 321, '静安区', 3),
(2711, 321, '卢湾区', 3),
(2712, 321, '虹口区', 3),
(2713, 321, '黄浦区', 3),
(2714, 321, '南汇区', 3),
(2715, 321, '松江区', 3),
(2716, 321, '嘉定区', 3),
(2717, 321, '宝山区', 3),
(2718, 321, '青浦区', 3),
(2719, 321, '金山区', 3),
(2720, 321, '奉贤区', 3),
(2721, 321, '崇明县', 3),
(2912, 343, '和平区', 3),
(2913, 343, '河西区', 3),
(2914, 343, '南开区', 3),
(2915, 343, '河北区', 3),
(2916, 343, '河东区', 3),
(2917, 343, '红桥区', 3),
(2918, 343, '东丽区', 3),
(2919, 343, '津南区', 3),
(2920, 343, '西青区', 3),
(2921, 343, '北辰区', 3),
(2922, 343, '塘沽区', 3),
(2923, 343, '汉沽区', 3),
(2924, 343, '大港区', 3),
(2925, 343, '武清区', 3),
(2926, 343, '宝坻区', 3),
(2927, 343, '经济开发区', 3),
(2928, 343, '宁河县', 3),
(2929, 343, '静海县', 3),
(2930, 343, '蓟县', 3),
(3325, 394, '合川区', 3),
(3326, 394, '江津区', 3),
(3327, 394, '南川区', 3),
(3328, 394, '永川区', 3),
(3329, 394, '南岸区', 3),
(3330, 394, '渝北区', 3),
(3331, 394, '万盛区', 3),
(3332, 394, '大渡口区', 3),
(3333, 394, '万州区', 3),
(3334, 394, '北碚区', 3),
(3335, 394, '沙坪坝区', 3),
(3336, 394, '巴南区', 3),
(3337, 394, '涪陵区', 3),
(3338, 394, '江北区', 3),
(3339, 394, '九龙坡区', 3),
(3340, 394, '渝中区', 3),
(3341, 394, '黔江开发区', 3),
(3342, 394, '长寿区', 3),
(3343, 394, '双桥区', 3),
(3344, 394, '綦江县', 3),
(3345, 394, '潼南县', 3),
(3346, 394, '铜梁县', 3),
(3347, 394, '大足县', 3),
(3348, 394, '荣昌县', 3),
(3349, 394, '璧山县', 3),
(3350, 394, '垫江县', 3),
(3351, 394, '武隆县', 3),
(3352, 394, '丰都县', 3),
(3353, 394, '城口县', 3),
(3354, 394, '梁平县', 3),
(3355, 394, '开县', 3),
(3356, 394, '巫溪县', 3),
(3357, 394, '巫山县', 3),
(3358, 394, '奉节县', 3),
(3359, 394, '云阳县', 3),
(3360, 394, '忠县', 3),
(3361, 394, '石柱', 3),
(3362, 394, '彭水', 3),
(3363, 394, '酉阳', 3),
(3364, 394, '秀山', 3),
(3365, 395, '沙田区', 3),
(3366, 395, '东区', 3),
(3367, 395, '观塘区', 3),
(3368, 395, '黄大仙区', 3),
(3369, 395, '九龙城区', 3),
(3370, 395, '屯门区', 3),
(3371, 395, '葵青区', 3),
(3372, 395, '元朗区', 3),
(3373, 395, '深水埗区', 3),
(3374, 395, '西贡区', 3),
(3375, 395, '大埔区', 3),
(3376, 395, '湾仔区', 3),
(3377, 395, '油尖旺区', 3),
(3378, 395, '北区', 3),
(3379, 395, '南区', 3),
(3380, 395, '荃湾区', 3),
(3381, 395, '中西区', 3),
(3382, 395, '离岛区', 3),
(3383, 396, '澳门', 3),
(3384, 397, '台北', 3),
(3385, 397, '高雄', 3),
(3386, 397, '基隆', 3),
(3387, 397, '台中', 3),
(3388, 397, '台南', 3),
(3389, 397, '新竹', 3),
(3390, 397, '嘉义', 3),
(3391, 397, '宜兰县', 3),
(3392, 397, '桃园县', 3),
(3393, 397, '苗栗县', 3),
(3394, 397, '彰化县', 3),
(3395, 397, '南投县', 3),
(3396, 397, '云林县', 3),
(3397, 397, '屏东县', 3),
(3398, 397, '台东县', 3),
(3399, 397, '花莲县', 3),
(3400, 397, '澎湖县', 3),
(3401, 3, '合肥', 3);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%remind_count`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%remind_count` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_count` int(11) NOT NULL COMMENT '分享数',
  `topic_count_time` int(11) NOT NULL,
  `dp_count` int(11) NOT NULL,
  `dp_count_time` int(11) NOT NULL,
  `msg_count` int(11) NOT NULL COMMENT '会员留言',
  `msg_count_time` int(11) NOT NULL,
  `buy_msg_count` int(11) NOT NULL,
  `buy_msg_count_time` int(11) NOT NULL,
  `order_count` int(11) NOT NULL,
  `order_count_time` int(11) NOT NULL,
  `refund_count` int(11) NOT NULL,
  `refund_count_time` int(11) NOT NULL,
  `retake_count` int(11) NOT NULL,
  `retake_count_time` int(11) NOT NULL,
  `incharge_count` int(11) NOT NULL,
  `incharge_count_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `%DB_PREFIX%remind_count`
--

INSERT INTO `%DB_PREFIX%remind_count` (`id`, `topic_count`, `topic_count_time`, `dp_count`, `dp_count_time`, `msg_count`, `msg_count_time`, `buy_msg_count`, `buy_msg_count_time`, `order_count`, `order_count_time`, `refund_count`, `refund_count_time`, `retake_count`, `retake_count_time`, `incharge_count`, `incharge_count_time`) VALUES
(1, 0, 1353019855, 0, 1348277863, 0, 1455433758, 0, 1455433758, 0, 1355774396, 0, 1355774396, 0, 1355774396, 0, 1420414312);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%reportguy`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%reportguy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `r_user_id` int(11) NOT NULL,
  `reason` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%role`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `%DB_PREFIX%role`
--

INSERT INTO `%DB_PREFIX%role` (`id`, `name`, `is_effect`, `is_delete`) VALUES
(5, '管理员', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%role_access`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%role_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `node` varchar(255) NOT NULL COMMENT '节点action名',
  `module` varchar(255) NOT NULL COMMENT '模块名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2776 ;

--
-- 转存表中的数据 `%DB_PREFIX%role_access`
--

INSERT INTO `%DB_PREFIX%role_access` (`id`, `role_id`, `node`, `module`) VALUES
(2398, 5, 'foreverdelete', 'DealAgency'),
(2397, 5, 'trash', 'DealAgency'),
(2396, 5, 'index', 'DealAgency'),
(2395, 5, 'bank_manage', 'User'),
(2394, 5, 'work', 'User'),
(2393, 5, 'work_manage', 'User'),
(2392, 5, 'company_manage', 'User'),
(2261, 5, 'expire', 'Deal'),
(2260, 5, 'ing', 'Deal'),
(2259, 5, 'penalty', 'Deal'),
(2258, 5, 'over', 'Deal'),
(2257, 5, 'inrepay', 'Deal'),
(2256, 5, 'news', 'Deal'),
(2255, 5, 'advance', 'Deal'),
(2254, 5, 'index', 'Deal'),
(2253, 5, 'set_effect', 'DealMsgboard'),
(2252, 5, 'index', 'DealMsgboard'),
(2251, 5, 'full', 'Deal'),
(2250, 5, 'true_publish', 'Deal'),
(2249, 5, 'publish', 'Deal'),
(2248, 5, 'foreverdelete', 'Log'),
(2247, 5, 'index', 'Log'),
(2246, 5, 'index', 'Statistics'),
(2245, 5, 'de_manage_carry', 'Index'),
(2244, 5, 'manage_carry', 'Index'),
(2243, 5, 'statistics', 'Index'),
(2242, 5, 'main', 'Index'),
(2391, 5, 'company_info', 'User'),
(2390, 5, 'info', 'User'),
(2615, 5, 'index', 'PromotionHuman_rebate'),
(2614, 5, 'index', 'CreateRelevance_rebate'),
(2387, 5, 'agencies_trash', 'User'),
(2386, 5, 'agencies_delete', 'User'),
(2385, 5, 'agencies_register', 'User'),
(2384, 5, 'agencies_index', 'User'),
(2383, 5, 'edit', 'GenerationRepaySubmit'),
(2382, 5, 'index', 'GenerationRepaySubmit'),
(2381, 5, 'delete', 'QuotaSubmit'),
(2380, 5, 'edit', 'QuotaSubmit'),
(2379, 5, 'index', 'QuotaSubmit'),
(2378, 5, 'delete', 'DealQuotaSubmit'),
(2377, 5, 'edit', 'DealQuotaSubmit'),
(2376, 5, 'index', 'DealQuotaSubmit'),
(2375, 5, 'op_passed', 'Credit'),
(2374, 5, 'user', 'Credit'),
(2373, 5, 'user_wait', 'Credit'),
(2372, 5, 'company_register', 'User'),
(2371, 5, 'register', 'User'),
(2370, 5, 'set_effect', 'User'),
(2369, 5, 'restore', 'User'),
(2368, 5, 'account_detail', 'User'),
(2367, 5, 'foreverdelete', 'User'),
(2366, 5, 'export_csv', 'User'),
(2365, 5, 'delete', 'User'),
(2364, 5, 'update', 'User'),
(2363, 5, 'insert', 'User'),
(2362, 5, 'view_info', 'User'),
(2361, 5, 'info_down', 'User'),
(2360, 5, 'passed', 'User'),
(2359, 5, 'de_bank', 'User'),
(2358, 5, 'index', 'PromotionHuman'),
(2357, 5, 'index', 'CreateRelevance'),
(2356, 5, 'company_trash', 'User'),
(2355, 5, 'trash', 'User'),
(2354, 5, 'company_black', 'User'),
(2353, 5, 'black', 'User'),
(2352, 5, 'company_index', 'User'),
(2351, 5, 'index', 'User'),
(2350, 5, 'export_csv', 'LicaiAdvance'),
(2349, 5, 'update', 'LicaiAdvance'),
(2348, 5, 'index', 'LicaiAdvance'),
(2347, 5, 'export_csv', 'LicaiNear'),
(2343, 5, 'foreach_sms', 'LicaiNear'),
(2342, 5, 'foreach_pay', 'LicaiNear'),
(2341, 5, 'set_status', 'LicaiNear'),
(2346, 5, 'view', 'LicaiNear'),
(2345, 5, 'index', 'LicaiNear'),
(2338, 5, 'export_q_csv', 'LicaiRedempte'),
(2337, 5, 'foreach_pay_before', 'LicaiRedempte'),
(2336, 5, 'set_status', 'LicaiRedempte'),
(2335, 5, 'before_index', 'LicaiRedempte'),
(2334, 5, 'export_csv', 'LicaiRedempte'),
(2333, 5, 'foreach_pay', 'LicaiRedempte'),
(2332, 5, 'status', 'LicaiRedempte'),
(2331, 5, 'index', 'LicaiRedempte'),
(2330, 5, 'delete', 'LicaiDealshow'),
(2329, 5, 'edit', 'LicaiDealshow'),
(2328, 5, 'index', 'LicaiDealshow'),
(2327, 5, 'delete', 'LicaiHoliday'),
(2326, 5, 'edit', 'LicaiHoliday'),
(2325, 5, 'add', 'LicaiHoliday'),
(2324, 5, 'index', 'LicaiHoliday'),
(2323, 5, 'delete', 'LicaiRecommend'),
(2322, 5, 'edit', 'LicaiRecommend'),
(2321, 5, 'index', 'LicaiRecommend'),
(2320, 5, 'delete', 'LicaiFundBrand'),
(2319, 5, 'edit', 'LicaiFundBrand'),
(2318, 5, 'add', 'LicaiFundBrand'),
(2317, 5, 'index', 'LicaiFundBrand'),
(2316, 5, 'delete', 'LicaiFundType'),
(2315, 5, 'edit', 'LicaiFundType'),
(2314, 5, 'add', 'LicaiFundType'),
(2313, 5, 'index', 'LicaiFundType'),
(2312, 5, 'export_q_csv', 'LicaiOrder'),
(2311, 5, 'view', 'LicaiOrder'),
(2310, 5, 'order_list', 'LicaiOrder'),
(2309, 5, 'add', 'LicaiDealshow'),
(2308, 5, 'index', 'LicaiOrder'),
(2307, 5, 'add', 'LicaiRecommend'),
(2306, 5, 'index', 'LicaiHistory'),
(2305, 5, 'index', 'LicaiInterest'),
(2304, 5, 'foreverdelete', 'Licai'),
(2303, 5, 'export_csv', 'Licai'),
(2302, 5, 'edit', 'Licai'),
(2301, 5, 'add', 'Licai'),
(2300, 5, 'index', 'Licai'),
(2299, 5, 'verify_edit', 'Licai'),
(2298, 5, 'verify', 'Licai'),
(2297, 5, 'foreverdelete', 'Message'),
(2296, 5, 'update', 'Message'),
(2295, 5, 'index', 'Message'),
(2294, 5, 'reback', 'Transfer'),
(2293, 5, 'back', 'Transfer'),
(2292, 5, 'success', 'Transfer'),
(2291, 5, 'ing', 'Transfer'),
(2290, 5, 'index', 'Transfer'),
(2289, 5, 'failed', 'Loads'),
(2288, 5, 'success', 'Loads'),
(2287, 5, 'auto', 'Loads'),
(2286, 5, 'hand', 'Loads'),
(2285, 5, 'index', 'Loads'),
(2284, 5, 'set_sort', 'Deal'),
(2283, 5, 'set_effect', 'Deal'),
(2282, 5, 'foreverdelete', 'Deal'),
(2281, 5, 'restore', 'Deal'),
(2280, 5, 'delete', 'Deal'),
(2279, 5, 'update', 'Deal'),
(2278, 5, 'insert', 'Deal'),
(2277, 5, 'apart', 'Deal'),
(2276, 5, 'show_detail', 'Deal'),
(2275, 5, 'do_site_repay', 'Deal'),
(2274, 5, 'repay_plan', 'Deal'),
(2273, 5, 'repay_log', 'Deal'),
(2272, 5, 'export_csv_generation', 'Deal'),
(2271, 5, 'op_generation_repay_status', 'Deal'),
(2270, 5, 'export_csv_yuqi', 'Deal'),
(2269, 5, 'three_msg', 'Deal'),
(2268, 5, 'export_csv_three', 'Deal'),
(2267, 5, 'user_loads_repay', 'Deal'),
(2266, 5, 'generation_repay', 'Deal'),
(2265, 5, 'yuqi', 'Deal'),
(2264, 5, 'three', 'Deal'),
(2263, 5, 'trash', 'Deal'),
(2262, 5, 'flow', 'Deal'),
(2399, 5, 'update', 'DealAgency'),
(2400, 5, 'vip_user', 'VipPrivilege'),
(2401, 5, 'send_gift_all', 'VipPrivilege'),
(2680, 5, 'index', 'VipType'),
(2403, 5, 'add', 'VipType'),
(2404, 5, 'edit', 'VipType'),
(2405, 5, 'delete', 'VipType'),
(2406, 5, 'index', 'VipSetting'),
(2407, 5, 'add', 'VipSetting'),
(2408, 5, 'edit', 'VipSetting'),
(2409, 5, 'setting_trash', 'VipSetting'),
(2410, 5, 'delete', 'VipSetting'),
(2411, 5, 'foreverdelete', 'VipSetting'),
(2412, 5, 'config', 'VipSetting'),
(2413, 5, 'vip_upgrade_record', 'VipPrivilege'),
(2414, 5, 'vip_demotion_record', 'VipPrivilege'),
(2415, 5, 'index', 'Customers'),
(2416, 5, 'trash', 'Customers'),
(2417, 5, 'vip_gift_record', 'VipGift'),
(2418, 5, 'given_record', 'VipWelfare'),
(2419, 5, 'index', 'Reportguy'),
(2420, 5, 'edit', 'Reportguy'),
(2421, 5, 'foreverdelete', 'Reportguy'),
(2422, 5, 'index', 'MsgSystem'),
(2423, 5, 'insert', 'MsgSystem'),
(2424, 5, 'update', 'MsgSystem'),
(2425, 5, 'foreverdelete', 'MsgSystem'),
(2426, 5, 'index', 'PaymentNotice'),
(2427, 5, 'index', 'BankReconciliation'),
(2428, 5, 'online', 'PaymentNotice'),
(2429, 5, 'gathering', 'PaymentNotice'),
(2430, 5, 'index', 'UserCarry'),
(2431, 5, 'wait', 'UserCarry'),
(2432, 5, 'waitpay', 'UserCarry'),
(2434, 5, 'success', 'UserCarry'),
(2435, 5, 'reback', 'UserCarry'),
(2436, 5, 'edit', 'UserCarry'),
(2437, 5, 'delete', 'UserCarry'),
(2438, 5, 'fund_management', 'User'),
(2439, 5, 'site_money', 'Deal'),
(2440, 5, 'index', 'Security'),
(2441, 5, 'index', 'ProvisionsRisk'),
(2442, 5, 'add', 'ProvisionsRisk'),
(2443, 5, 'hand_recharge', 'User'),
(2444, 5, 'hand_overdue', 'User'),
(2445, 5, 'hand_freeze', 'User'),
(2446, 5, 'hand_integral', 'User'),
(2447, 5, 'hand_integrals', 'User'),
(2448, 5, 'hand_quota', 'User'),
(2449, 5, 'create', 'Ipslog'),
(2450, 5, 'trade', 'Ipslog'),
(2451, 5, 'creditor', 'Ipslog'),
(2452, 5, 'recharge', 'Ipslog'),
(2453, 5, 'transfer', 'Ipslog'),
(2454, 5, 'repayment', 'IpsRelation'),
(2455, 5, 'back_repayment', 'IpsRelation'),
(2456, 5, 'index', 'IpsFullscale'),
(2457, 5, 'index', 'IpsTransfer'),
(2458, 5, 'tender_total', 'StatisticsBorrow'),
(2459, 5, 'tender_usernum_total', 'StatisticsBorrow'),
(2460, 5, 'tender_account_total', 'StatisticsBorrow'),
(2461, 5, 'tender_borrow_type', 'StatisticsBorrow'),
(2462, 5, 'tender_hasback_total', 'StatisticsBorrow'),
(2463, 5, 'tender_tobe_receivables', 'StatisticsBorrow'),
(2464, 5, 'tender_rank_list', 'StatisticsBorrow'),
(2465, 5, 'tender_account_ratio', 'StatisticsBorrow'),
(2466, 5, 'loan_total', 'StatisticsLoan'),
(2467, 5, 'loan_usernum_total', 'StatisticsLoan'),
(2468, 5, 'loan_account_total', 'StatisticsLoan'),
(2469, 5, 'loan_borrow_type', 'StatisticsLoan'),
(2470, 5, 'loan_hasback_total', 'StatisticsLoan'),
(2471, 5, 'loan_tobe_receivables', 'StatisticsLoan'),
(2472, 5, 'loan_repay_late_total', 'StatisticsLoan'),
(2473, 5, 'change_account_total', 'StatisticsClaims'),
(2474, 5, 'website_recharge_total', 'WebsiteStatistics'),
(2475, 5, 'website_extraction_cash', 'WebsiteStatistics'),
(2476, 5, 'website_users_total', 'WebsiteStatistics'),
(2477, 5, 'website_age_group_total', 'WebsiteStatistics'),
(2478, 5, 'website_advance_total', 'WebsiteStatistics'),
(2479, 5, 'website_cost_total', 'WebsiteStatistics'),
(2480, 5, 'index', 'Departments'),
(2481, 5, 'trash', 'Departments'),
(2482, 5, 'insert', 'Departments'),
(2483, 5, 'update', 'Departments'),
(2484, 5, 'foreverdelete', 'Departments'),
(2485, 5, 'export_csv', 'Departments'),
(2486, 5, 'index', 'MyManager'),
(2487, 5, 'insert', 'MyManager'),
(2488, 5, 'update', 'MyManager'),
(2489, 5, 'export_csv', 'MyManager'),
(2490, 5, 'index', 'MyCustomer'),
(2491, 5, 'update', 'MyCustomer'),
(2492, 5, 'unallocated_standard', 'OverdueBillMonth'),
(2493, 5, 'updates', 'MyCustomer'),
(2494, 5, 'all_loan', 'OverdueBillMonth'),
(2495, 5, 'referrals', 'Departments'),
(2496, 5, 'referrals', 'MyManager'),
(2497, 5, 'referrals_log', 'MyManager'),
(2498, 5, 'export_log_csv', 'MyManager'),
(2499, 5, 'index', 'MyMembership'),
(2500, 5, 'index', 'OverdueBillMonth'),
(2501, 5, 'overdue_bill', 'OverdueBillMonth'),
(2502, 5, 'repayment_bill', 'OverdueBillMonth'),
(2503, 5, 'repayloan_scale', 'OverdueBillMonth'),
(2504, 5, 'completedloan_scale', 'OverdueBillMonth'),
(2505, 5, 'badloan_scale', 'OverdueBillMonth'),
(2506, 5, 'repay_plan_a', 'OverdueBillMonth'),
(2507, 5, 'op_status', 'OverdueBillMonth'),
(2508, 5, 'repay_log', 'OverdueBillMonth'),
(2509, 5, 'preview', 'OverdueBillMonth'),
(2510, 5, 'show_detail', 'OverdueBillMonth'),
(2511, 5, 'borrowing_member', 'User'),
(2512, 5, 'bad_member', 'User'),
(2513, 5, 'index', 'Article'),
(2514, 5, 'insert', 'Article'),
(2515, 5, 'update', 'Article'),
(2516, 5, 'set_effect', 'Article'),
(2517, 5, 'set_sort', 'Article'),
(2518, 5, 'delete', 'Article'),
(2519, 5, 'trash', 'Article'),
(2520, 5, 'index', 'ArticleCate'),
(2521, 5, 'insert', 'ArticleCate'),
(2522, 5, 'update', 'ArticleCate'),
(2523, 5, 'delete', 'ArticleCate'),
(2524, 5, 'set_effect', 'ArticleCate'),
(2525, 5, 'set_sort', 'ArticleCate'),
(2526, 5, 'trash', 'ArticleCate'),
(2527, 5, 'index', 'Nav'),
(2528, 5, 'insert', 'Nav'),
(2529, 5, 'update', 'Nav'),
(2530, 5, 'set_effect', 'Nav'),
(2531, 5, 'set_sort', 'Nav'),
(2532, 5, 'index', 'Vote'),
(2533, 5, 'insert', 'Vote'),
(2534, 5, 'update', 'Vote'),
(2535, 5, 'add_ask_row', 'Vote'),
(2536, 5, 'do_vote_ask', 'Vote'),
(2537, 5, 'foreverdelete', 'Vote'),
(2538, 5, 'set_effect', 'Vote'),
(2539, 5, 'set_sort', 'Vote'),
(2540, 5, 'vote_ask', 'Vote'),
(2541, 5, 'vote_result', 'Vote'),
(2542, 5, 'index', 'Adv'),
(2543, 5, 'insert', 'Adv'),
(2544, 5, 'update', 'Adv'),
(2545, 5, 'foreverdelete', 'Adv'),
(2546, 5, 'load_adv_id', 'Adv'),
(2547, 5, 'load_file', 'Adv'),
(2548, 5, 'set_effect', 'Adv'),
(2549, 5, 'mobile', 'Conf'),
(2550, 5, 'savemobile', 'Conf'),
(2551, 5, 'index', 'MAdv'),
(2552, 5, 'insert', 'MAdv'),
(2553, 5, 'update', 'MAdv'),
(2554, 5, 'foreverdelete', 'MAdv'),
(2555, 5, 'index', 'LinkGroup'),
(2556, 5, 'insert', 'LinkGroup'),
(2557, 5, 'update', 'LinkGroup'),
(2558, 5, 'foreverdelete', 'LinkGroup'),
(2559, 5, 'set_effect', 'LinkGroup'),
(2560, 5, 'set_sort', 'LinkGroup'),
(2561, 5, 'index', 'Link'),
(2562, 5, 'insert', 'Link'),
(2563, 5, 'update', 'Link'),
(2564, 5, 'foreverdelete', 'Link'),
(2565, 5, 'set_effect', 'Link'),
(2566, 5, 'set_sort', 'Link'),
(2567, 5, 'index', 'WeixinConf'),
(2568, 5, 'index', 'WeixinInfo'),
(2569, 5, 'nav_setting', 'WeixinInfo'),
(2570, 5, 'index', 'WeixinReply'),
(2571, 5, 'onfocus', 'WeixinReply'),
(2572, 5, 'txt', 'WeixinReply'),
(2573, 5, 'news', 'WeixinReply'),
(2574, 5, 'lbs', 'WeixinReply'),
(2575, 5, 'edittext', 'WeixinReply'),
(2576, 5, 'editnews', 'WeixinReply'),
(2577, 5, 'editlbs', 'WeixinReply'),
(2578, 5, 'delreply', 'WeixinReply'),
(2579, 5, 'set_industry', 'WeixinTemplate'),
(2580, 5, 'index', 'WeixinTemplate'),
(2581, 5, 'install_tmpl', 'WeixinTemplate'),
(2582, 5, 'msglist', 'WeixinTemplate'),
(2583, 5, 'send', 'WeixinTemplate'),
(2584, 5, 'foreverdelete', 'WeixinTemplate'),
(2585, 5, 'groups', 'WeixinUser'),
(2586, 5, 'groups_add', 'WeixinUser'),
(2587, 5, 'groups_editor', 'WeixinUser'),
(2588, 5, 'groups_synch', 'WeixinUser'),
(2589, 5, 'index', 'WeixinUser'),
(2590, 5, 'message_send', 'WeixinUser'),
(2591, 5, 'message_send_add', 'WeixinUser'),
(2592, 5, 'to_send_message', 'WeixinUser'),
(2593, 5, 'advanced', 'WeixinUser'),
(2594, 5, 'advanced_add', 'WeixinUser'),
(2595, 5, 'message_send_del', 'WeixinUser'),
(2596, 5, 'registered', 'Conf'),
(2597, 5, 'signin', 'Conf'),
(2598, 5, 'update_signin', 'Conf'),
(2599, 5, 'index', 'Goods'),
(2600, 5, 'add', 'Goods'),
(2601, 5, 'edit', 'Goods'),
(2602, 5, 'index', 'GoodsCate'),
(2603, 5, 'add', 'GoodsCate'),
(2604, 5, 'edit', 'GoodsCate'),
(2605, 5, 'index', 'GoodsOrder'),
(2606, 5, 'add', 'GoodsOrder'),
(2607, 5, 'edit', 'GoodsOrder'),
(2608, 5, 'index', 'Referrals'),
(2609, 5, 'pay', 'Referrals'),
(2610, 5, 'referrals', 'Conf'),
(2611, 5, 'update_referrals', 'Conf'),
(2612, 5, 'index', 'Referrals_rebate'),
(2613, 5, 'borrow_index', 'Referrals_rebate'),
(2616, 5, 'commossion', 'Conf'),
(2617, 5, 'update_commossion', 'Conf'),
(2618, 5, 'index', 'EcvType'),
(2619, 5, 'insert', 'EcvType'),
(2620, 5, 'update', 'EcvType'),
(2621, 5, 'send', 'EcvType'),
(2622, 5, 'foreverdelete', 'EcvType'),
(2623, 5, 'learn_send_list', 'Learn'),
(2624, 5, 'take_back', 'Learn'),
(2625, 5, 'learn_load', 'Learn'),
(2626, 5, 'activity_setting', 'Learn'),
(2627, 5, 'add', 'Learn'),
(2628, 5, 'edit', 'Learn'),
(2629, 5, 'delete', 'Learn'),
(2630, 5, 'learn_list', 'Learn'),
(2631, 5, 'add_learn', 'Learn'),
(2632, 5, 'edit_learn', 'Learn'),
(2633, 5, 'foreverdelete', 'Learn'),
(2634, 5, 'index', 'Conf'),
(2635, 5, 'update', 'Conf'),
(2636, 5, 'qq', 'Conf'),
(2637, 5, 'update_qq', 'Conf'),
(2638, 5, 'loan', 'Conf'),
(2639, 5, 'index', 'DealCate'),
(2640, 5, 'insert', 'DealCate'),
(2641, 5, 'update', 'DealCate'),
(2642, 5, 'delete', 'DealCate'),
(2643, 5, 'set_effect', 'DealCate'),
(2644, 5, 'set_sort', 'DealCate'),
(2645, 5, 'trash', 'DealCate'),
(2646, 5, 'index', 'DealLoanType'),
(2647, 5, 'insert', 'DealLoanType'),
(2648, 5, 'update', 'DealLoanType'),
(2649, 5, 'delete', 'DealLoanType'),
(2650, 5, 'set_effect', 'DealLoanType'),
(2651, 5, 'set_sort', 'DealLoanType'),
(2652, 5, 'trash', 'DealLoanType'),
(2653, 5, 'index', 'City'),
(2654, 5, 'insert', 'City'),
(2655, 5, 'update', 'City'),
(2656, 5, 'delete', 'City'),
(2657, 5, 'foreverdelete', 'City'),
(2658, 5, 'set_effect', 'City'),
(2659, 5, 'trash', 'City'),
(2660, 5, 'index', 'Contract'),
(2661, 5, 'trash', 'Contract'),
(2662, 5, 'add', 'Contract'),
(2663, 5, 'edit', 'Contract'),
(2664, 5, 'delete', 'Contract'),
(2665, 5, 'foreverdelete', 'Contract'),
(2666, 5, 'set_effect', 'Contract'),
(2667, 5, 'users', 'Conf'),
(2668, 5, 'index', 'UserField'),
(2669, 5, 'insert', 'UserField'),
(2670, 5, 'update', 'UserField'),
(2671, 5, 'foreverdelete', 'UserField'),
(2672, 5, 'set_sort', 'UserField'),
(2673, 5, 'index', 'Credit'),
(2674, 5, 'insert', 'Credit'),
(2675, 5, 'update', 'Credit'),
(2676, 5, 'index', 'UserLevel'),
(2677, 5, 'insert', 'UserLevel'),
(2678, 5, 'update', 'UserLevel'),
(2679, 5, 'foreverdelete', 'UserLevel'),
(2681, 5, 'gradesettingconfig', 'VipSetting'),
(2682, 5, 'index', 'VipGift'),
(2683, 5, 'export_csv', 'VipGift'),
(2684, 5, 'insert', 'VipGift'),
(2685, 5, 'update', 'VipGift'),
(2686, 5, 'index', 'VipFestivals'),
(2687, 5, 'send_gift', 'VipFestivals'),
(2688, 5, 'add', 'VipFestivals'),
(2689, 5, 'edit', 'VipFestivals'),
(2690, 5, 'delete', 'VipFestivals'),
(2691, 5, 'score_exchange', 'VipWelfare'),
(2692, 5, 'score_export_csv', 'VipWelfare'),
(2693, 5, 'config', 'UserCarry'),
(2694, 5, 'saveconfig', 'UserCarry'),
(2695, 5, 'index', 'Bank'),
(2696, 5, 'insert', 'Bank'),
(2697, 5, 'update', 'Bank'),
(2698, 5, 'delete', 'Bank'),
(2699, 5, 'index', 'Idcard'),
(2700, 5, 'index', 'Collocation'),
(2701, 5, 'index', 'Payment'),
(2702, 5, 'insert', 'Payment'),
(2703, 5, 'update', 'Payment'),
(2704, 5, 'uninstall', 'Payment'),
(2705, 5, 'index', 'ApiLogin'),
(2706, 5, 'insert', 'ApiLogin'),
(2707, 5, 'update', 'ApiLogin'),
(2708, 5, 'uninstall', 'ApiLogin'),
(2709, 5, 'index', 'Integrate'),
(2710, 5, 'install', 'Integrate'),
(2711, 5, 'save', 'Integrate'),
(2712, 5, 'uninstall', 'Integrate'),
(2713, 5, 'index', 'Role'),
(2714, 5, 'add', 'Role'),
(2715, 5, 'edit', 'Role'),
(2716, 5, 'set_effect', 'Role'),
(2717, 5, 'delete', 'Role'),
(2718, 5, 'trash', 'Role'),
(2719, 5, 'foreverdelete', 'Role'),
(2720, 5, 'index', 'Admin'),
(2721, 5, 'add', 'Admin'),
(2722, 5, 'delete', 'Admin'),
(2723, 5, 'set_default', 'Admin'),
(2724, 5, 'set_effect', 'Admin'),
(2725, 5, 'index', 'MsgTemplate'),
(2726, 5, 'update', 'MsgTemplate'),
(2727, 5, 'load_tpl', 'MsgTemplate'),
(2728, 5, 'index', 'MailServer'),
(2729, 5, 'insert', 'MailServer'),
(2730, 5, 'update', 'MailServer'),
(2731, 5, 'foreverdelete', 'MailServer'),
(2732, 5, 'send_demo', 'MailServer'),
(2733, 5, 'set_effect', 'MailServer'),
(2734, 5, 'mail_index', 'PromoteMsg'),
(2735, 5, 'add_mail', 'PromoteMsg'),
(2736, 5, 'add_sms', 'PromoteMsg'),
(2737, 5, 'edit_mail', 'PromoteMsg'),
(2738, 5, 'edit_sms', 'PromoteMsg'),
(2739, 5, 'foreverdelete', 'PromoteMsg'),
(2740, 5, 'insert_mail', 'PromoteMsg'),
(2741, 5, 'insert_sms', 'PromoteMsg'),
(2742, 5, 'sms_index', 'PromoteMsg'),
(2743, 5, 'update_mail', 'PromoteMsg'),
(2744, 5, 'update_sms', 'PromoteMsg'),
(2745, 5, 'index', 'Sms'),
(2746, 5, 'insert', 'Sms'),
(2747, 5, 'update', 'Sms'),
(2748, 5, 'uninstall', 'Sms'),
(2749, 5, 'send_demo', 'Sms'),
(2750, 5, 'set_effect', 'Sms'),
(2751, 5, 'index', 'DealMsgList'),
(2752, 5, 'send', 'DealMsgList'),
(2753, 5, 'show_content', 'DealMsgList'),
(2754, 5, 'foreverdelete', 'DealMsgList'),
(2755, 5, 'index', 'PromoteMsgList'),
(2756, 5, 'foreverdelete', 'PromoteMsgList'),
(2757, 5, 'send', 'PromoteMsgList'),
(2758, 5, 'show_content', 'PromoteMsgList'),
(2759, 5, 'delete', 'Database'),
(2760, 5, 'dump', 'Database'),
(2761, 5, 'execute', 'Database'),
(2762, 5, 'index', 'Database'),
(2763, 5, 'restore', 'Database'),
(2764, 5, 'sql', 'Database'),
(2765, 5, 'index', 'Ecv'),
(2766, 5, 'export_csv', 'Ecv'),
(2767, 5, 'foreverdelete', 'Ecv'),
(2768, 5, 'clear_admin', 'Cache'),
(2769, 5, 'clear_data', 'Cache'),
(2770, 5, 'clear_image', 'Cache'),
(2771, 5, 'clear_parse_file', 'Cache'),
(2772, 5, 'index', 'Cache'),
(2773, 5, 'deleteImg', 'File'),
(2774, 5, 'do_upload', 'File'),
(2775, 5, 'do_upload_img', 'File');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%score_exchange_record`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%score_exchange_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员ID',
  `user_id` int(11) NOT NULL,
  `integral` int(11) NOT NULL COMMENT '兑换积分',
  `cash` decimal(20,2) NOT NULL COMMENT '兑现金额',
  `vip_id` int(11) NOT NULL COMMENT 'VIP等级ID',
  `exchange_date` date NOT NULL COMMENT '兑换日期',
  `number` int(11) DEFAULT NULL COMMENT '笔数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='积分兑换记录表' AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `%DB_PREFIX%score_exchange_record`
--

INSERT INTO `%DB_PREFIX%score_exchange_record` (`id`, `user_id`, `integral`, `cash`, `vip_id`, `exchange_date`, `number`) VALUES
(2, 440090, 1000, '7.00', 5, '2015-07-10', NULL),
(3, 440094, 1000, '6.50', 4, '2015-07-10', NULL),
(4, 440093, 1000, '6.00', 3, '2015-07-10', NULL),
(5, 440121, 1000, '5.50', 2, '2015-07-13', NULL),
(6, 440090, 1000, '7.00', 5, '2015-07-28', NULL),
(7, 440093, 1000, '6.50', 4, '2015-07-28', NULL),
(8, 440098, 1000, '6.00', 3, '2015-07-28', NULL),
(9, 440121, 1000, '5.50', 2, '2015-07-28', NULL),
(10, 440020, 10000, '55.00', 2, '2015-09-22', NULL),
(11, 440035, 5000, '27.50', 2, '2015-10-20', NULL),
(12, 440035, 50000, '275.00', 2, '2015-10-20', NULL),
(13, 440035, 450000, '2475.00', 2, '2015-10-20', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%sc_service`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%sc_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '会员ID',
  `vip_id` int(11) NOT NULL COMMENT 'VIP等级ID',
  `sc_name` varchar(100) NOT NULL COMMENT 'VIP 客服专员',
  `tel` decimal(20,0) NOT NULL COMMENT '电话',
  `qq` varchar(100) NOT NULL COMMENT 'QQ',
  `email` varchar(150) NOT NULL COMMENT '电子邮箱',
  `note` text NOT NULL COMMENT '备注',
  `is_delete` tinyint(1) NOT NULL COMMENT '删除标识',
  `is_effect` tinyint(1) NOT NULL COMMENT '有效性标识',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='专员客服表' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `%DB_PREFIX%sc_service`
--

INSERT INTO `%DB_PREFIX%sc_service` (`id`, `user_id`, `vip_id`, `sc_name`, `tel`, `qq`, `email`, `note`, `is_delete`, `is_effect`) VALUES
(1, 1260, 1, '专员一', '13959110311', '32447578', '151621715@qq.com', '', 0, 0),
(2, 1257, 1, '专员一', '13959110311', '32447578', '1516215@qq.com', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%security`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%security` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL COMMENT '操作员',
  `amount` decimal(20,4) NOT NULL COMMENT '金额',
  `money` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT '余额',
  `optime` int(11) NOT NULL COMMENT '操作时间',
  `memo` text NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `%DB_PREFIX%security`
--

INSERT INTO `%DB_PREFIX%security` (`id`, `admin_id`, `amount`, `money`, `optime`, `memo`) VALUES
(1, 3, '4354545.0000', '4354545.0000', 1430962400, '');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%session`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%session` (
  `session_id` varchar(255) NOT NULL,
  `session_data` text NOT NULL,
  `session_time` int(11) NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%site_money_log`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%site_money_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '关联用户',
  `money` decimal(20,2) NOT NULL COMMENT '操作金额',
  `memo` text NOT NULL COMMENT '操作备注',
  `type` tinyint(2) NOT NULL COMMENT '7提前回收，9提现手续费，10借款管理费，12逾期管理费，13人工充值，14借款服务费，17债权转让管理费，18开户奖励，20投标管理费，22兑换，23邀请返利，24投标返利，25签到成功',
  `create_time` int(11) NOT NULL COMMENT '操作时间',
  `create_time_ymd` date NOT NULL COMMENT '操作时间 ymd',
  `create_time_ym` int(6) NOT NULL COMMENT '操作时间 ym',
  `create_time_y` int(4) NOT NULL COMMENT '操作时间 y',
  PRIMARY KEY (`id`),
  KEY `idx0` (`user_id`,`type`,`create_time`),
  KEY `idx1` (`user_id`,`type`,`create_time_ymd`),
  KEY `idx2` (`user_id`,`type`),
  KEY `create_time_ymd` (`create_time_ymd`),
  KEY `idx3` (`type`,`create_time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='网站收益日志表' AUTO_INCREMENT=2204 ;

--
-- 转存表中的数据 `%DB_PREFIX%site_money_log`
--

INSERT INTO `%DB_PREFIX%site_money_log` (`id`, `user_id`, `money`, `memo`, `type`, `create_time`, `create_time_ymd`, `create_time_ym`, `create_time_y`) VALUES
(2203, 1, '-1000.00', '在2016-02-14 23:22:29注册成功', 18, 1455434549, '2016-02-14', 201602, 2016);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%sms`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `server_url` text NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `config` text NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `%DB_PREFIX%sms`
--

INSERT INTO `%DB_PREFIX%sms` (`id`, `name`, `description`, `class_name`, `server_url`, `user_name`, `password`, `config`, `is_effect`) VALUES
(8, '企信通短信平台', '', 'QXT', 'http://221.179.180.158:9000/QxtSms/QxtFirewall', '', '', 'a:1:{s:11:"ContentType";s:1:"8";}', 0);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%topic`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL COMMENT 'focus关注，1',
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `l_user_id` int(11) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `is_effect` (`is_effect`) USING BTREE,
  KEY `ordery_sort` (`create_time`) USING BTREE,
  KEY `multi_key` (`is_effect`,`create_time`) USING BTREE,
  KEY `index_01` (`fav_id`,`user_id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=400 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%urls`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%urls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `short_name` varchar(255) DEFAULT NULL COMMENT '缩略名',
  `user_pwd` varchar(255) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `login_ip` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `email` varchar(255) NOT NULL,
  `idno` varchar(20) NOT NULL,
  `idcardpassed` tinyint(1) NOT NULL,
  `idcardpassed_time` int(11) NOT NULL,
  `real_name` varchar(50) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `mobilepassed` tinyint(1) NOT NULL,
  `score` int(11) NOT NULL,
  `money` decimal(20,2) NOT NULL DEFAULT '0.00',
  `quota` decimal(20,0) NOT NULL DEFAULT '0',
  `lock_money` decimal(20,2) NOT NULL COMMENT '冻结资金',
  `verify` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL COMMENT '登录用的标识码',
  `pid` int(11) NOT NULL,
  `referer_memo` varchar(255) NOT NULL COMMENT '邀请备注',
  `login_time` int(11) NOT NULL,
  `referral_count` int(11) NOT NULL,
  `password_verify` varchar(255) NOT NULL,
  `integrate_id` int(11) NOT NULL,
  `sina_id` varchar(255) NOT NULL,
  `renren_id` int(11) NOT NULL,
  `kaixin_id` int(11) NOT NULL,
  `sohu_id` int(11) NOT NULL,
  `bind_verify` varchar(255) NOT NULL,
  `verify_create_time` int(11) NOT NULL,
  `tencent_id` varchar(255) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `login_pay_time` int(11) NOT NULL,
  `focus_count` int(11) NOT NULL COMMENT '关注别人的数量',
  `focused_count` int(11) NOT NULL COMMENT '粉丝数',
  `n_province_id` int(11) NOT NULL,
  `n_city_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `sex` tinyint(1) NOT NULL DEFAULT '-1',
  `step` tinyint(1) NOT NULL,
  `byear` int(4) NOT NULL,
  `bmonth` int(2) NOT NULL,
  `bday` int(2) NOT NULL,
  `graduation` varchar(15) NOT NULL,
  `graduatedyear` int(5) NOT NULL,
  `university` varchar(100) NOT NULL,
  `edu_validcode` varchar(20) NOT NULL,
  `has_send_video` tinyint(1) NOT NULL,
  `marriage` varchar(15) NOT NULL,
  `haschild` tinyint(1) NOT NULL,
  `hashouse` tinyint(1) NOT NULL,
  `houseloan` tinyint(1) NOT NULL,
  `hascar` tinyint(1) NOT NULL,
  `carloan` tinyint(4) NOT NULL,
  `car_brand` varchar(50) NOT NULL,
  `car_year` int(4) NOT NULL,
  `car_number` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `postcode` varchar(20) NOT NULL,
  `locate_time` int(11) NOT NULL DEFAULT '0' COMMENT '用户最后登陆时间',
  `xpoint` float(10,6) NOT NULL DEFAULT '0.000000' COMMENT '用户最后登陆x座标',
  `ypoint` float(10,6) NOT NULL DEFAULT '0.000000' COMMENT '用户最后登陆y座标',
  `topic_count` int(11) NOT NULL,
  `fav_count` int(11) NOT NULL,
  `faved_count` int(11) NOT NULL,
  `insite_count` int(11) NOT NULL,
  `outsite_count` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `point` int(11) NOT NULL,
  `sina_app_key` varchar(255) NOT NULL,
  `sina_app_secret` varchar(255) NOT NULL,
  `is_syn_sina` varchar(255) NOT NULL,
  `tencent_app_key` varchar(255) NOT NULL,
  `tencent_app_secret` varchar(255) NOT NULL,
  `is_syn_tencent` tinyint(1) NOT NULL,
  `t_access_token` varchar(250) NOT NULL,
  `t_openkey` varchar(250) NOT NULL,
  `t_openid` varchar(250) NOT NULL,
  `sina_token` varchar(255) NOT NULL,
  `is_borrow_out` tinyint(1) NOT NULL,
  `is_borrow_int` tinyint(1) NOT NULL,
  `creditpassed` tinyint(1) NOT NULL,
  `creditpassed_time` int(11) NOT NULL,
  `workpassed` tinyint(1) NOT NULL,
  `workpassed_time` int(11) NOT NULL,
  `incomepassed` tinyint(1) NOT NULL,
  `incomepassed_time` int(11) NOT NULL,
  `housepassed` tinyint(1) NOT NULL,
  `housepassed_time` int(11) NOT NULL,
  `carpassed` tinyint(1) NOT NULL,
  `carpassed_time` int(11) NOT NULL,
  `marrypassed` tinyint(1) NOT NULL,
  `marrypassed_time` int(11) NOT NULL,
  `edupassed` tinyint(1) NOT NULL,
  `edupassed_time` int(11) NOT NULL,
  `skillpassed` tinyint(1) NOT NULL,
  `skillpassed_time` int(11) NOT NULL,
  `videopassed` tinyint(1) NOT NULL,
  `videopassed_time` int(11) NOT NULL,
  `mobiletruepassed` tinyint(1) NOT NULL,
  `mobiletruepassed_time` int(11) NOT NULL,
  `residencepassed` tinyint(1) NOT NULL,
  `residencepassed_time` int(11) NOT NULL,
  `alipay_id` varchar(255) NOT NULL,
  `qq_id` varchar(255) NOT NULL,
  `taobao_id` varchar(255) NOT NULL,
  `info_down` varchar(255) NOT NULL,
  `sealpassed` tinyint(1) NOT NULL,
  `paypassword` varchar(50) NOT NULL DEFAULT '' COMMENT '支付密码',
  `apns_code` varchar(255) DEFAULT NULL COMMENT '推送设备号',
  `ips_acct_no` varchar(30) DEFAULT NULL COMMENT 'pIpsAcctNo 30 IPS托管平台账 户号',
  `emailpassed` tinyint(1) NOT NULL,
  `tmp_email` varchar(255) NOT NULL,
  `view_info` text NOT NULL,
  `referral_rate` decimal(10,4) NOT NULL COMMENT '返利抽成比',
  `user_type` tinyint(4) NOT NULL COMMENT '用户类型 0普通用户 1 企业用户',
  `create_date` date NOT NULL COMMENT '记录注册日期，方便统计使用',
  `vip_id` int(11) NOT NULL COMMENT 'VIP等级id',
  `vip_state` tinyint(1) NOT NULL COMMENT 'VIP状态 0关闭 1开启',
  `nmc_amount` decimal(20,2) NOT NULL COMMENT '不可提现金额',
  `register_ip` varchar(50) NOT NULL COMMENT '注册IP',
  `admin_id` int(11) NOT NULL COMMENT '所属管理员',
  `customer_id` int(11) NOT NULL COMMENT '所属客服',
  `is_black` tinyint(1) NOT NULL COMMENT '是否黑名单',
  `brief` text COMMENT '担保方介绍',
  `header` text COMMENT '头部',
  `company_brief` text,
  `history` text COMMENT '发展史',
  `content` text COMMENT '内容',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `acct_type` int(11) DEFAULT NULL COMMENT '担保账户类型(0:机构，1:个人)',
  `ips_mer_code` varchar(10) DEFAULT NULL COMMENT '由IPS颁发的商户号 acct_type = 0',
  `u_year` varchar(255) DEFAULT NULL COMMENT '入学年份',
  `u_special` varchar(255) DEFAULT NULL COMMENT '专业',
  `u_school` varchar(255) DEFAULT NULL COMMENT '学校',
  `u_alipay` varchar(255) DEFAULT NULL COMMENT '支付宝账号',
  `enterpriseName` varchar(50) NOT NULL COMMENT '企业名称',
  `bankLicense` varchar(50) NOT NULL COMMENT '开户银行许可证',
  `orgNo` varchar(50) NOT NULL COMMENT '组织机构代码',
  `businessLicense` varchar(50) NOT NULL COMMENT '营业执照编号',
  `taxNo` varchar(20) NOT NULL COMMENT '税务登记号',
  `email_encrypt` varbinary(255) NOT NULL COMMENT '邮箱',
  `real_name_encrypt` varbinary(255) NOT NULL COMMENT '真实姓名',
  `idno_encrypt` varbinary(255) NOT NULL COMMENT '身份证号',
  `mobile_encrypt` varbinary(255) NOT NULL COMMENT '手机号',
  `money_encrypt` varbinary(255) NOT NULL COMMENT '账户余额',
  `wx_openid` varchar(255) NOT NULL COMMENT '微信openid',
  `total_invite_borrow_money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '累计被邀请人员的借款金额',
  `total_invite_invest_money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '累计被邀请人员的投资金额',
  `vip_end_time` int(11) NOT NULL COMMENT 'VIP结束时间',
  `build_count` int(11) NOT NULL COMMENT '发起的项目数',
  `support_count` int(11) NOT NULL COMMENT '支持的项目数',
  `mortgage_money` decimal(20,2) NOT NULL COMMENT '理财冻结资金',
  `cust_key` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `access_tokens` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unk_user_name` (`user_name`) USING BTREE,
  KEY `idx_u_001` (`create_date`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `%DB_PREFIX%user`
--

INSERT INTO `%DB_PREFIX%user` (`id`, `user_name`, `short_name`, `user_pwd`, `create_time`, `update_time`, `login_ip`, `group_id`, `is_effect`, `is_delete`, `email`, `idno`, `idcardpassed`, `idcardpassed_time`, `real_name`, `mobile`, `mobilepassed`, `score`, `money`, `quota`, `lock_money`, `verify`, `code`, `pid`, `referer_memo`, `login_time`, `referral_count`, `password_verify`, `integrate_id`, `sina_id`, `renren_id`, `kaixin_id`, `sohu_id`, `bind_verify`, `verify_create_time`, `tencent_id`, `referer`, `login_pay_time`, `focus_count`, `focused_count`, `n_province_id`, `n_city_id`, `province_id`, `city_id`, `sex`, `step`, `byear`, `bmonth`, `bday`, `graduation`, `graduatedyear`, `university`, `edu_validcode`, `has_send_video`, `marriage`, `haschild`, `hashouse`, `houseloan`, `hascar`, `carloan`, `car_brand`, `car_year`, `car_number`, `address`, `phone`, `postcode`, `locate_time`, `xpoint`, `ypoint`, `topic_count`, `fav_count`, `faved_count`, `insite_count`, `outsite_count`, `level_id`, `point`, `sina_app_key`, `sina_app_secret`, `is_syn_sina`, `tencent_app_key`, `tencent_app_secret`, `is_syn_tencent`, `t_access_token`, `t_openkey`, `t_openid`, `sina_token`, `is_borrow_out`, `is_borrow_int`, `creditpassed`, `creditpassed_time`, `workpassed`, `workpassed_time`, `incomepassed`, `incomepassed_time`, `housepassed`, `housepassed_time`, `carpassed`, `carpassed_time`, `marrypassed`, `marrypassed_time`, `edupassed`, `edupassed_time`, `skillpassed`, `skillpassed_time`, `videopassed`, `videopassed_time`, `mobiletruepassed`, `mobiletruepassed_time`, `residencepassed`, `residencepassed_time`, `alipay_id`, `qq_id`, `taobao_id`, `info_down`, `sealpassed`, `paypassword`, `apns_code`, `ips_acct_no`, `emailpassed`, `tmp_email`, `view_info`, `referral_rate`, `user_type`, `create_date`, `vip_id`, `vip_state`, `nmc_amount`, `register_ip`, `admin_id`, `customer_id`, `is_black`, `brief`, `header`, `company_brief`, `history`, `content`, `sort`, `acct_type`, `ips_mer_code`, `u_year`, `u_special`, `u_school`, `u_alipay`, `enterpriseName`, `bankLicense`, `orgNo`, `businessLicense`, `taxNo`, `email_encrypt`, `real_name_encrypt`, `idno_encrypt`, `mobile_encrypt`, `money_encrypt`, `wx_openid`, `total_invite_borrow_money`, `total_invite_invest_money`, `vip_end_time`, `build_count`, `support_count`, `mortgage_money`, `cust_key`, `cust_id`, `access_tokens`) VALUES
(1, 'MS00', NULL, '164b0f16bbf71c80aa6f18df75975b5e', 1455434549, 1455434563, '127.0.0.1', 0, 1, 0, '', '441702198710250000', 0, 0, 'MS00', '13788888888', 1, 100, '0.00', '0', '0.00', '', '', 0, '', 1455434549, 0, '', 0, '', 0, 0, 0, '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1987, 10, 25, '', 0, '', '', 0, '', 0, 0, 0, 0, 0, '', 0, '', '', '', '', 0, 0.000000, 0.000000, 0, 0, 0, 0, 0, 1, 20, '', '', '', '', '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, '164b0f16bbf71c80aa6f18df75975b5e', NULL, NULL, 0, '', '', '0.0000', 0, '2016-02-14', 0, 0, '0.00', '127.0.0.1', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '�K�3M[���|%ɢ��', '�^"G�х]�3�Q�6���ֱ��½��_sD', '��� 9x���r��''��', '2)-q�Tq?��? �', '', '0.00', '0.00', 0, 0, 0, '0.00', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_active_log`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_active_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `point` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `money` decimal(11,4) NOT NULL COMMENT '钱',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_address`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `name` varchar(50) NOT NULL COMMENT '收货人姓名',
  `address` varchar(255) NOT NULL COMMENT '用户地址',
  `phone` varchar(20) NOT NULL COMMENT '用户电话',
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否默认地址',
  `provinces_cities` varchar(100) NOT NULL COMMENT '省市',
  `zip_code` varchar(20) NOT NULL COMMENT '邮编',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_auth`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `a_name` varchar(255) NOT NULL,
  `rel_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_autobid`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_autobid` (
  `user_id` int(11) NOT NULL,
  `fixed_amount` decimal(20,0) NOT NULL,
  `min_rate` decimal(20,0) NOT NULL,
  `max_rate` decimal(20,0) NOT NULL,
  `min_period` int(11) NOT NULL,
  `max_period` int(11) NOT NULL,
  `min_level` int(11) NOT NULL,
  `max_level` int(11) NOT NULL,
  `retain_amount` decimal(20,0) NOT NULL,
  `is_effect` tinyint(4) NOT NULL,
  `last_bid_time` int(11) NOT NULL COMMENT '最后一次投标时间',
  `deal_cates` text NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_bank`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `bankcard` varchar(30) NOT NULL,
  `real_name` varchar(20) NOT NULL,
  `region_lv1` int(11) NOT NULL,
  `region_lv2` int(11) NOT NULL,
  `region_lv3` int(11) NOT NULL,
  `region_lv4` int(11) NOT NULL,
  `bankzone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `bank_id` (`bank_id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=122 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_carry`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_carry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `money` decimal(20,2) NOT NULL COMMENT '提现金额',
  `fee` decimal(20,2) NOT NULL COMMENT '手续费',
  `bank_id` int(11) NOT NULL,
  `bankcard` varchar(30) NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0待审核，1已付款，2未通过，3待付款',
  `update_time` int(11) NOT NULL,
  `msg` text NOT NULL,
  `desc` text NOT NULL,
  `real_name` varchar(30) NOT NULL,
  `bankzone` varchar(120) NOT NULL,
  `region_lv1` int(11) NOT NULL,
  `region_lv2` int(11) NOT NULL,
  `region_lv3` int(11) NOT NULL,
  `region_lv4` int(11) NOT NULL,
  `create_date` date NOT NULL COMMENT '记录提现提交日期，方便统计使用',
  `pingzheng` varchar(255) NOT NULL COMMENT '打款凭证',
  PRIMARY KEY (`id`),
  KEY `idx_uc_001` (`create_date`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=114 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_carry_config`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_carry_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '简称',
  `min_price` decimal(20,0) NOT NULL COMMENT '最低额度',
  `max_price` decimal(20,0) NOT NULL COMMENT '最高额度',
  `fee` decimal(20,2) NOT NULL COMMENT '费率',
  `fee_type` tinyint(1) NOT NULL COMMENT '费率类型 0 是固定值 1是百分比',
  `vip_id` int(11) NOT NULL COMMENT 'VIP等级     0默认配置  否则就是对应VIP等级设置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- 转存表中的数据 `%DB_PREFIX%user_carry_config`
--

INSERT INTO `%DB_PREFIX%user_carry_config` (`id`, `name`, `min_price`, `max_price`, `fee`, `fee_type`, `vip_id`) VALUES
(32, '5万以内', '10001', '50000', '20.00', 0, 0),
(31, '1万以内', '0', '10000', '10.00', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_company`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_company` (
  `user_id` int(11) NOT NULL,
  `company_name` varchar(150) NOT NULL COMMENT '公司名称',
  `contact` varchar(50) NOT NULL DEFAULT '' COMMENT '法人代表',
  `officetype` varchar(50) NOT NULL COMMENT '公司类别',
  `officedomain` varchar(50) NOT NULL COMMENT '公司行业',
  `officecale` varchar(50) NOT NULL COMMENT '公司规模',
  `register_capital` varchar(50) NOT NULL COMMENT '注册资金',
  `asset_value` varchar(100) NOT NULL COMMENT '资产净值',
  `officeaddress` varchar(255) NOT NULL COMMENT '公司地址',
  `description` text NOT NULL COMMENT '公司简介',
  `bankLicense` varchar(50) NOT NULL COMMENT '开户银行许可证',
  `orgNo` varchar(50) NOT NULL COMMENT '组织机构代码',
  `businessLicense` varchar(50) NOT NULL COMMENT '营业执照编号',
  `taxNo` varchar(20) NOT NULL COMMENT '税务登记号'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公司信息标';

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_consignee`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_consignee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `province` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `consignee` varchar(255) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为默认地址',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='//收件人' AUTO_INCREMENT=30 ;

--
-- 转存表中的数据 `%DB_PREFIX%user_consignee`
--

INSERT INTO `%DB_PREFIX%user_consignee` (`id`, `user_id`, `province`, `city`, `address`, `mobile`, `zip`, `consignee`, `is_default`) VALUES
(22, 440035, '福建', '福州', '台江区八一七中路', '13524161613', '350600', '小小', 0),
(23, 440090, '广西', '崇左', '海景区', '15026164622', '256120', '教教', 0),
(24, 440093, '福建', '宁德', '焦阳区', '13562561620', '350000', '嗨嗨', 0),
(25, 440115, '安徽', '安庆', '换新', '13565420120', '250001', '哈哈', 0),
(26, 440119, '广东', '佛山', '接到', '15016125113', '251010', '嘻嘻', 0),
(27, 440121, '福建', '南平', '建瓯', '1352156613', '350000', '下线', 0),
(28, 440123, '福建', '南平', '建瓯', '1502315', '350000', '多多', 0),
(29, 440119, '福建', '宁德', '郊区', '135000', '350000', '换换', 0);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_credit_file`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_credit_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `file` text NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0未处理，1已处理',
  `passed` tinyint(1) NOT NULL COMMENT '是否认证通过',
  `passed_time` int(1) NOT NULL COMMENT '认证日期',
  `msg` text NOT NULL COMMENT '失败原因',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=390 ;

--
-- 转存表中的数据 `%DB_PREFIX%user_credit_file`
--

INSERT INTO `%DB_PREFIX%user_credit_file` (`id`, `user_id`, `type`, `file`, `create_time`, `status`, `passed`, `passed_time`, `msg`) VALUES
(389, 1, 'credit_identificationscanning', 'a:1:{i:0;s:49:"/public/attachment/201602/14/23/56c09c0598038.png";}', 1455434630, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_credit_type`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_credit_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) NOT NULL COMMENT '类型名称',
  `type` varchar(100) NOT NULL COMMENT '审核类型',
  `icon` varchar(255) NOT NULL COMMENT '图标',
  `brief` text NOT NULL COMMENT '简介',
  `description` text NOT NULL COMMENT '认证说明',
  `role` varchar(255) NOT NULL COMMENT '认证条件',
  `file_tip` varchar(255) NOT NULL COMMENT '上传框说明',
  `file_count` int(11) NOT NULL,
  `expire` int(11) NOT NULL COMMENT '过期时间',
  `status` tinyint(1) NOT NULL COMMENT '0系统，1管理员新加',
  `is_effect` tinyint(1) NOT NULL COMMENT '0无效，1有效',
  `sort` int(11) NOT NULL COMMENT '排序',
  `point` int(11) NOT NULL COMMENT '信用积分',
  `must` tinyint(1) NOT NULL COMMENT '是否必须',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='会员认证审核资料' AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `%DB_PREFIX%user_credit_type`
--

INSERT INTO `%DB_PREFIX%user_credit_type` (`id`, `type_name`, `type`, `icon`, `brief`, `description`, `role`, `file_tip`, `file_count`, `expire`, `status`, `is_effect`, `sort`, `point`, `must`) VALUES
(1, '实名认证', 'credit_identificationscanning', './public/credit/1.jpg', '您上传的身份证扫描件需和您绑定的身份证一致，否则将无法通过认证。', '<div class="lh22">\r\n	1、请您上传您<span class="f_red">本人身份证原件</span>的照片。如果您持有第二代身份证，请上传正、反两面照片。\r\n</div>\r\n<div class="lh22">\r\n	如果您持有第一代身份证，仅需上传正面照片。\r\n</div>\r\n<div class="lh22">\r\n	2、请确认您上传的资料是清晰的、未经修改的数码照片（不可以是扫描图片）。\r\n</div>\r\n<div class="lh22">\r\n	每张图片的尺寸<span class="f_red">不大于1.5M</span>。\r\n</div>', '', '', 2, 0, 1, 1, 1, 10, 1),
(2, '工作认证', 'credit_contact', './public/credit/2.jpg', '您的工作状况是评估您信用状况的主要依据。请您填写真实可靠的工作信息。', '上传资料说明：<br />\r\n如果您满足以下 1种以上的身份，例如：您有稳定工作，且兼职开淘宝店。<br />\r\n我们建议您同时上传两份资料，这将有助于提高您的借款额度和信用等级 <br />\r\n<br />\r\n<table class="f12" cellspacing="1" style="background:#ccc;">\r\n	<tbody>\r\n		<tr>\r\n			<td class="pl10 pr10 wb">\r\n				<h4>\r\n					工薪阶层：\r\n				</h4>\r\n请上传以下<span class="f_red">至少两项</span>资料的照片或扫描件：\r\n			</td>\r\n			<td class="pl10 pr10 wb">\r\n				<div class="lh22">\r\n					a) 劳动合同。\r\n				</div>\r\n				<div class="lh22">\r\n					b) 加盖单位公章的在职证明。\r\n				</div>\r\n				<div class="lh22">\r\n					c) 带有姓名及照片的工作证。\r\n				</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class="pl10 pr10 wb">\r\n				<h4>\r\n					私营企业主:\r\n				</h4>\r\n请上传以下<span class="f_red">全部三项</span>资料的照片或扫描件：\r\n			</td>\r\n			<td class="pl10 pr10 wb">\r\n				<div class="lh22">\r\n					a) 企业的营业执照。\r\n				</div>\r\n				<div class="lh22">\r\n					b) 企业的税务登记证。\r\n				</div>\r\n				<div class="lh22">\r\n					c) 店面照片（照片内需能看见营业执照）。\r\n				</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class="pl10 pr10 wb">\r\n				<h4>\r\n					网商：\r\n				</h4>\r\n请上传以下资料的照片或扫描件：\r\n			</td>\r\n			<td class="pl10 pr10 wb">\r\n				<div class="lh22">\r\n					a) 请上传网店主页和后台的截屏(需要看清网址）。\r\n				</div>\r\n				<div class="lh22">\r\n					b) 支付宝（或其他第三方支付工具）的至少3张最近3个月的商户版成功交易记录的截屏图片。\r\n				</div>\r\n				<div class="lh22">\r\n					c) 营业执照（如果有的话提供，不是必须的）。\r\n				</div>\r\n				<div class="lh22">\r\n					d) 备注：如果是淘宝专职卖家，店铺等级必须为3钻以上（含3钻）。\r\n				</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '工薪阶层需入职满6个月，私营企业主和淘宝商家需经营满一年', '', 4, 6, 1, 1, 2, 10, 1),
(3, '信用报告', 'credit_credit', './public/credit/3.jpg', '个人信用报告是由中国人民银行出具，全面记录个人信用活动，反映个人信用基本状况的文件。本报告是p2p信贷了解您信用状况的一个重要参考资料。 您信用报告内体现的信用记录，和信用卡额度等数据，将在您发布借款时经网站工作人员整理，在充分保护您隐私的前提下披露给借出者，作为借出者投标的依据。', '<div>\r\n	<div class="lh22">\r\n		1、个人信用报告需<span class="f_red">15日内</span>开具。\r\n	</div>\r\n	<div class="lh22">\r\n		2、上传您的<span class="f_red">个人信用报告原件</span>的照片，每页信用报告需独立照相，并将整份信用报告按页码先后顺序完整上传。 <br />\r\n<a href="#creditDiv" id="creditGuy" class="f_blue">如何办理个人信用报告？</a> <br />\r\n<a href="http://www.pbccrc.org.cn/zxzx/lxfs/lxfs.shtml" target="_blank" class="f_blue">全国各地征信中心联系方式查询</a> \r\n	</div>\r\n	<div class="lh22">\r\n		3、请确认您上传的资料是清晰的、未经修改的数码照片或扫描图片。\r\n	</div>\r\n</div>', '', '上传央行信用报告', 2, 6, 1, 1, 3, 10, 1),
(4, '收入认证', 'credit_incomeduty', './public/credit/4.jpg', '您的银行流水单以及完税证明，是证明您收入情况的主要文件，也是评估您还款能力的主要依据之一。', '上传资料说明：<br />\r\n如果您满意以下 1种以上的身份，例如：您有稳定工作，且兼职开淘宝店。 <br />\r\n我们建议您同时上传两份资料，这将有助于提高您的借款额度和信用等级。 <br />\r\n<table class="f12" cellspacing="1" style="background:#ccc;">\r\n	<tbody>\r\n		<tr>\r\n			<td class="pl10 pr10 wb">\r\n				<h4>\r\n					工薪阶层：\r\n				</h4>\r\n请上传右侧<span class="f_red">一项或多项</span>资料：\r\n			</td>\r\n			<td class="wb">\r\n				<div class="lh22" style="padding:0 10px;">\r\n					a) 最近连续六个月工资卡银行流水单的照片或扫描件，须有银行盖章，或工资卡网银的电脑截屏。<br />\r\n<a href="#bankDiv" id="bankGuy" class="f_blue">如何办理银行流水单？</a> \r\n				</div>\r\n				<div class="lh22" style="padding:0 10px;">\r\n					b) 最近连续六个月的个人所得税完税凭证。<br />\r\n<a href="#dutyDiv" id="dutyGuy" class="f_blue">如何办理个人所得税完税证明？</a> \r\n				</div>\r\n				<div class="lh22" style="padding:0 10px;">\r\n					c) 社保卡正反面原件的照片以及最近连续六个月缴费记录。\r\n				</div>\r\n				<div class="lh22" style="padding:0 10px;">\r\n					d) 如果工资用现金形式发放，请提供近半年的常用银行储蓄账户流水单，须有银行盖章，或工资卡网银的电脑截屏。。\r\n				</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class="pl10 pr10 wb">\r\n				<h4>\r\n					私营企业主:\r\n				</h4>\r\n请上传右侧<span class="f_red">一项或多项</span>资料的照片或扫描件：\r\n			</td>\r\n			<td class="wb">\r\n				<div class="lh22" style="padding:0 10px;">\r\n					a) 最近连续六个月个人银行卡流水单，须有银行盖章，或网银的电脑截屏。<br />\r\n<a href="#bankDiv" id="bankGuy2" class="f_blue">如何办理银行流水单？</a> \r\n				</div>\r\n				<div class="lh22" style="padding:0 10px;">\r\n					b) 最近连续六个月企业银行流水单，须有银行盖章；或近半年企业的纳税证明。\r\n				</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class="pl10 pr10 wb">\r\n				<h4>\r\n					网商：\r\n				</h4>\r\n请上传右侧<span class="f_red">全部两项</span>资料的照片或扫描件：\r\n			</td>\r\n			<td class="wb">\r\n				<div class="lh22" style="padding:0 10px;">\r\n					a) 最近连续六个月个人银行卡流水单，须有银行盖章，或网银的电脑截屏。<br />\r\n<a href="#bankDiv" id="bankGuy2" class="f_blue">如何办理银行流水单？</a> \r\n				</div>\r\n				<div class="lh22" style="padding:0 10px;">\r\n					b) 如果是淘宝商家请上传近半年淘宝店支付宝账户明细的网银截图。\r\n				</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '收入需较稳定，私营企业主及淘宝商家月均流水需在20000以上', '上传完税证明', 6, 6, 1, 1, 4, 10, 1),
(5, '电子印章', 'credit_seal', './public/credit/6.jpg', '电子印章将会在借款协议那边使用。', '<div class="lh22">\r\n                        	电子印章认证必须为<span class="f_red">GIF</span>或者<span class="f_red">PNG</span>的<span class="f_red">背景透明</span>图片。\r\n                        </div>', '', '电子印章', 1, 0, 1, 1, 5, 2, 0),
(6, '房产认证', 'credit_house', './public/credit/15.jpg', '房产证明是证明借入者资产及还款能力的重要凭证,根据借款者提供的房产证明给与借入者一定的信用加分。', '1、 请上传以下任意一项或多项资料。\r\n<div class="pl15">\r\n	<div class="lh22">\r\n		a) <span class="f_red">购房合同以及发票。</span> \r\n	</div>\r\n	<div class="lh22">\r\n		b) <span class="f_red">银行按揭贷款合同。</span> \r\n	</div>\r\n	<div class="lh22">\r\n		c) <span class="f_red">房产局产调单及收据。</span> \r\n	</div>\r\n</div>\r\n2、 请确认您上传的资料是清晰的、未经修改的数码照片或<span class="f_red">彩色扫描</span>图片。 每张图片的尺寸<span class="f_red">不大于3M</span>。', '必须是商品房', '上传房产证明', 4, 0, 1, 1, 6, 3, 0),
(7, '购车认证', 'credit_car', './public/credit/12.jpg', '购车证明是证明借入者资产及还款能力的重要凭证之一，根据借入者提供的购车证明给与借入者一定的信用加分。', '<div class="lh22">\r\n	1、请上传您所购买<span class="f_red">车辆行驶证</span>原件的照片。\r\n</div>\r\n<div class="lh22">\r\n	2、请上传您和您购买车辆的<span class="f_red">合影（照片须露出车牌号码）</span>。\r\n</div>\r\n<div class="lh22">\r\n	3、请确认您上传的资料是清晰的、未经修改的数码照片或扫描图片。\r\n</div>', '', '上传汽车证明', 4, 0, 1, 1, 7, 3, 0),
(8, '学历认证', 'credit_graducation', './public/credit/10.jpg', '出者在选择借款列表投标时，借入者的学历也是一个重要的参考因素。为了让借出者更好、更快地相信您的学历是真实的，强烈建议您对学历进行在线验证。', '<div class="f14 f_red">一、2001年至今获得学历，需学历证书编号</div>\r\n<div class="pl15">\r\n<div class="lh22">\r\n	1、点击 <a href="http://www.chsi.com.cn/xlcx/" target="_blank" class="f_blue">网上学历查询</a>。\r\n</div>\r\n<div class="lh22">\r\n	2、选择“零散查询”。\r\n</div>\r\n<div class="lh22">\r\n	3、输入证书编号、查询码（通过手机短信获得，为12位学历查询码）、姓名、以及验证码进行查询。\r\n</div>\r\n<div class="lh22">\r\n	4、查询成功后，您将查获得《教育部学历证书电子注册备案表》。\r\n</div>\r\n<div class="lh22">\r\n	5、将该表<span class="f_red">右下角的12位在线验证码</span><a href="./public/images/xueli_1.jpg" target="_blank" class="f_blue">（见样本图01）</a>，输入下面的文本框。\r\n</div>\r\n<div class="lh22">\r\n	6、点击提交审核。\r\n</div>\r\n</div>\r\n<div class="f14 f_red">\r\n	二、1991年至今获得学历，无需学历证书编号\r\n</div>\r\n<div class="pl15">\r\n<div class="lh22">\r\n	1、点击 <a href="http://www.chsi.com.cn/xlcx/" target="_blank" class="f_blue">网上学历查询</a>。\r\n</div>\r\n<div class="lh22">\r\n	2、选择“本人查询”。\r\n</div>\r\n<div class="lh22">\r\n	3、注册学信网账号。\r\n</div>\r\n<div class="lh22">\r\n	4、登录学信网，点击“学历信息”。\r\n</div>\r\n<div class="lh22">\r\n	5、选择您的最高学历，并点击“申请验证报告”（申请过程中，您需通过手机短信获得12位学历查询码，此查询码与{function name="app_conf" v="SHOP_TITLE"}所需验证码不同）。\r\n</div>\r\n<div class="lh22">\r\n	6、申请成功后，您将获得<span class="f_red">12位在线验证码</span><a href="./public/images/xueli_2.jpg" target="_blank" class="f_blue">（见样本图02）</a> \r\n</div>\r\n<div class="lh22">\r\n	7、将12位在线验证码输入下面的文本框\r\n</div>\r\n<div class="lh22">\r\n	8、点击提交审核\r\n</div>\r\n</div>', '大专或以上学历（普通全日制）', '', 0, 0, 1, 1, 8, 10, 0),
(9, '技术职称认证', 'credit_titles', './public/credit/9.jpg', '技术职称是经专家评审、反映一个人专业技术水平并作为聘任专业技术职务依据的一种资格，不与工资挂钩，是考核借款人信用的评估因素之一，通过技术职称认证证明，您将获得一定的信用加分。', '<div class="lh22">\r\n	1、请上传您的技术职称证书原件照片。\r\n</div>\r\n<div class="lh22">\r\n	2、 请确认您上传的资料是清晰的、未经修改的数码照片或扫描图片。 每张图片的尺寸<span class="f_red">不大于1.5M</span>。\r\n</div>', '国家承认的二级及以上等级证书。例如律师证、会计证、工程师证等', '上传技术职称认证', 2, 0, 1, 1, 9, 2, 0),
(10, '视频认证', 'credit_videoauth', './public/credit/8.jpg', '什么是视频认证？只有通过视频认证您才能获得贷款，您只需要在视频认证页面上传您本人的视频，并提交，即可申请视频认证。您也可以选择与p2p信贷客服在线上进行视频认证。', '<div class="lh22">\r\n	1、视频录制要求：\r\n	<div>\r\n		（1）视频认证文件大小<span class="f_red">不得超过50M</span><br />\r\n（2）	请上传真实有效的本人的视频<br />\r\n（3）	视频文件格式可以是RMVB、WMV、mp4 、 AVI等类型的文件<br />\r\n（4）	视频认证必须图像清晰，声音清楚<br />\r\n（5）	视频认证必须衣冠整洁，禁止出现抽烟，赤裸等形象\r\n	</div>\r\n</div>\r\n<div class="lh22">\r\n	2、视频录制内容。请针对本次借款录制视频，视频中需包括以下内容：\r\n	<div>\r\n		<span class="b">（1）：首先，请朗读以下文字：</span>我是 ***，我在{function name="app_conf" v="SHOP_TITLE"}的用户名是***，我的身份证号是 ***********************，现在我正在做{function name="app_conf" v="SHOP_TITLE"}的视频确认。我在此做出以下承诺：我愿意接受{function name="app_conf" v="SHOP_TITLE"}的使用条款和借款协议；我提供给{function name="app_conf" v="SHOP_TITLE"}的信息及资料均是真实有效的；我愿意对我在{function name="app_conf" v="SHOP_TITLE"}上的行为承担全部法律责任；在我未能按时归还借款时，我同意{function name="app_conf" v="SHOP_TITLE"}采取法律诉讼、资料曝光等一切必要措施。\r\n	</div>\r\n	<div>\r\n		<span class="b">（2）：读完声明后，请您将身份证正面(有身份证号)对准摄像头，并保持5秒，需要保证画面中能同时看到您和您的身份证，并且身份证内容清晰可见。</span>\r\n	</div>\r\n</div>\r\n<div class="lh22">\r\n	3、视频提交办法：您可以选择下列方法之一进行视频认证的提交：\r\n	<div>\r\n		（1）您可以联系右侧的在线QQ客服进行视频文件的提交。\r\n	</div>\r\n	<div>\r\n		（2）您可以将视频文件发送至<a name="app_conf"></a>{function name="app_conf" v="REPLY_ADDRESS"}，请在邮件中注明您的{function name="app_conf" v="SHOP_TITLE"}用户名及真实姓名。\r\n	</div>\r\n	<div>\r\n		（3）当您通过上述两种方式之一提交过视频认证文件之后，请选择下面的选项并点击“提交审核”。\r\n	</div>\r\n</div>', '', '', 0, 0, 1, 1, 10, 2, 0),
(11, '手机实名认证', 'credit_mobilereceipt', './public/credit/7.jpg', '手机流水单是最近一段时间内的详细通话记录，是验证借入者真实性的重要凭证之一。您的手机详单不会以任何形式被泄露。', '<div class="div22">\r\n	1、请您上传您绑定的手机号码<span class="f_red">最近3个月的手机详单</span>原件的照片。如详单数量较多可分月打印并上传\r\n</div>\r\n<div class="lh22">\r\n	<span class="f_red">每月前5日部分</span>（每月详单均需清晰显示机主手机号码）。\r\n</div>\r\n<div class="lh22">\r\n	2、请确认您上传的资料是清晰的、未经修改的数码照片（不可以是扫描图片）。\r\n</div>\r\n<div class="lh22">\r\n	每张图片的尺寸<span class="f_red">不大于1.5M</span>。\r\n</div>', '', '上传手机流水单', 4, 0, 1, 1, 11, 10, 0),
(12, '居住地认证', 'credit_residence', './public/credit/5.jpg', '居住地的稳定性，是考核借款人的主要评估因素之一，通过居住地证明，您将获得一定的信用加分。', '<div class="lh22">\r\n	1、请上传以下任何一项可证明<span class="f_red">现居住地址</span>的证明文件原件的照片。\r\n</div>\r\n<div class="lh22">\r\n	1) 用您姓名登记的水、电、气最近三期缴费单；\r\n</div>\r\n<div class="lh22">\r\n	2) 用您姓名登记固定电话最近三期缴费单；\r\n</div>\r\n<div class="lh22">\r\n	3) 您的信用卡最近两期的月结单；\r\n</div>\r\n<div class="lh22">\r\n	4) 您的自有房产证明；\r\n</div>\r\n<div class="lh22">\r\n	5) 您父母的房产证明，及证明您和父母关系的证明材料。\r\n</div>\r\n<div class="lh22">\r\n	2、请确认您上传的资料是清晰的、未经修改的数码照片（不可以是扫描图片）。\r\n</div>\r\n<div class="lh22">\r\n	每张图片的尺寸<span class="f_red">不大于1.5M</span>。\r\n</div>', '', '上传居住地证明', 4, 6, 1, 1, 12, 2, 0),
(13, '结婚认证', 'credit_marriage', './public/credit/11.jpg', '借入者的婚姻状况的稳定性，是考核借款人信用的评估因素之一，通过结婚认证，您将获得一定的信用加分。', '<div class="lh22">\r\n	1、请您上传以下资料\r\n</div>\r\n<div class="lh22">\r\n	1) 您<span class="f_red">结婚证书</span>原件的照片\r\n</div>\r\n<div class="lh22">\r\n	2) 您配偶的身份证原件的照片。如果持有第二代身份证，请上传正反两面\r\n</div>\r\n<div class="lh22">\r\n	照片。如果持有第一代身份证，仅需上传正面照片。\r\n</div>\r\n<div class="lh22">\r\n	3) 您和配偶的<span class="f_red">近照合影</span>一张\r\n</div>\r\n<div class="lh22">\r\n	2、请确认您上传的资料是清晰的、未经修改的数码照片或扫描图片。\r\n</div>', '您的配偶同意您将其个人资料提供给本站', '上传结婚证书', 4, 0, 1, 1, 13, 2, 0),
(14, '工龄认证', 'credit_seniority', '', '', '请上传工龄证明复印件', '带有劳动局盖章', '工龄证明复印件', 1, 12, 0, 1, 1, 5, 1);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_extend`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_extend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1661 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_field`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_name` varchar(255) NOT NULL,
  `field_show_name` varchar(255) NOT NULL,
  `input_type` tinyint(1) NOT NULL,
  `value_scope` text NOT NULL,
  `is_must` tinyint(1) NOT NULL,
  `is_show` tinyint(1) NOT NULL COMMENT '是否注册页面显示',
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unk_field_name` (`field_name`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_focus`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_focus` (
  `focus_user_id` int(11) NOT NULL COMMENT '关注人ID',
  `focused_user_id` int(11) NOT NULL COMMENT '被关注人ID',
  `focus_user_name` varchar(255) NOT NULL,
  `focused_user_name` varchar(255) NOT NULL,
  PRIMARY KEY (`focus_user_id`,`focused_user_id`),
  KEY `focus_user_id` (`focus_user_id`) USING BTREE,
  KEY `focused_user_id` (`focused_user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_frequented`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_frequented` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '员会ID',
  `title` varchar(50) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `xpoint` float(12,6) DEFAULT '0.000000' COMMENT 'longitude',
  `ypoint` float(12,6) DEFAULT '0.000000' COMMENT 'latitude',
  `latitude_top` float(12,6) DEFAULT NULL,
  `latitude_bottom` float(12,6) DEFAULT NULL,
  `longitude_left` float(12,6) DEFAULT NULL,
  `longitude_right` float(12,6) DEFAULT NULL,
  `zoom_level` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_group`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `score` int(11) NOT NULL,
  `discount` decimal(20,4) NOT NULL COMMENT '折扣',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_level`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '等级名称',
  `point` int(11) NOT NULL COMMENT '所需经验',
  `services_fee` varchar(20) NOT NULL COMMENT '服务费率',
  `enddate` varchar(255) NOT NULL COMMENT '贷款时间',
  `repaytime` text NOT NULL COMMENT '借款期限和借款利率【一行一配置】',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unk` (`point`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='会员等级表' AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `%DB_PREFIX%user_level`
--

INSERT INTO `%DB_PREFIX%user_level` (`id`, `name`, `point`, `services_fee`, `enddate`, `repaytime`) VALUES
(1, 'HR', 0, '5', '20', '3|1|10|24\n6|1|11|24\n9|1|12|24\n12|1|15|24\n18|1|15|24\n24|1|15|24\n28|0|15|24'),
(2, 'E', 100, '3', '7', '3|1|10|24\n6|1|11|24\n9|1|12|24\n12|1|15|24\n18|1|15|24\n24|1|15|24'),
(3, 'D', 110, '2.5', '7', '3|1|10|24\n6|1|11|24\n9|1|12|24\n12|1|15|24\n18|1|15|24\n24|1|15|24'),
(4, 'C', 120, '2', '7', '3|1|10|24\r\n6|1|11|24\r\n9|1|12|24\r\n12|1|15|24\r\n18|1|15|24\r\n24|1|15|24'),
(5, 'B', 130, '1.5', '7', '3|1|10|24\n6|1|11|24\n9|1|12|24\n12|1|15|24\n18|1|15|24\n24|1|15|24'),
(6, 'A', 145, '1', '7', '3|1|10|24\r\n6|1|11|24\r\n9|1|12|24\r\n12|1|15|24\r\n18|1|15|24\r\n24|1|15|24'),
(7, 'AA', 160, '0', '7', '3|0|10|15\n6|0|16|24\n3|1|10|24\n6|1|11|24\n9|1|12|24\n12|1|15|24\n18|1|15|24\n24|1|15|25');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_lock_money_log`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_lock_money_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '关联用户',
  `lock_money` decimal(20,2) NOT NULL COMMENT '操作金额',
  `account_lock_money` decimal(20,2) NOT NULL COMMENT '当前账户余额',
  `memo` text NOT NULL COMMENT '操作备注',
  `type` tinyint(2) NOT NULL COMMENT '0结存，1充值，2投标成功，8申请提现，9提现手续费，10借款管理费，18开户奖励，19流标还返',
  `create_time` int(11) NOT NULL COMMENT '操作时间',
  `create_time_ymd` date NOT NULL COMMENT '操作时间 ymd',
  `create_time_ym` int(6) NOT NULL COMMENT '操作时间 ym',
  `create_time_y` int(4) NOT NULL COMMENT '操作时间 y',
  PRIMARY KEY (`id`),
  KEY `idx0` (`user_id`,`type`,`create_time`),
  KEY `idx1` (`user_id`,`type`,`create_time_ymd`),
  KEY `idx2` (`user_id`,`type`),
  KEY `create_time_ymd` (`create_time_ymd`),
  KEY `idx3` (`type`,`create_time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='会员资金日志表' AUTO_INCREMENT=3165 ;

--
-- 转存表中的数据 `%DB_PREFIX%user_lock_money_log`
--

INSERT INTO `%DB_PREFIX%user_lock_money_log` (`id`, `user_id`, `lock_money`, `account_lock_money`, `memo`, `type`, `create_time`, `create_time_ymd`, `create_time_ym`, `create_time_y`) VALUES
(3164, 1, '0.00', '0.00', '在2016-02-14 23:22:29注册成功', 18, 1455434549, '2016-02-14', 201602, 2016);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_log`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_info` text NOT NULL,
  `log_time` int(11) NOT NULL,
  `log_admin_id` int(11) NOT NULL,
  `log_user_id` int(11) NOT NULL,
  `money` decimal(20,2) NOT NULL COMMENT '相关的钱',
  `score` int(11) NOT NULL,
  `point` int(11) NOT NULL,
  `quota` decimal(20,2) NOT NULL COMMENT '相关的额度',
  `lock_money` decimal(20,2) NOT NULL COMMENT '相关的冻结资金',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14468 ;

--
-- 转存表中的数据 `%DB_PREFIX%user_log`
--

INSERT INTO `%DB_PREFIX%user_log` (`id`, `log_info`, `log_time`, `log_admin_id`, `log_user_id`, `money`, `score`, `point`, `quota`, `lock_money`, `user_id`) VALUES
(14467, '在2016-02-14 23:22:29注册成功', 1455434549, 1, 0, '1000.00', 100, 20, '0.00', '0.00', 1);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_medal`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_medal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `medal_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `create_time` int(11) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `icon` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_money_log`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_money_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '关联用户',
  `money` decimal(20,2) NOT NULL COMMENT '操作金额',
  `account_money` decimal(20,2) NOT NULL COMMENT '当前账户余额',
  `memo` text NOT NULL COMMENT '操作备注',
  `type` tinyint(2) NOT NULL COMMENT '0结存，1充值，2投标成功，3招标成功，4偿还本息，5回收本息，6提前还款，7提前回收，8申请提现，9提现手续费，10借款管理费，11逾期罚息，12逾期管理费，13人工充值，14借款服务费，15出售债权，16购买债权，17债权转让管理费，18开户奖励，19流标还返，20投标管理费，21投标逾期收入，22兑换，23邀请返利，24投标返利，25签到成功',
  `create_time` int(11) NOT NULL COMMENT '操作时间',
  `create_time_ymd` date NOT NULL COMMENT '操作时间 ymd',
  `create_time_ym` int(6) NOT NULL COMMENT '操作时间 ym',
  `create_time_y` int(4) NOT NULL COMMENT '操作时间 y',
  `from_user_id` int(4) DEFAULT NULL COMMENT '来源ID(返佣)',
  `from_deal_id` int(4) DEFAULT NULL COMMENT '关联标(借款者)',
  `from_load_repay_id` int(4) DEFAULT NULL COMMENT '关联还款计划(投资者)',
  PRIMARY KEY (`id`),
  KEY `idx0` (`user_id`,`type`,`create_time`),
  KEY `idx1` (`user_id`,`type`,`create_time_ymd`),
  KEY `idx2` (`user_id`,`type`),
  KEY `create_time_ymd` (`create_time_ymd`),
  KEY `idx3` (`type`,`create_time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='会员资金日志表' AUTO_INCREMENT=9296 ;

--
-- 转存表中的数据 `%DB_PREFIX%user_money_log`
--

INSERT INTO `%DB_PREFIX%user_money_log` (`id`, `user_id`, `money`, `account_money`, `memo`, `type`, `create_time`, `create_time_ymd`, `create_time_ym`, `create_time_y`, `from_user_id`, `from_deal_id`, `from_load_repay_id`) VALUES
(9295, 1, '1000.00', '1000.00', '在2016-02-14 23:22:29注册成功', 18, 1455434549, '2016-02-14', 201602, 2016, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_nmc_money_log`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_nmc_money_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '关联用户',
  `money` decimal(20,2) NOT NULL COMMENT '操作金额',
  `account_money` decimal(20,2) NOT NULL COMMENT '当前账户余额',
  `memo` varchar(255) NOT NULL COMMENT '操作备注',
  `type` tinyint(2) NOT NULL COMMENT '18开户奖励，28投资奖励，29红包奖励',
  `create_time` int(11) NOT NULL COMMENT '操作时间',
  `create_time_ymd` date NOT NULL COMMENT '操作时间 ymd',
  `create_time_ym` int(11) NOT NULL COMMENT '操作时间 ym',
  `create_time_y` int(11) NOT NULL COMMENT '操作时间 y',
  PRIMARY KEY (`id`),
  KEY `idx0` (`user_id`,`type`,`create_time`),
  KEY `idx1` (`user_id`,`type`,`create_time_ymd`),
  KEY `idx2` (`user_id`,`type`),
  KEY `create_time_ymd` (`create_time_ymd`),
  KEY `idx3` (`type`,`create_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_point_log`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_point_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '关联用户',
  `point` decimal(20,2) NOT NULL COMMENT '操作信用积分',
  `account_point` decimal(20,2) NOT NULL COMMENT '当前账户信用积分',
  `memo` text NOT NULL COMMENT '操作备注',
  `type` tinyint(2) NOT NULL COMMENT '0结存，4偿还本息，5回收本息，6提前还款，7提前回收，8申请认证，11逾期还款，13人工充值，14借款服务费，18开户奖励，22兑换，23邀请返利，24投标返利，25签到成功',
  `create_time` int(11) NOT NULL COMMENT '操作时间',
  `create_time_ymd` date NOT NULL COMMENT '操作时间 ymd',
  `create_time_ym` int(6) NOT NULL COMMENT '操作时间 ym',
  `create_time_y` int(4) NOT NULL COMMENT '操作时间 y',
  PRIMARY KEY (`id`),
  KEY `idx0` (`user_id`,`type`,`create_time`),
  KEY `idx1` (`user_id`,`type`,`create_time_ymd`),
  KEY `idx2` (`user_id`,`type`),
  KEY `create_time_ymd` (`create_time_ymd`),
  KEY `idx3` (`type`,`create_time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='会员信用积分日志表' AUTO_INCREMENT=1852 ;

--
-- 转存表中的数据 `%DB_PREFIX%user_point_log`
--

INSERT INTO `%DB_PREFIX%user_point_log` (`id`, `user_id`, `point`, `account_point`, `memo`, `type`, `create_time`, `create_time_ymd`, `create_time_ym`, `create_time_y`) VALUES
(1851, 1, '20.00', '20.00', '在2016-02-14 23:22:29注册成功', 18, 1455434549, '2016-02-14', 201602, 2016);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_recharge_config`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_recharge_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '简称',
  `interface_class` varchar(50) NOT NULL COMMENT '接口类名',
  `fee` decimal(20,4) NOT NULL COMMENT '费率',
  `fee_type` tinyint(1) NOT NULL COMMENT '费率类型 0 是固定值 1是百分比',
  `vip_id` int(11) NOT NULL COMMENT 'VIP等级     0默认配置  否则就是对应VIP等级设置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_score_log`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_score_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '关联用户',
  `score` decimal(20,2) NOT NULL COMMENT '操作积分',
  `account_score` decimal(20,2) NOT NULL COMMENT '当前账户剩余积分',
  `memo` varchar(255) NOT NULL COMMENT '操作备注',
  `type` tinyint(2) NOT NULL COMMENT '0结存，1充值，2投标成功，3招标成功，4偿还本息，5回收本息，6提前还款，13人工充值，14借款服务费，15出售债权，16购买债权，17债权转让管理费，18开户奖励，19流标还返，20投标管理费，21投标逾期收入，22兑换，23邀请返利，24投标返利，25签到成功 ',
  `create_time` int(11) NOT NULL COMMENT '操作时间',
  `create_time_ymd` date NOT NULL COMMENT '����ʱ�� ymd',
  `create_time_ym` int(11) NOT NULL COMMENT 'ym',
  `create_time_y` int(11) NOT NULL COMMENT 'y',
  PRIMARY KEY (`id`),
  KEY `idx0` (`user_id`,`type`,`create_time`),
  KEY `idx1` (`user_id`,`type`,`create_time_ymd`),
  KEY `idx2` (`user_id`,`type`),
  KEY `create_time_ymd` (`create_time_ymd`),
  KEY `idx3` (`type`,`create_time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1400 ;

--
-- 转存表中的数据 `%DB_PREFIX%user_score_log`
--

INSERT INTO `%DB_PREFIX%user_score_log` (`id`, `user_id`, `score`, `account_score`, `memo`, `type`, `create_time`, `create_time_ymd`, `create_time_ym`, `create_time_y`) VALUES
(1399, 1, '100.00', '100.00', '在2016-02-14 23:22:29注册成功', 18, 1455434549, '2016-02-14', 201602, 2016);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_sign_log`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_sign_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `sign_date` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=237 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_sta`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_sta` (
  `user_id` int(11) NOT NULL,
  `dp_count` int(11) NOT NULL COMMENT '留言数',
  `borrow_amount` decimal(20,4) NOT NULL COMMENT '总的借款数',
  `repay_amount` decimal(20,4) NOT NULL COMMENT '已还本息',
  `need_repay_amount` decimal(20,4) NOT NULL COMMENT '待还本息',
  `need_manage_amount` decimal(20,4) NOT NULL COMMENT '待还管理费',
  `avg_rate` float(10,2) NOT NULL COMMENT '平均借款利率',
  `avg_borrow_amount` decimal(20,4) NOT NULL COMMENT '平均每笔借款金额',
  `deal_count` int(11) NOT NULL COMMENT '总借入笔数',
  `success_deal_count` int(11) NOT NULL COMMENT '成功借款',
  `repay_deal_count` int(11) NOT NULL COMMENT '还清笔数',
  `tq_repay_deal_count` int(11) NOT NULL COMMENT '提前还清',
  `zc_repay_deal_count` int(11) NOT NULL COMMENT '正常还清',
  `wh_repay_deal_count` int(11) NOT NULL COMMENT '未还清',
  `yuqi_count` int(11) NOT NULL COMMENT '逾期次数',
  `yz_yuqi_count` int(11) NOT NULL COMMENT '严重逾期次数',
  `yuqi_amount` decimal(20,4) NOT NULL COMMENT '逾期本息',
  `yuqi_impose` decimal(20,4) NOT NULL COMMENT '逾期费用',
  `load_earnings` decimal(20,4) NOT NULL COMMENT '已赚利息',
  `load_tq_impose` decimal(20,4) NOT NULL COMMENT '提前还款违约金',
  `load_yq_impose` decimal(20,4) NOT NULL COMMENT '逾期还款违约金',
  `load_avg_rate` float(10,2) NOT NULL COMMENT '借出加权平均收益率',
  `load_count` int(11) NOT NULL COMMENT '总借出笔数',
  `load_money` decimal(20,4) NOT NULL COMMENT '总的借出金额',
  `load_repay_money` decimal(20,4) NOT NULL COMMENT '已回收本息',
  `load_wait_repay_money` decimal(20,4) NOT NULL COMMENT '待回收本息',
  `reback_load_count` int(11) NOT NULL COMMENT '收回的借出笔数',
  `wait_reback_load_count` int(11) NOT NULL COMMENT '未收回的借出笔数',
  `load_wait_earnings` decimal(20,2) NOT NULL COMMENT '待回收利息',
  `bad_count` int(11) NOT NULL COMMENT '坏账数量',
  `rebate_money` int(11) NOT NULL COMMENT '�������',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `%DB_PREFIX%user_sta`
--

INSERT INTO `%DB_PREFIX%user_sta` (`user_id`, `dp_count`, `borrow_amount`, `repay_amount`, `need_repay_amount`, `need_manage_amount`, `avg_rate`, `avg_borrow_amount`, `deal_count`, `success_deal_count`, `repay_deal_count`, `tq_repay_deal_count`, `zc_repay_deal_count`, `wh_repay_deal_count`, `yuqi_count`, `yz_yuqi_count`, `yuqi_amount`, `yuqi_impose`, `load_earnings`, `load_tq_impose`, `load_yq_impose`, `load_avg_rate`, `load_count`, `load_money`, `load_repay_money`, `load_wait_repay_money`, `reback_load_count`, `wait_reback_load_count`, `load_wait_earnings`, `bad_count`, `rebate_money`) VALUES
(1, 0, '0.0000', '0.0000', '0.0000', '0.0000', 0.00, '0.0000', 0, 0, 0, 0, 0, 0, 0, 0, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', 0.00, 0, '0.0000', '0.0000', '0.0000', 0, 0, '0.00', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_work`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_work` (
  `user_id` int(11) NOT NULL,
  `office` varchar(100) NOT NULL,
  `jobtype` varchar(50) NOT NULL,
  `province_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `officetype` varchar(50) NOT NULL,
  `officedomain` varchar(50) NOT NULL,
  `officecale` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `salary` varchar(50) NOT NULL,
  `workyears` varchar(50) NOT NULL,
  `workphone` varchar(20) NOT NULL,
  `workemail` varchar(50) NOT NULL,
  `officeaddress` varchar(100) NOT NULL,
  `urgentcontact` varchar(20) NOT NULL,
  `urgentrelation` varchar(20) NOT NULL,
  `urgentmobile` varchar(20) NOT NULL,
  `urgentcontact2` varchar(20) NOT NULL,
  `urgentrelation2` varchar(20) NOT NULL,
  `urgentmobile2` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%user_x_y_point`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%user_x_y_point` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `xpoint` float(14,6) NOT NULL DEFAULT '0.000000',
  `ypoint` float(14,6) NOT NULL DEFAULT '0.000000',
  `locate_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%vip_buy_log`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%vip_buy_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vip_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vip_buytime` int(11) NOT NULL COMMENT '购买时间',
  `buy_limit` int(11) NOT NULL COMMENT '购买期限',
  `vip_end_time` int(11) NOT NULL COMMENT '到期时间',
  `buy_fee` decimal(20,2) NOT NULL COMMENT '购买价格',
  `buy_type` tinyint(1) NOT NULL COMMENT '0 VIP购买，1 管理员变更',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='VIP购买日志表' AUTO_INCREMENT=88 ;

--
-- 转存表中的数据 `%DB_PREFIX%vip_buy_log`
--

INSERT INTO `%DB_PREFIX%vip_buy_log` (`id`, `vip_id`, `user_id`, `vip_buytime`, `buy_limit`, `vip_end_time`, `buy_fee`, `buy_type`) VALUES
(1, 2, 440124, 1436465888, 1, 1468001888, '80.00', 0),
(2, 2, 440090, 1436467064, 1, 1468003064, '80.00', 0),
(3, 2, 440090, 1436467079, 1, 1499539064, '80.00', 0),
(4, 2, 440090, 1436467265, 1, 1531075064, '80.00', 0),
(5, 3, 440090, 1436467477, 1, 1468003477, '150.00', 0),
(6, 4, 440090, 1436467544, 1, 1468003544, '240.00', 0),
(7, 2, 440090, 1436467678, 1, 1468003678, '80.00', 0),
(8, 2, 440090, 1436468261, 4, 1594147678, '320.00', 0),
(9, 5, 440090, 1436468402, 5, 1594148402, '2000.00', 0),
(10, 2, 440094, 1436469098, 5, 1594149098, '400.00', 0),
(11, 4, 440094, 1436469214, 1, 1468005214, '240.00', 0),
(12, 2, 440093, 1436480253, 2, 1499552253, '160.00', 0),
(13, 2, 440098, 1436485325, 2, 1499557325, '160.00', 0),
(14, 3, 440093, 1436486800, 1, 1468022800, '150.00', 0),
(15, 2, 440115, 1436493578, 2, 1499565578, '160.00', 0),
(16, 2, 440121, 1436724350, 1, 1468260350, '80.00', 0),
(17, 2, 440123, 1436724508, 1, 1468260508, '80.00', 0),
(18, 2, 440031, 1436894567, 5, 1594574567, '400.00', 0),
(19, 4, 440031, 1436894627, 1, 1468430627, '240.00', 0),
(20, 5, 440031, 1436894641, 1, 1468430641, '400.00', 0),
(21, 3, 440031, 1436912655, 2, 1499984655, '300.00', 0),
(22, 3, 440098, 1437345938, 1, 1468881938, '150.00', 0),
(23, 4, 440093, 1437348770, 1, 1468884770, '240.00', 0),
(24, 5, 440094, 1437524748, 1, 1469060748, '400.00', 0),
(25, 2, 440148, 1437525114, 2, 1500597114, '160.00', 0),
(26, 2, 440137, 1437525240, 1, 1469061240, '80.00', 0),
(27, 2, 440145, 1437586846, 1, 1469122846, '80.00', 0),
(28, 3, 440148, 1437589050, 1, 1469125050, '150.00', 0),
(29, 2, 440157, 1437672664, 1, 1469208664, '80.00', 0),
(30, 3, 440029, 1437678177, 1, 1469214177, '150.00', 0),
(31, 3, 440029, 1437678230, 1, 1500750177, '150.00', 0),
(32, 3, 440029, 1437678232, 1, 1532286177, '150.00', 0),
(33, 3, 440029, 1437678586, 1, 1563822177, '150.00', 0),
(34, 4, 440029, 1437678899, 1, 1469214899, '240.00', 0),
(35, 2, 440158, 1437696762, 1, 1469232762, '80.00', 0),
(36, 3, 440121, 1438044043, 1, 1469580043, '150.00', 0),
(37, 5, 440093, 1438044069, 1, 1469580069, '400.00', 0),
(38, 4, 440098, 1438044136, 1, 1469580136, '240.00', 0),
(39, 2, 440119, 1438044348, 3, 1532652348, '240.00', 0),
(40, 3, 440123, 1438102305, 1, 1469638305, '150.00', 0),
(41, 4, 440121, 1438125434, 1, 1469661434, '240.00', 0),
(42, 4, 440123, 1438125594, 1, 1469661594, '240.00', 0),
(43, 2, 440179, 1438190622, 1, 1469726622, '80.00', 0),
(44, 3, 440179, 1438191627, 1, 1469727627, '150.00', 0),
(45, 2, 440129, 1438194992, 1, 1469730992, '80.00', 0),
(46, 3, 440129, 1438195054, 1, 1469731054, '150.00', 0),
(47, 2, 440180, 1438196448, 1, 1469732448, '80.00', 0),
(48, 2, 440128, 1438208210, 1, 1469744210, '80.00', 0),
(49, 3, 440180, 1438211049, 1, 1469747049, '150.00', 0),
(50, 2, 440183, 1438216188, 1, 1469752188, '80.00', 0),
(51, 2, 440185, 1438218418, 1, 1469754418, '80.00', 0),
(52, 2, 440186, 1438274135, 1, 1469810135, '80.00', 0),
(53, 2, 440190, 1438277947, 1, 1469813947, '80.00', 0),
(54, 2, 440152, 1438281253, 1, 1469817253, '80.00', 0),
(55, 3, 440029, 1438535776, 1, 1470071776, '150.00', 0),
(56, 3, 440119, 1439402353, 1, 1470938353, '150.00', 0),
(57, 4, 440017, 1442879597, 2, 1505951597, '480.00', 0),
(58, 2, 440036, 1446054483, 1, 1477590483, '80.00', 0),
(59, 3, 440020, 1446059868, 1, 1477595868, '150.00', 0),
(60, 4, 440129, 1446403042, 1, 1477939042, '240.00', 0),
(61, 5, 440129, 1446403053, 1, 1477939053, '400.00', 0),
(62, 2, 440225, 1447002125, 1, 1478538125, '80.00', 0),
(63, 3, 440225, 1447367908, 1, 1478903908, '150.00', 0),
(64, 5, 440226, 1447636347, 1, 1479172347, '400.00', 0),
(65, 4, 440225, 1448235127, 1, 1479771127, '240.00', 0),
(66, 5, 440225, 1448471254, 1, 1480007254, '400.00', 0),
(67, 3, 440228, 1448471497, 1, 1480007497, '150.00', 0),
(68, 4, 440228, 1448471507, 1, 1480007507, '240.00', 0),
(69, 5, 440020, 1451417346, 1, 1482953346, '400.00', 0),
(70, 5, 440020, 1451417396, 1, 1482953396, '400.00', 0),
(71, 3, 440230, 1451417731, 1, 1482953731, '150.00', 0),
(72, 4, 440230, 1451417767, 1, 1482953767, '240.00', 0),
(73, 5, 440230, 1451417796, 1, 1482953796, '400.00', 0),
(74, 2, 440231, 1451418275, 1, 1482954275, '80.00', 0),
(75, 5, 440231, 1451418298, 2, 1514490298, '800.00', 0),
(76, 4, 440238, 1451844233, 1, 1483380233, '240.00', 0),
(77, 5, 440238, 1451844242, 1, 1483380242, '400.00', 0),
(78, 4, 440232, 1451844386, 1, 1483380386, '240.00', 0),
(79, 2, 440227, 1452637591, 1, 1484173591, '80.00', 0),
(80, 3, 440227, 1452637763, 1, 1484173763, '150.00', 0),
(81, 4, 440227, 1452637984, 1, 1484173984, '240.00', 0),
(82, 4, 440183, 1452708359, 1, 1484244359, '240.00', 0),
(83, 5, 440183, 1452708493, 1, 1484244493, '400.00', 0),
(84, 4, 440183, 1452709082, 1, 1484245082, '240.00', 0),
(85, 5, 440183, 1452709249, 1, 1484245249, '400.00', 0),
(86, 4, 440183, 1452713287, 1, 1484249287, '240.00', 0),
(87, 5, 440183, 1452713532, 1, 1484249532, '400.00', 0);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%vip_festivals`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%vip_festivals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '节日名称',
  `holiday_date` date NOT NULL COMMENT '节日时间',
  `number` int(11) NOT NULL COMMENT '数量',
  `brief` text NOT NULL COMMENT '简介',
  `is_delete` tinyint(1) NOT NULL COMMENT '删除标识',
  `is_effect` tinyint(1) NOT NULL COMMENT '有效性标识',
  `sort` int(11) NOT NULL COMMENT '节日礼品排序',
  `is_send` tinyint(1) NOT NULL COMMENT '发送标识',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='节日礼品表' AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `%DB_PREFIX%vip_festivals`
--

INSERT INTO `%DB_PREFIX%vip_festivals` (`id`, `name`, `holiday_date`, `number`, `brief`, `is_delete`, `is_effect`, `sort`, `is_send`) VALUES
(10, '春节福利', '2015-07-10', 1, '', 0, 1, 1, 1),
(11, '中秋节', '2015-07-10', 2, '', 0, 1, 2, 1),
(12, '生日礼品', '2015-07-10', 1, '', 0, 1, 3, 1),
(13, '端午节', '2015-07-10', 1, '', 0, 1, 4, 1),
(14, '国庆节', '2015-07-13', 1, '', 0, 1, 5, 1),
(15, '妇女节', '2015-07-13', 500, '112233', 0, 1, 6, 1),
(16, '节日', '2015-07-20', 1, '', 0, 1, 7, 1),
(17, '七夕', '2015-07-28', 1, '', 0, 1, 8, 1),
(18, '八一', '2015-08-01', 0, '测试', 0, 1, 9, 0),
(19, '元旦节', '2016-01-01', 5, '元旦节 元旦节 元旦节', 0, 1, 10, 1);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%vip_gift`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%vip_gift` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '礼品名称',
  `brief` text NOT NULL COMMENT '礼品简介',
  `is_delete` tinyint(1) NOT NULL COMMENT '删除标识',
  `is_effect` tinyint(1) NOT NULL COMMENT '有效性标识',
  `sort` int(11) NOT NULL COMMENT '礼品排序',
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='礼品列表' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `%DB_PREFIX%vip_gift`
--

INSERT INTO `%DB_PREFIX%vip_gift` (`id`, `name`, `brief`, `is_delete`, `is_effect`, `sort`) VALUES
(1, '礼品一', '礼品一礼品一礼品一礼品一', 0, 1, 1),
(2, '礼品二', '礼品二礼品二礼品二礼品二', 0, 1, 2),
(3, '礼品三', '礼品三礼品三礼品三礼品三', 0, 1, 3);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%vip_red_envelope`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%vip_red_envelope` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` decimal(20,0) NOT NULL COMMENT '红包金额',
  `brief` text NOT NULL COMMENT '红包简介',
  `is_delete` tinyint(1) NOT NULL COMMENT '删除标识',
  `is_effect` tinyint(1) NOT NULL COMMENT '有效性标识',
  `sort` int(11) NOT NULL COMMENT '红包排序',
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='红包列表' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `%DB_PREFIX%vip_red_envelope`
--

INSERT INTO `%DB_PREFIX%vip_red_envelope` (`id`, `money`, `brief`, `is_delete`, `is_effect`, `sort`) VALUES
(1, '1', '1元红包1元红包1元红包1元红包1元红包', 0, 1, 1),
(2, '2', '2元红包2元红包2元红包2元红包', 0, 1, 2),
(3, '5', '5元红包', 0, 1, 3),
(4, '0', '', 1, 1, 4);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%vip_setting`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%vip_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vip_id` int(11) NOT NULL COMMENT 'VIP等级ID',
  `probability` int(11) NOT NULL COMMENT '收益奖励几率',
  `load_mfee` decimal(20,2) NOT NULL COMMENT '借款管理费(每月)',
  `interest` int(11) NOT NULL COMMENT '投资利息费',
  `charges` int(11) NOT NULL COMMENT '提现手续费(每笔)',
  `coefficient` decimal(20,2) NOT NULL COMMENT '积分折现系数',
  `multiple` decimal(20,1) NOT NULL COMMENT '积分获取倍数',
  `bgift` int(11) NOT NULL COMMENT '生日礼品',
  `btype` tinyint(1) NOT NULL COMMENT '生日礼品类别 1积分 2现金红包',
  `holiday_score` int(11) NOT NULL COMMENT '节日积分',
  `rate` decimal(20,2) NOT NULL COMMENT '增加收益率',
  `integral` int(11) NOT NULL COMMENT '收益积分值',
  `red_envelope` varchar(100) NOT NULL COMMENT '多种类型红包金额',
  `gift` varchar(100) NOT NULL COMMENT '多种礼品ID',
  `is_delete` tinyint(1) NOT NULL COMMENT '删除标识',
  `is_effect` tinyint(1) NOT NULL COMMENT '有效性标识',
  `sort` int(11) NOT NULL COMMENT 'VIP配置排序',
  `original_price` decimal(20,2) NOT NULL COMMENT 'vip 原价（原先购买价格）',
  `site_pirce` decimal(20,2) NOT NULL COMMENT 'vip 现价 (现有购买价格)',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='VIP配置表' AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `%DB_PREFIX%vip_setting`
--

INSERT INTO `%DB_PREFIX%vip_setting` (`id`, `vip_id`, `probability`, `load_mfee`, `interest`, `charges`, `coefficient`, `multiple`, `bgift`, `btype`, `holiday_score`, `rate`, `integral`, `red_envelope`, `gift`, `is_delete`, `is_effect`, `sort`, `original_price`, `site_pirce`) VALUES
(2, 2, 100, '0.29', 8, 1, '0.55', '1.2', 50, 2, 1000, '0.40', 300, '1,2,3', '1,2', 0, 1, 2, '100.00', '80.00'),
(3, 3, 15, '0.28', 6, 0, '0.60', '1.3', 100, 2, 2000, '0.30', 350, '1,2,3', '2,3', 0, 1, 3, '200.00', '150.00'),
(4, 4, 20, '0.27', 4, 0, '0.65', '1.4', 200, 2, 5000, '0.32', 400, '2,3', '1,2,3', 0, 1, 4, '300.00', '240.00'),
(5, 5, 25, '0.25', 2, 0, '0.70', '1.5', 500, 2, 10000, '0.34', 450, '1,2,3', '1,2,3', 0, 1, 5, '500.00', '400.00'),
(7, 2, 50, '0.00', 0, 0, '5.00', '0.0', 1000, 1, 1000, '5.00', 4500, '1,2,3', '1,2,3', 0, 1, 6, '500.00', '200.00');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%vip_type`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%vip_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vip_grade` varchar(100) NOT NULL COMMENT 'VIP等级',
  `lower_limit` decimal(20,0) NOT NULL COMMENT '金额下限',
  `upper_limit` decimal(20,0) NOT NULL COMMENT '金额上限',
  `content` varchar(255) NOT NULL COMMENT 'VIP升级条件',
  `is_delete` tinyint(1) NOT NULL COMMENT '删除标识',
  `is_effect` tinyint(1) NOT NULL COMMENT '有效性标识',
  `sort` int(11) NOT NULL COMMENT 'VIP排序',
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='VIP类别表' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `%DB_PREFIX%vip_type`
--

INSERT INTO `%DB_PREFIX%vip_type` (`id`, `vip_grade`, `lower_limit`, `upper_limit`, `content`, `is_delete`, `is_effect`, `sort`) VALUES
(1, '普通VIP会员', '15000', '49999', '注册完成后为普通VIP会员；', 1, 1, 1),
(2, '白银VIP会员', '3000', '100000', '总额度达到3000元，且没有迟还款和逾期还款的用户，系统自动为其升级成为白银VIP会员。', 0, 1, 2),
(3, '黄金VIP会员', '100001', '4999999', '总额度达到500000元，且没有迟还款和逾期还款记录的用户，系统自动为其升级成为黄金VIP会员。', 0, 1, 3),
(4, '铂金VIP会员', '5000000', '49999999', '总额度达到5000000元，且没有迟还款和逾期还款记录的用户，系统自动为其升级成为白金VIP会员。', 0, 1, 4),
(5, '钻石会员', '50000000', '999999999999999', '总额度达到50000000元，且没有还款和逾期还款记录的用户，系统自动为其升级成为钻石VIP会员。', 0, 1, 5);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%vip_upgrade_record`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%vip_upgrade_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '会员ID',
  `original_vip_id` int(11) NOT NULL COMMENT 'VIP原等级ID',
  `now_vip_id` int(11) NOT NULL COMMENT 'VIP现有等级ID',
  `causes` varchar(255) NOT NULL COMMENT 'VIP升级原因',
  `upgrade_date` date NOT NULL COMMENT 'VIP升级日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='VIP升级记录表' AUTO_INCREMENT=85 ;

--
-- 转存表中的数据 `%DB_PREFIX%vip_upgrade_record`
--

INSERT INTO `%DB_PREFIX%vip_upgrade_record` (`id`, `user_id`, `original_vip_id`, `now_vip_id`, `causes`, `upgrade_date`) VALUES
(25, 440009, 0, 2, '借款升级', '2015-03-05'),
(26, 440010, 0, 2, '投标升级', '2015-03-05'),
(27, 440009, 2, 1, '借款升级', '2015-03-06'),
(28, 440010, 2, 1, '投标升级', '2015-03-06'),
(29, 440022, 0, 2, '投标升级', '2015-03-17'),
(30, 440020, 0, 2, '借款升级', '2015-03-17'),
(31, 440026, 0, 2, '正常还款升级', '2015-03-26'),
(32, 440029, 0, 2, '正常还款升级', '2015-03-30'),
(33, 440031, 0, 2, '借款升级', '2015-04-08'),
(34, 440092, 0, 2, '投标升级', '2015-06-16'),
(35, 440090, 0, 2, '借款升级', '2015-06-16'),
(36, 440035, 0, 2, '投标升级', '2015-06-25'),
(37, 440090, 3, 4, 'VIP购买升级', '2015-07-10'),
(38, 440090, 4, 2, 'VIP购买升级', '2015-07-10'),
(39, 440093, 3, 4, 'VIP购买升级', '2015-07-20'),
(40, 440094, 4, 5, 'VIP购买升级', '2015-07-22'),
(41, 440093, 4, 5, 'VIP购买升级', '2015-07-28'),
(42, 440098, 3, 4, 'VIP购买升级', '2015-07-28'),
(43, 440121, 3, 4, 'VIP购买升级', '2015-07-29'),
(44, 440127, 0, 2, '借款升级', '2015-08-17'),
(45, 440130, 0, 2, '借款升级', '2015-08-17'),
(46, 440136, 0, 2, '借款升级', '2015-08-19'),
(47, 440017, 0, 2, '投标升级', '2015-09-22'),
(48, 440036, 0, 2, 'VIP购买升级', '2015-10-29'),
(49, 440020, 2, 3, 'VIP购买升级', '2015-10-29'),
(50, 440129, 3, 4, 'VIP购买升级', '2015-11-02'),
(51, 440129, 4, 5, 'VIP购买升级', '2015-11-02'),
(52, 440225, 0, 2, 'VIP购买升级', '2015-11-09'),
(53, 440228, 0, 2, '投标升级', '2015-11-09'),
(54, 440225, 2, 3, 'VIP购买升级', '2015-11-13'),
(55, 440229, 0, 2, '投标升级', '2015-11-16'),
(56, 440226, 0, 2, '投标升级', '2015-11-16'),
(57, 440226, 2, 5, 'VIP购买升级', '2015-11-16'),
(58, 440230, 0, 2, '投标升级', '2015-11-18'),
(59, 440225, 3, 4, 'VIP购买升级', '2015-11-23'),
(60, 440225, 4, 5, 'VIP购买升级', '2015-11-26'),
(61, 440228, 2, 3, 'VIP购买升级', '2015-11-26'),
(62, 440228, 3, 4, 'VIP购买升级', '2015-11-26'),
(63, 440230, 2, 3, 'VIP购买升级', '2015-12-30'),
(64, 440230, 3, 4, 'VIP购买升级', '2015-12-30'),
(65, 440230, 4, 5, 'VIP购买升级', '2015-12-30'),
(66, 440231, 0, 2, 'VIP购买升级', '2015-12-30'),
(67, 440231, 2, 5, 'VIP购买升级', '2015-12-30'),
(68, 440081, 0, 2, '借款升级', '2015-12-31'),
(69, 440238, 0, 4, 'VIP购买升级', '2016-01-04'),
(70, 440238, 4, 5, 'VIP购买升级', '2016-01-04'),
(71, 440232, 0, 4, 'VIP购买升级', '2016-01-04'),
(72, 440227, 0, 2, 'VIP购买升级', '2016-01-13'),
(73, 440227, 2, 3, 'VIP购买升级', '2016-01-13'),
(74, 440227, 3, 4, 'VIP购买升级', '2016-01-13'),
(75, 440183, 2, 4, 'VIP购买升级', '2016-01-14'),
(76, 440183, 4, 5, 'VIP购买升级', '2016-01-14'),
(77, 440183, 3, 4, 'VIP购买升级', '2016-01-14'),
(78, 440183, 4, 5, 'VIP购买升级', '2016-01-14'),
(79, 440183, 3, 4, 'VIP购买升级', '2016-01-14'),
(80, 440183, 4, 5, 'VIP购买升级', '2016-01-14'),
(81, 440255, 0, 2, '借款升级', '2016-02-01'),
(82, 440256, 0, 2, '借款升级', '2016-02-02'),
(83, 440247, 0, 2, '管理员操作VIP升级', '2016-02-04'),
(84, 440260, 0, 2, '管理员操作VIP升级', '2016-02-04');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%vote`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `begin_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `sort` int(11) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `%DB_PREFIX%vote`
--

INSERT INTO `%DB_PREFIX%vote` (`id`, `name`, `begin_time`, `end_time`, `is_effect`, `sort`, `description`) VALUES
(9, '投票测试', 1410809987, 1420054740, 1, 1, '测试题目'),
(10, '投票功能是否好用', 1417374030, 1419966039, 1, 2, '投票功能是否好用');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%vote_ask`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%vote_ask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `sort` int(11) NOT NULL,
  `vote_id` int(11) NOT NULL,
  `val_scope` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- 转存表中的数据 `%DB_PREFIX%vote_ask`
--

INSERT INTO `%DB_PREFIX%vote_ask` (`id`, `name`, `type`, `sort`, `vote_id`, `val_scope`) VALUES
(31, '投票2', 1, 2, 9, '否'),
(30, '投票1', 1, 1, 9, '是'),
(42, '2.你的爱好?', 2, 2, 10, '旅游,看书,看电视,看电影,购物,上网,其他...'),
(41, '1.投票功能是否好用', 1, 1, 10, '好用,不好用,一般般');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%vote_result`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%vote_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `vote_id` int(11) NOT NULL,
  `vote_ask_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=107 ;

--
-- 转存表中的数据 `%DB_PREFIX%vote_result`
--

INSERT INTO `%DB_PREFIX%vote_result` (`id`, `name`, `count`, `vote_id`, `vote_ask_id`) VALUES
(15, '报纸3', 1, 0, 13),
(16, '报纸1', 1, 0, 13),
(17, '1', 2, 1, 16),
(18, '1', 2, 1, 15),
(19, '江佳', 1, 0, 15),
(20, '20岁以下\r\n21-30岁\r\n31-40岁\r\n50岁以上', 1, 0, 16),
(21, '232', 1, 0, 21),
(22, '21-30岁', 11, 0, 22),
(23, 'dwa', 1, 0, 21),
(24, '88952634', 98, 88952634, 21),
(25, '20岁以下', 98, 88952634, 22),
(26, '21-30岁', 98, 88952634, 22),
(27, '31-40岁', 98, 88952634, 22),
(28, '50岁以上', 98, 88952634, 22),
(29, '88952634\\''`\\&quot;(', 2, 88952634, 21),
(30, '88952634-0', 2, 88952634, 21),
(31, '88952634s3', 2, 88952634, 21),
(32, '88952634\\''+\\''', 2, 88952634, 21),
(33, '88952634\\''', 4, 88952634, 21),
(34, '88952634\\''||\\''', 2, 88952634, 21),
(35, '88952634&lt;alert(88952634)&gt;', 2, 88952634, 21),
(36, '20岁以下\\''`\\&quot;(', 2, 88952634, 22),
(37, '20岁以下-0', 2, 88952634, 22),
(38, '20岁以下s3', 2, 88952634, 22),
(39, '20岁以下\\''+\\''', 2, 88952634, 22),
(40, '20岁以下\\''', 4, 88952634, 22),
(41, '20岁以下\\''||\\''', 2, 88952634, 22),
(42, '20岁以下&lt;alert(88952634)&gt;', 2, 88952634, 22),
(43, '21-30岁\\''`\\&quot;(', 2, 88952634, 22),
(44, '21-30岁-0', 2, 88952634, 22),
(45, '21-30岁s3', 2, 88952634, 22),
(46, '21-30岁\\''+\\''', 2, 88952634, 22),
(47, '21-30岁\\''', 4, 88952634, 22),
(48, '21-30岁\\''||\\''', 2, 88952634, 22),
(49, '21-30岁&lt;alert(88952634)&gt;', 2, 88952634, 22),
(50, '31-40岁\\''`\\&quot;(', 2, 88952634, 22),
(51, '31-40岁-0', 2, 88952634, 22),
(52, '31-40岁s3', 2, 88952634, 22),
(53, '31-40岁\\''+\\''', 2, 88952634, 22),
(54, '31-40岁\\''', 4, 88952634, 22),
(55, '31-40岁\\''||\\''', 2, 88952634, 22),
(56, '31-40岁&lt;alert(88952634)&gt;', 2, 88952634, 22),
(57, '50岁以上\\''`\\&quot;(', 2, 88952634, 22),
(58, '50岁以上-0', 2, 88952634, 22),
(59, '50岁以上s3', 2, 88952634, 22),
(60, '50岁以上\\''+\\''', 2, 88952634, 22),
(61, '50岁以上\\''', 4, 88952634, 22),
(62, '50岁以上\\''||\\''', 2, 88952634, 22),
(63, '50岁以上&lt;alert(88952634)&gt;', 2, 88952634, 22),
(64, '111', 1, 0, 21),
(65, '姓名姓', 1, 0, 21),
(66, 'jsbyttqy', 1, 0, 21),
(67, 'qtcveyvm', 1, 0, 21),
(68, '20岁以下', 5, 0, 22),
(69, 'kwevurxe', 1, 12345, 21),
(70, '20岁以下', 1, 12345, 22),
(71, 'kwevurxe', 1, 1, 21),
(72, '20岁以下', 1, 1, 22),
(73, 'rhpyvdkj', 1, -1, 21),
(74, '20岁以下', 1, -1, 22),
(75, 'rhpyvdkj', 1, 46, 21),
(76, '21-30岁', 1, 46, 22),
(77, '31-40岁', 4, 0, 22),
(78, '50岁以上', 2, 0, 22),
(79, 'fanwe', 1, 0, 21),
(80, '小小彬', 1, 0, 21),
(81, '黎明', 1, 0, 21),
(82, '李银华', 1, 0, 21),
(83, 'asda', 1, 0, 21),
(84, '喊口号', 1, 0, 21),
(85, 'test', 95, 0, 21),
(86, '20', 176, 0, 22),
(87, 'hh', 1, 0, 21),
(88, 'adsasdsa', 1, 0, 21),
(89, 'ta', 1, 0, 21),
(90, '3', 12, 0, 23),
(96, '2\n3\n1', 1, 9, 26),
(95, '2\r\n3\r\n1', 2, 9, 26),
(97, '2\r\n3\r\n1', 1, 9, 27),
(98, '是', 40, 9, 30),
(99, '否', 3, 9, 31),
(100, '是\\''`\\&quot;(', 2, 9, 30),
(101, '是-0', 2, 9, 30),
(102, '是s3', 2, 9, 30),
(103, '是\\''+\\''', 2, 9, 30),
(104, '是\\''', 4, 9, 30),
(105, '是\\''||\\''', 2, 9, 30),
(106, '是&lt;alert(88952634)&gt;', 2, 9, 30);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%weixin_account`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%weixin_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(255) NOT NULL COMMENT 'AppID(应用ID)-第三方平台指 授权方appid',
  `appsecret` varchar(255) NOT NULL COMMENT 'AppSecret(应用密钥)-第三方平台无用',
  `app_url` varchar(255) NOT NULL COMMENT 'URL(服务器地址)-第三方平台无用',
  `app_token` varchar(255) NOT NULL COMMENT 'Token(令牌)-第三方平台无用',
  `app_encodingAESKey` varchar(255) NOT NULL COMMENT 'EncodingAESKey(消息加解密密钥)-第三方平台无用',
  `authorizer_appid` varchar(255) NOT NULL COMMENT '授权方appid',
  `authorizer_access_token` varchar(255) NOT NULL COMMENT '授权方令牌-第三方平台无用',
  `expires_in` int(11) NOT NULL COMMENT '授权方令牌 有效时间-第三方平台无用',
  `authorizer_refresh_token` varchar(255) NOT NULL COMMENT '刷新令牌-第三方平台',
  `func_info` text NOT NULL COMMENT '公众号授权给开发者的权限集列表',
  `verify_type_info` tinyint(1) NOT NULL COMMENT '授权方认证类型，-1代表未认证，0代表微信认证，1代表新浪微博认证，2代表腾讯微博认证，3代表已资质认证通过但还未通过名称认证，4代表已资质认证通过、还未通过名称认证，但通过了新浪微博认证，5代表已资质认证通过、还未通过名称认证，但通过了腾讯微博认证',
  `service_type_info` tinyint(1) NOT NULL COMMENT '授权方公众号类型，0代表订阅号，1代表由历史老帐号升级后的订阅号，2代表服务号',
  `nick_name` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL COMMENT '授权方公众号的原始ID',
  `authorizer_info` varchar(255) NOT NULL COMMENT '授权方昵称',
  `head_img` varchar(255) NOT NULL COMMENT '授权方头像',
  `alias` varchar(255) NOT NULL COMMENT '授权方公众号所设置的微信号，可能为空',
  `qrcode_url` varchar(255) NOT NULL COMMENT '二维码图片的URL，开发者最好自行也进行保存',
  `location_report` tinyint(1) NOT NULL COMMENT '地理位置上报选项 0 无上报 1 进入会话时上报 2 每5s上报',
  `voice_recognize` tinyint(1) NOT NULL COMMENT '语音识别开关选项 0 关闭语音识别 1 开启语音识别',
  `customer_service` tinyint(1) NOT NULL COMMENT '客服开关选项 0 关闭多客服 1 开启多客服',
  `is_authorized` tinyint(1) NOT NULL DEFAULT '0' COMMENT '授权方是否取消授权 0表示取消授权 1表示授权',
  `user_id` int(11) NOT NULL COMMENT '会员ID ，诺type为1，user_id 为空',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 表示前台会员 1 表示后台管理员',
  `industry_1` int(11) NOT NULL,
  `industry_1_status` tinyint(1) NOT NULL,
  `industry_2` int(11) NOT NULL,
  `industry_2_status` tinyint(1) NOT NULL,
  `test_user` varchar(255) DEFAULT NULL COMMENT '测试微信号',
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `au_app_id` (`authorizer_appid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='//微信公众号列表' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `%DB_PREFIX%weixin_account`
--

INSERT INTO `%DB_PREFIX%weixin_account` (`id`, `appid`, `appsecret`, `app_url`, `app_token`, `app_encodingAESKey`, `authorizer_appid`, `authorizer_access_token`, `expires_in`, `authorizer_refresh_token`, `func_info`, `verify_type_info`, `service_type_info`, `nick_name`, `user_name`, `authorizer_info`, `head_img`, `alias`, `qrcode_url`, `location_report`, `voice_recognize`, `customer_service`, `is_authorized`, `user_id`, `type`, `industry_1`, `industry_1_status`, `industry_2`, `industry_2_status`, `test_user`, `sort`) VALUES
(8, '', '', '', '', '', 'wxe4390206746d9367', 'lCh3oy0ezTg8Edlefm4t6vpXAm4qQOmaxiPQ2SCHduDmjAOQqaJpSGmxzwrvKUYEqVfaannzkqqGj8SR8m4qSKIlIJyPI56TjFlp-A3VBhsRTP-eHhdYaDf0rvPdW-yLAPUjAIDKZE', 1453688489, 'refreshtoken@@@xL9DCcKlNnUuSZx57y1_PQhnP9jlwroMxdp5HHH5hLY', 'a:11:{i:0;a:1:{s:18:"funcscope_category";a:1:{s:2:"id";i:2;}}i:1;a:1:{s:18:"funcscope_category";a:1:{s:2:"id";i:3;}}i:2;a:1:{s:18:"funcscope_category";a:1:{s:2:"id";i:4;}}i:3;a:1:{s:18:"funcscope_category";a:1:{s:2:"id";i:5;}}i:4;a:1:{s:18:"funcscope_category";a:1:{s:2:"id";i:6;}}i:5;a:1:{s:18:"funcscope_category";a:1:{s:2:"id";i:7;}}i:6;a:1:{s:18:"funcscope_category";a:1:{s:2:"id";i:8;}}i:7;a:1:{s:18:"funcscope_category";a:1:{s:2:"id";i:11;}}i:8;a:1:{s:18:"funcscope_category";a:1:{s:2:"id";i:12;}}i:9;a:1:{s:18:"funcscope_category";a:1:{s:2:"id";i:13;}}i:10;a:1:{s:18:"funcscope_category";a:1:{s:2:"id";i:10;}}}', 0, 2, '方维配资', 'gh_32a728fda405', '', 'http://wx.qlogo.cn/mmopen/bdJlFlia0970JjTialDhDbdBzXPbSYc23L5U1XLCdTcsHbW1bhl2CbPSdx0FKJseKqAdrTXxdMag6eodTAhj1x4A2csSzA10az/0', '%DB_PREFIX%pz', 'http://mmbiz.qpic.cn/mmbiz/mb4KlCvCYMUUbyJfzb6eRArhFXHmDpNubkJyia4J42WY4yib9PLEic57243pqhjeIjhxWda7PcWg4BQ4FWqOxK4ug/0', 0, 0, 0, 0, 0, 1, 2, 0, 1, 0, 'oeDhSs8SQ1EBuEmxefWHegVxNf3c', 0);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%weixin_api_get_record`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%weixin_api_get_record` (
  `openid` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`openid`),
  KEY `account_id` (`account_id`) USING BTREE,
  KEY `idx_0` (`account_id`,`create_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='请求的用户记录';

--
-- 转存表中的数据 `%DB_PREFIX%weixin_api_get_record`
--

INSERT INTO `%DB_PREFIX%weixin_api_get_record` (`openid`, `user_id`, `account_id`, `create_time`) VALUES
('oVYNNt2fbtqISrpKHbtY1GVxxnTQ', 0, 0, 1451322194),
('', 0, 0, 1451269826),
('oeDhSs8SQ1EBuEmxefWHegVxNf3c', 0, 8, 1453680907),
('oeDhSs68M9wN1wRmIyebp-W89fow', 0, 8, 1451351057),
('oVYNNt4sjtLYPjts7w2j0NdzDsJ4', 0, 0, 1451897415),
('oVYNNtyCFCOkPPyh-_DkZmGVPnCU', 0, 0, 1451925515),
('oeDhSs_LlEtHCGfeZCgo0rwNK950', 0, 8, 1453682910),
('oeDhSsyUUQHk8gvM5aTxr_rpQ-iU', 0, 8, 1452131200),
('oVYNNt78VWWhIXblw6NxtgYhua4c', 0, 0, 1452151295),
('oVYNNt9uiYI4Kh5CKeHt06KdVJJA', 0, 0, 1452234291),
('oVYNNt_EQz34h4Xhzydl9LPCIDxY', 0, 0, 1452365907),
('oVYNNt3AINdOZpEPdwhtMT4z7zOI', 0, 0, 1452388354),
('oVYNNt3BflU5bEJwrFmPRkozkz0I', 0, 0, 1452677082),
('oVYNNt2lPM-4SHwK-Z-WcF4vtLDE', 0, 0, 1452820777),
('oVYNNt8XF1SjKfTD45nD63mgrUd4', 0, 0, 1453008240),
('oVYNNt-sOSVt8dBWsK4SeRNHbXK0', 0, 0, 1453079828),
('oVYNNt5c7Z1RakZsQZcEm3BBru1o', 0, 0, 1453308635),
('oVYNNt1kYjYnP1nHvhf6YKsaLhUo', 0, 0, 1453365052),
('oVYNNt3mxgLH-ZX8pg4Dq22jBXLk', 0, 0, 1454295631),
('oVYNNt0Dc_2FDdwkhxcLuWsRvlm4', 0, 0, 1454373466);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%weixin_conf`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%weixin_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `group_id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '配置输入的类型 0:文本输入 1:下拉框输入 2:图片上传 3:编辑器',
  `value_scope` text NOT NULL COMMENT '取值范围',
  `is_require` tinyint(1) NOT NULL,
  `is_effect` tinyint(1) NOT NULL,
  `is_conf` tinyint(1) NOT NULL COMMENT '是否可配置 0: 可配置  1:不可配置',
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='//微信配置选项' AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `%DB_PREFIX%weixin_conf`
--

INSERT INTO `%DB_PREFIX%weixin_conf` (`id`, `title`, `name`, `value`, `group_id`, `type`, `value_scope`, `is_require`, `is_effect`, `is_conf`, `sort`) VALUES
(1, '第三方平台appid', 'platform_appid', 'wx5d1a3b76567906ad', 0, 0, '', 0, 1, 1, 1),
(2, '第三方平台token', 'platform_token', 'YNMrc5', 0, 0, '', 0, 1, 1, 2),
(3, '第三方平台symmetric_key', 'platform_encodingAesKey', 'qwertyuiopasdfghjklzxcvbnm12345678901234567', 0, 0, '', 0, 1, 1, 3),
(4, '是否开启第三方平台', 'platform_status', '1', 0, 4, '0,1', 0, 1, 1, 4),
(5, '第三方平台AppSecret', 'platform_appsecret', '0c79e1fa963cd80cc0be99b20a18faeb', 0, 0, '', 0, 1, 1, 1),
(6, 'component_verify_ticket', 'platform_component_verify_ticket', 'ticket@@@mmKSJRz-mBfwbEI77FeGOikZeyr0CS_WVZERQeobjeuW0vjJf4rEnjXrj_nbNE3BBklK8mOnWtuOEccIjFBKUA', 0, 0, '', 0, 1, 0, 6),
(7, '第三方平台access_token', 'platform_component_access_token', 'fOi5Wfn66CXMSzsDl8QD80aQr58HxcvfsX5p7f3UyQtatHP4_WIjWvASK5Tx-IrEELUsih4-xsz2CdrUQaMoLfwo5psaiwACv3G_p-vI2KEqVl5UJrkFiwQM6XiMtzjATDFiADAPZB', 0, 0, '', 0, 1, 0, 7),
(8, '第三方平台预授权码', 'platform_pre_auth_code', 'preauthcode@@@2x1mpD3R75qdK5E_M2qPkCehU5sVvq0xGTkM9_slCHfKc-4xDLbLS0ouJzs07bG9', 0, 0, '', 0, 1, 0, 8),
(9, '第三方平台access_token有效期', 'platform_component_access_token_expire', '1454866767', 0, 0, '', 0, 1, 0, 9),
(10, '第三方平台预授权码有效期', 'platform_pre_auth_code_expire', '1451269925', 0, 0, '', 0, 1, 0, 10);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%weixin_group`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%weixin_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `groupid` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `intro` varchar(200) NOT NULL DEFAULT '',
  `account_id` varchar(30) NOT NULL DEFAULT '',
  `fanscount` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `groupid` (`groupid`,`account_id`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- 转存表中的数据 `%DB_PREFIX%weixin_group`
--

INSERT INTO `%DB_PREFIX%weixin_group` (`id`, `groupid`, `name`, `intro`, `account_id`, `fanscount`) VALUES
(38, '0', '未分组', '', '5', 641),
(39, '1', '黑名单', '', '5', 1),
(40, '2', '星标组', '', '5', 8),
(41, '100', '木叶组', '', '5', 18),
(42, '105', '东莞分站', '', '5', 1),
(43, '106', '南方', '', '5', 1),
(44, '107', '天涯1', '天涯', '5', 0),
(45, '108', 'test', '23', '5', 0),
(46, '109', '22', '', '5', 0),
(47, '0', '未分组', '', '8', 27),
(48, '1', '黑名单', '', '8', 0),
(49, '2', '星标组', '', '8', 1),
(50, '100', '测试组', '123500', '8', 0);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%weixin_msg_list`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%weixin_msg_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dest` varchar(255) NOT NULL,
  `send_type` tinyint(1) NOT NULL,
  `content` text NOT NULL,
  `send_time` int(11) NOT NULL,
  `is_send` tinyint(1) NOT NULL,
  `create_time` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `result` text NOT NULL,
  `is_success` tinyint(1) NOT NULL,
  `is_html` tinyint(1) NOT NULL,
  `title` text NOT NULL,
  `is_youhui` tinyint(1) NOT NULL,
  `youhui_id` int(11) NOT NULL,
  `code` varchar(60) NOT NULL COMMENT '发送的验证码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='//微信消息列表' AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `%DB_PREFIX%weixin_msg_list`
--

INSERT INTO `%DB_PREFIX%weixin_msg_list` (`id`, `dest`, `send_type`, `content`, `send_time`, `is_send`, `create_time`, `user_id`, `result`, `is_success`, `is_html`, `title`, `is_youhui`, `youhui_id`, `code`) VALUES
(16, 'oeDhSs8SQ1EBuEmxefWHegVxNf3c', 3, 'a:5:{s:6:"touser";s:28:"oeDhSs8SQ1EBuEmxefWHegVxNf3c";s:11:"template_id";s:43:"gQj-c-o99MkIO1T0-js_JkbmzWfG6voVkvHmxkMZjUA";s:3:"url";s:20:"http://p2p.fanwe.net";s:8:"topcolor";s:7:"#FF0000";s:4:"data";a:4:{s:5:"first";a:2:{s:5:"value";s:18:"提现成功通知";s:5:"color";s:7:"#173177";}s:6:"remark";a:2:{s:5:"value";s:36:"有任何疑问，请致电客服。";s:5:"color";s:7:"#173177";}s:5:"money";a:2:{s:5:"value";s:7:"1000.00";s:5:"color";s:7:"#173177";}s:5:"timet";a:2:{s:5:"value";s:10:"2016-01-11";s:5:"color";s:7:"#173177";}}}', 1452447712, 1, 1452447712, 440081, '发送成功', 1, 0, '提现成功通知', 0, 0, ''),
(4, 'oeDhSs8SQ1EBuEmxefWHegVxNf3c', 1, '', 0, 0, 4, 440081, '', 0, 0, '3', 0, 0, ''),
(5, 'oeDhSs8SQ1EBuEmxefWHegVxNf3c', 3, '', 0, 0, 1452206325, 440081, '', 0, 0, '231', 0, 0, ''),
(6, 'oeDhSs8SQ1EBuEmxefWHegVxNf3c', 3, '', 1452206325, 1, 1452206325, 440081, '发送成功', 1, 0, '231', 0, 0, ''),
(7, 'oeDhSs8SQ1EBuEmxefWHegVxNf3c', 3, '', 0, 0, 1452206731, 440081, '', 0, 0, '提现成功通知', 0, 0, ''),
(8, 'oeDhSs8SQ1EBuEmxefWHegVxNf3c', 3, '', 1452206731, 1, 1452206731, 440081, '发送成功', 1, 0, '提现成功通知', 0, 0, ''),
(9, 'oeDhSs8SQ1EBuEmxefWHegVxNf3c', 3, '', 1452206868, 1, 1452206868, 440081, '发送成功', 1, 0, '提现成功通知', 0, 0, ''),
(10, 'oeDhSs8SQ1EBuEmxefWHegVxNf3c', 3, 'a:4:{s:5:"first";a:2:{s:5:"value";s:18:"提现成功通知";s:5:"color";s:7:"#173177";}s:6:"remark";a:2:{s:5:"value";s:36:"有任何疑问，请致电客服。";s:5:"color";s:7:"#173177";}s:5:"money";a:2:{s:5:"value";s:6:"150.00";s:5:"color";s:7:"#173177";}s:5:"timet";a:2:{s:5:"value";s:10:"2016-01-08";s:5:"color";s:7:"#173177";}}', 1452207561, 1, 1452207561, 440081, '发送成功', 1, 0, '提现成功通知', 0, 0, ''),
(11, 'oeDhSs8SQ1EBuEmxefWHegVxNf3c', 3, 'a:4:{s:5:"first";a:2:{s:5:"value";s:18:"提现成功通知";s:5:"color";s:7:"#173177";}s:6:"remark";a:2:{s:5:"value";s:36:"有任何疑问，请致电客服。";s:5:"color";s:7:"#173177";}s:5:"money";a:2:{s:5:"value";s:6:"200.00";s:5:"color";s:7:"#173177";}s:5:"timet";a:2:{s:5:"value";s:10:"2016-01-08";s:5:"color";s:7:"#173177";}}', 1452207684, 1, 1452207684, 440081, '发送成功', 1, 0, '提现成功通知', 0, 0, ''),
(12, 'oeDhSs8SQ1EBuEmxefWHegVxNf3c', 3, 's:0:"";', 1452209168, 1, 1452209168, 440081, '发送成功', 1, 0, '提现成功通知', 0, 0, ''),
(13, 'oeDhSs8SQ1EBuEmxefWHegVxNf3c', 3, 'a:4:{s:5:"first";a:2:{s:5:"value";s:18:"提现成功通知";s:5:"color";s:7:"#173177";}s:6:"remark";a:2:{s:5:"value";s:36:"有任何疑问，请致电客服。";s:5:"color";s:7:"#173177";}s:5:"money";a:2:{s:5:"value";s:6:"200.00";s:5:"color";s:7:"#173177";}s:5:"timet";a:2:{s:5:"value";s:10:"2016-01-08";s:5:"color";s:7:"#173177";}}', 1452209223, 1, 1452209223, 440081, '发送成功', 1, 0, '提现成功通知', 0, 0, ''),
(14, 'oeDhSs8SQ1EBuEmxefWHegVxNf3c', 3, 'a:4:{s:5:"first";a:2:{s:5:"value";s:18:"提现成功通知";s:5:"color";s:7:"#173177";}s:6:"remark";a:2:{s:5:"value";s:36:"有任何疑问，请致电客服。";s:5:"color";s:7:"#173177";}s:5:"money";a:2:{s:5:"value";s:6:"100.00";s:5:"color";s:7:"#173177";}s:5:"timet";a:2:{s:5:"value";s:10:"2016-01-08";s:5:"color";s:7:"#173177";}}', 1452209375, 1, 1452209375, 440081, '发送成功', 1, 0, '提现成功通知', 0, 0, ''),
(15, 'oeDhSs8SQ1EBuEmxefWHegVxNf3c', 3, 'a:5:{s:6:"touser";s:28:"oeDhSs8SQ1EBuEmxefWHegVxNf3c";s:11:"template_id";s:43:"gQj-c-o99MkIO1T0-js_JkbmzWfG6voVkvHmxkMZjUA";s:3:"url";s:20:"http://p2p.fanwe.net";s:8:"topcolor";s:7:"#FF0000";s:4:"data";a:4:{s:5:"first";a:2:{s:5:"value";s:18:"提现成功通知";s:5:"color";s:7:"#173177";}s:6:"remark";a:2:{s:5:"value";s:36:"有任何疑问，请致电客服。";s:5:"color";s:7:"#173177";}s:5:"money";a:2:{s:5:"value";s:6:"150.00";s:5:"color";s:7:"#173177";}s:5:"timet";a:2:{s:5:"value";s:10:"2016-01-08";s:5:"color";s:7:"#173177";}}}', 1452209530, 1, 1452209530, 440081, '发送成功', 1, 0, '提现成功通知', 0, 0, ''),
(17, 'oeDhSs8SQ1EBuEmxefWHegVxNf3c', 3, 'a:5:{s:6:"touser";s:28:"oeDhSs8SQ1EBuEmxefWHegVxNf3c";s:11:"template_id";s:43:"gQj-c-o99MkIO1T0-js_JkbmzWfG6voVkvHmxkMZjUA";s:3:"url";s:20:"http://p2p.fanwe.net";s:8:"topcolor";s:7:"#FF0000";s:4:"data";a:4:{s:5:"first";a:2:{s:5:"value";s:18:"提现成功通知";s:5:"color";s:7:"#173177";}s:6:"remark";a:2:{s:5:"value";s:36:"有任何疑问，请致电客服。";s:5:"color";s:7:"#173177";}s:5:"money";a:2:{s:5:"value";s:6:"200.00";s:5:"color";s:7:"#173177";}s:5:"timet";a:2:{s:5:"value";s:10:"2016-01-11";s:5:"color";s:7:"#173177";}}}', 1452447728, 1, 1452447728, 440081, '发送成功', 1, 0, '提现成功通知', 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%weixin_nav`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%weixin_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '' COMMENT '菜单名称',
  `sort` int(11) DEFAULT '0' COMMENT '菜单排序 大->小',
  `key_or_url` varchar(255) DEFAULT '' COMMENT '用于推送到微信平台的key或url(所有以http://开头的表示url，其余一率为key)',
  `event_type` enum('click') DEFAULT 'click' COMMENT '按钮的事件，目前微信只支持click',
  `account_id` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0' COMMENT '是否已推送到微信(0:未推送或失败 1:成功)，该列同一个商家全部相同，菜单为一次性推送,对菜单本地修改时，批量更新该值为0',
  `u_id` int(11) DEFAULT NULL,
  `u_module` varchar(255) DEFAULT NULL,
  `u_action` varchar(255) DEFAULT NULL,
  `u_param` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`),
  KEY `event_type` (`event_type`),
  KEY `account_id` (`account_id`,`key_or_url`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='为微信自定义的菜单设置' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `%DB_PREFIX%weixin_nav`
--

INSERT INTO `%DB_PREFIX%weixin_nav` (`id`, `name`, `sort`, `key_or_url`, `event_type`, `account_id`, `status`, `u_id`, `u_module`, `u_action`, `u_param`, `pid`) VALUES
(1, '22', 1, '', 'click', 5, 0, 0, 'index', '', '111', 0),
(2, '0011', 2, '22', 'click', 8, 0, 0, '', '', '', 0),
(3, '0022', 3, '', 'click', 8, 0, 0, 'index', '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%weixin_reply`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%weixin_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `i_msg_type` enum('event','link','location','image','text') DEFAULT 'text' COMMENT '接收到的微信的推送到本系统api中的MsgType',
  `o_msg_type` enum('news','music','text') DEFAULT 'text' COMMENT '用于响应并回复给微信推送的消息类型 news:图文 music:音乐 text:纯文本',
  `keywords` varchar(300) DEFAULT NULL COMMENT '用于响应文本(i_msg_type:text或者i_event:click时对key的响应)类型的回复时进行匹配的关键词',
  `keywords_match` text COMMENT 'keywords的全文索引列',
  `keywords_match_row` text COMMENT 'keywords全文索引的未作unicode编码的原文，用于开发者查看',
  `address` text COMMENT '用于显示的地理地址',
  `api_address` text COMMENT '用于地理定位的API地址',
  `x_point` varchar(100) DEFAULT '' COMMENT '用于lbs消息,i_msg_type:location 匹配的经度',
  `y_point` varchar(100) DEFAULT '' COMMENT '用于lbs消息,i_msg_type:location 匹配的纬度',
  `scale_meter` int(11) DEFAULT '0' COMMENT '用于lbs消息,i_msg_type:location 匹配的距离范围(米)',
  `i_event` enum('subscribe','unsubscribe','click','empty') DEFAULT 'empty' COMMENT '用于响应i_msg_type为event时的对应事件',
  `reply_content` text COMMENT '回复的文本消息',
  `reply_music` varchar(255) DEFAULT '' COMMENT '回复的音乐链接',
  `reply_news_title` text COMMENT '图文回复的标题',
  `reply_news_description` text COMMENT '图文回复的描述',
  `reply_news_picurl` varchar(255) DEFAULT '' COMMENT '图文回复的图片链接',
  `reply_news_url` varchar(255) DEFAULT '' COMMENT '图文回复的跳转链接',
  `reply_news_content` text,
  `type` tinyint(1) DEFAULT '0' COMMENT '回复归类 \r\n0:普通的回复 \r\n1:默认回复(只能一条文本或图文) \r\n2:官网回复(只能有一条图文)\r\n3.业务数据(图文)\r\n4.关注时回复(只能有一条文本或图文) \r\n5.取消关注时回复(只能有一条文本或图文) ',
  `relate_data` varchar(255) DEFAULT '' COMMENT '关联的业务数据源(如youhui,vote)等',
  `relate_id` int(11) DEFAULT '0' COMMENT '所关联的relate_data的id，用于判断数据关联的删除(指定url)',
  `account_id` int(11) DEFAULT '0' COMMENT '所属的商家ID',
  `default_close` tinyint(1) DEFAULT '1' COMMENT '默认回复是否关闭 0：关闭 1：开启',
  `relate_type` tinyint(1) DEFAULT NULL COMMENT '与关联数据的关系 0:回复数据由关联数据源获取 1:只url跳转数据来源于关联数据',
  `match_type` tinyint(1) NOT NULL DEFAULT '0',
  `u_id` int(11) DEFAULT NULL,
  `u_module` varchar(255) DEFAULT NULL,
  `u_action` varchar(255) DEFAULT NULL,
  `u_param` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_msg_type` (`i_msg_type`),
  KEY `o_msg_type` (`o_msg_type`),
  KEY `i_event` (`i_event`),
  KEY `type` (`type`),
  KEY `relate_data` (`relate_data`),
  KEY `relate_id` (`relate_id`),
  KEY `account_id` (`account_id`),
  KEY `match_type` (`account_id`,`match_type`,`keywords`),
  FULLTEXT KEY `keywords_match` (`keywords_match`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='商家回复设置表' AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `%DB_PREFIX%weixin_reply`
--

INSERT INTO `%DB_PREFIX%weixin_reply` (`id`, `i_msg_type`, `o_msg_type`, `keywords`, `keywords_match`, `keywords_match_row`, `address`, `api_address`, `x_point`, `y_point`, `scale_meter`, `i_event`, `reply_content`, `reply_music`, `reply_news_title`, `reply_news_description`, `reply_news_picurl`, `reply_news_url`, `reply_news_content`, `type`, `relate_data`, `relate_id`, `account_id`, `default_close`, `relate_type`, `match_type`, `u_id`, `u_module`, `u_action`, `u_param`) VALUES
(2, 'text', 'news', '1', '+ux49', '1', '', '', '', '', 0, 'empty', '', '', '2', '22', './public/attachment/201512/24/16/567ba68f2aa7d.gif', '13', '', 0, '', 0, 0, 1, 1, 0, 0, '', '', ''),
(3, 'text', 'text', NULL, NULL, NULL, NULL, NULL, '', '', 0, 'empty', '关注回复 /::)1234567', '', NULL, NULL, '', '', NULL, 4, '', 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL),
(4, 'text', 'text', NULL, NULL, NULL, NULL, NULL, '', '', 0, 'empty', '这个是默认回复  /::)ASD', '', NULL, NULL, '', '', NULL, 1, '', 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL),
(5, 'location', 'news', '234', '+ux50 +ux51 +ux52', '234', '1', '', '119.296494', '26.074508', 10000, 'empty', '', '', '123', '1111', './public/attachment/201512/28/10/56809e99adec8.gif', '23', '', 0, '', 0, 0, 1, 1, 0, 0, '', '', ''),
(6, 'text', 'text', '自定义文本回复', NULL, NULL, NULL, NULL, '', '', 0, 'empty', '文本回复测试', '', NULL, NULL, '', '', NULL, 0, '', 0, 0, 1, NULL, 0, NULL, NULL, NULL, NULL),
(7, 'text', 'text', NULL, NULL, NULL, NULL, NULL, '', '', 0, 'empty', '123', '', NULL, NULL, '', '', NULL, 1, '', 0, 5, 0, NULL, 0, NULL, NULL, NULL, NULL),
(8, 'text', 'text', NULL, NULL, NULL, NULL, NULL, '', '', 0, 'empty', '000  /:handclap /:share', '', NULL, NULL, '', '', NULL, 4, '', 0, 8, 0, NULL, 0, NULL, NULL, NULL, NULL),
(9, 'text', 'text', '123', '', '', '', '', '', '', 0, 'empty', '23', '', '', '', '', '', '', 0, '', 0, 8, 1, 0, 1, 0, '', '', ''),
(12, 'location', 'news', '00', '+ux48 +ux48', '00', '111', '', '119.296494', '26.074508', 1000, 'empty', '', '', '2222', '12345', './public/attachment/201601/07/10/568dca8646b6d.gif', '333', '', 0, '', 0, 8, 1, 1, 0, 0, '', '', ''),
(10, 'text', 'text', NULL, NULL, NULL, NULL, NULL, '', '', 0, 'empty', '/::)', '', NULL, NULL, '', '', NULL, 1, '', 0, 8, 0, NULL, 0, NULL, NULL, NULL, NULL),
(11, 'text', 'news', '123', NULL, NULL, NULL, NULL, '', '', 0, 'empty', NULL, '', '112233', '111222333', './public/attachment/201512/29/14/56822af84938e.gif', 'http://p2p.fanwe.net/index.php?ctl=weixin&act=gz_accept&appid=/$APPID$', NULL, 0, '', 0, 8, 1, 1, 0, 0, '', '', ''),
(14, 'text', 'text', '怎么', NULL, NULL, NULL, NULL, '', '', 0, 'empty', '/:share', '', NULL, NULL, '', '', NULL, 0, '', 0, 8, 1, NULL, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%weixin_reply_relate`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%weixin_reply_relate` (
  `main_reply_id` int(11) DEFAULT '0' COMMENT '主回复ID',
  `relate_reply_id` int(11) DEFAULT '0' COMMENT '关联的多图文用的子回复ID',
  `sort` tinyint(1) DEFAULT '0',
  KEY `main_reply_id` (`main_reply_id`),
  KEY `relate_reply_id` (`relate_reply_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='多图文回复的关联配置';

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%weixin_send`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%weixin_send` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `author` varchar(100) NOT NULL COMMENT '作者件',
  `media_file` varchar(255) NOT NULL COMMENT '多媒体文件',
  `content` text NOT NULL COMMENT '图文消息页面的内容，支持HTML标签',
  `send_type` tinyint(4) NOT NULL COMMENT '0普通群发，1高级群发',
  `user_type` tinyint(4) NOT NULL COMMENT '发送对 0所有 1会员组 2会员等级',
  `user_type_id` int(11) NOT NULL COMMENT '组ID或者等级ID',
  `msgtype` enum('news','music','video','voice','image','text') NOT NULL COMMENT '消息类型',
  `relate_type` tinyint(4) NOT NULL COMMENT '与关联数据的关系 0:回复数据由关联数据源获取 1:只url跳转数据来源于关联数据',
  `relate_data` varchar(255) NOT NULL,
  `relate_id` int(255) NOT NULL,
  `url` varchar(255) NOT NULL COMMENT '连接地址',
  `digest` text NOT NULL COMMENT '简介',
  `account_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `create_time` int(11) NOT NULL,
  `send_time` int(11) NOT NULL COMMENT '推送时间',
  `media_id` varchar(255) NOT NULL COMMENT '微信服务器的关联多媒体ID',
  `u_id` int(11) NOT NULL,
  `u_module` varchar(255) NOT NULL,
  `u_action` varchar(255) NOT NULL,
  `u_param` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- 转存表中的数据 `%DB_PREFIX%weixin_send`
--

INSERT INTO `%DB_PREFIX%weixin_send` (`id`, `title`, `author`, `media_file`, `content`, `send_type`, `user_type`, `user_type_id`, `msgtype`, `relate_type`, `relate_data`, `relate_id`, `url`, `digest`, `account_id`, `status`, `create_time`, `send_time`, `media_id`, `u_id`, `u_module`, `u_action`, `u_param`) VALUES
(32, '234', '', '', '12345', 0, 0, 0, 'text', 0, '', 0, '', '', 8, 1, 1451268574, 1451945993, '', 0, '', '', ''),
(30, '是是是', '', '', '1111', 0, 0, 0, 'text', 0, '', 0, '', '', 8, 1, 1451268423, 1451269676, '', 0, '', '', ''),
(31, '000', '', './public/attachment/201601/07/17/568e33342c92f.jpg', '111', 1, 0, 2, 'news', 0, '', 0, '', '0000', 8, 1, 1451945904, 1452131158, 'CoCjWFC3gJGh-e4rBydi9NVvTUnnaZTLp75bRfbDhkVpWwdfxLg8gQ3KcvSEc14i', 0, '', '', ''),
(34, '111', '', '', '123', 0, 0, 0, 'text', 0, '', 0, '', '', 8, 1, 1451953230, 1453682498, '', 0, '', '', ''),
(35, '1234', '', './public/attachment/201601/07/17/568e36c12b469.jpg', '555', 0, 0, 752, 'news', 0, '', 0, '', '000', 8, 1, 1451955410, 1452132333, '', 0, '', '', ''),
(36, '0000000', '', './public/attachment/201601/07/17/568e3592c487d.mp3', '', 0, 0, 0, 'voice', 0, '', 0, '', '', 8, 1, 1452131608, 1452131634, '', 0, '', '', ''),
(37, 'lklklasdfasdf', '', './public/attachment/201601/07/18/568e38ba13be6.jpg', 'lklklasdfasdf', 0, 0, 0, 'news', 0, '', 0, '', 'lklklasdfasdf', 8, 1, 1452132420, 1452210725, '', 0, '', '', ''),
(38, '17', '', './public/attachment/201601/07/18/568e3b50b6611.jpg', '111', 1, 0, 2, 'news', 0, '', 0, '', '2222', 8, 1, 1452133093, 1452133103, '0ke72v5XiLADi_ynUc6neVbMZBbyCnbMKs0vlYfZjCwMLG5YEer9GAZpY-1AkFcq', 0, '', '', ''),
(39, '微信测试', '', './public/attachment/201601/08/16/568f7404b09d7.jpg', '这个可以用', 1, 0, 2, 'news', 0, '', 0, '', '不错', 8, 1, 1452213159, 1452213172, 'sV3HH6s0ruTQBaNbkD9SMCItRV79mXxDbCY01cAJwAbL1MNxP58nJ6iXbXQZdbZw', 0, 'licai_deals', 'index', ''),
(40, '中奖信息通知', '', './public/attachment/201601/11/10/56930d36771d2.jpg', '00123', 0, 0, 760, 'text', 0, '', 0, '', '', 8, 1, 1452448904, 1452451225, '', 0, '', '', ''),
(41, '1.11', '', './public/attachment/201601/11/10/56930d7d3b427.jpg', '000', 1, 0, 2, 'news', 0, '', 0, '', '111', 8, 1, 1452449029, 1452449035, 'n4VJgFvpnFUcLKSbBoEmKUBLtHYFWEyWW6cSFzSRVwy2mdEOuNM2sMfV8g1ujJqZ', 0, '', '', ''),
(42, '123', '', '', '鼓楼区工业路523号福大怡山文化创意园（原福大机械厂）8#101座2层（方维）', 0, 0, 760, 'text', 0, '', 0, '', '', 8, 1, 1452563605, 1452563622, '', 0, '', '', ''),
(43, 'test', '', './public/attachment/201601/25/14/56a5c2368d189.jpg', 'test test test test', 0, 0, 0, 'news', 0, '', 0, '', 'test', 8, 1, 1453674953, 1453682477, '', 0, 'show_article', 'index', ''),
(44, 'test', '', './public/attachment/201601/25/14/56a5c2ff406a9.jpg', 'test test test test', 1, 0, 2, 'news', 0, '', 0, '', 'test', 8, 1, 1453675146, 1453682905, 'hwEwvYBb4BJobDbPQ9FCU3BrDjosKrTD7MG9EmqOQSmyEvjAVyFYD6qU7IKakYYB', 0, '', '', ''),
(45, 'test1', '', './public/attachment/201601/25/16/56a5e27a95757.jpg', '订单', 1, 0, 2, 'news', 0, '', 0, '', '订单', 8, 0, 1453683200, 0, '', 0, '', '', ''),
(46, 'test2', '', './public/attachment/201601/25/16/56a5e29c3dcfb.jpg', '订单', 1, 0, 2, 'news', 0, '', 0, '', '订单', 8, 0, 1453683232, 0, '', 0, '', '', ''),
(47, 'test3', '', './public/attachment/201601/25/16/56a5e2ba74d81.jpg', '点点滴滴', 1, 0, 2, 'news', 0, '', 0, '', '点点滴滴', 8, 0, 1453683263, 0, '', 0, '', '', ''),
(48, 'test5', '', './public/attachment/201601/25/16/56a5e3b51f5d8.jpg', '古古怪怪', 1, 0, 2, 'news', 0, '', 0, '', '古古怪怪', 8, 0, 1453683517, 0, '', 0, '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%weixin_send_relate`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%weixin_send_relate` (
  `relate_id` int(11) NOT NULL,
  `send_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%weixin_tmpl`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%weixin_tmpl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '' COMMENT '模板名称',
  `msg` text COMMENT '模板内容',
  `template_id` varchar(255) DEFAULT NULL COMMENT '模板ID',
  `template_id_short` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT '0' COMMENT '菜单排序 大->小',
  `account_id` int(11) DEFAULT '0' COMMENT '所属的商家ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='微信模板' AUTO_INCREMENT=132 ;

--
-- 转存表中的数据 `%DB_PREFIX%weixin_tmpl`
--

INSERT INTO `%DB_PREFIX%weixin_tmpl` (`id`, `name`, `msg`, `template_id`, `template_id_short`, `sort`, `account_id`) VALUES
(121, '回款通知', 'a:2:{s:5:"first";s:12:"回款通知";s:6:"remark";a:2:{s:5:"value";s:18:"点此了解详情";s:5:"color";s:7:"#173177";}}', 'sqgPFmhIE7awMipuIe15y0DL4PboRzNOHaDHAnYGjCI', 'OPENTM207940989', 0, 8),
(122, '投标结果通知', 'a:2:{s:5:"first";a:2:{s:5:"value";s:18:"投标结果通知";s:5:"color";s:7:"#173177";}s:6:"remark";a:2:{s:5:"value";s:21:"满标放款成功！";s:5:"color";s:7:"#173177";}}', 'W-8056-onkxZMQUTJN9-RyzSc2uTWw9PGNMeCt62r6s', 'OPENTM200685723', 0, 8),
(123, '验证通知', 'a:2:{s:5:"first";s:12:"验证通知";s:6:"remark";a:2:{s:5:"value";s:84:"若非本人操作，可能您的帐号存在安全风险，请及时修改密码。";s:5:"color";s:7:"#173177";}}', 'UsyV5oq0RwoSkjg8ARDzPdB9CSrln8Ph7jVi8xw7NZI', 'OPENTM203026900', 0, 8),
(124, '订单支付成功通知', 'a:2:{s:5:"first";s:24:"订单支付成功通知";s:6:"remark";a:2:{s:5:"value";s:18:"点此了解详情";s:5:"color";s:7:"#173177";}}', 'y2xETncCEJ29tvgBg0EIN-nHNFqPygAq0SOBeQjHI-A', 'OPENTM207791277', 0, 8),
(125, '贷款还款提醒', 'a:2:{s:5:"first";s:18:"贷款还款提醒";s:6:"remark";a:2:{s:5:"value";s:51:"如非您本人操作，请尽快查明原因哦。";s:5:"color";s:7:"#173177";}}', 'yMglfGUi2zSCHDKaClBhXDVxQvuZYj4FqV9Np6g9w9k', 'OPENTM400811886', 0, 8),
(126, '成功获取额度通知', 'a:2:{s:5:"first";s:24:"成功获取额度通知";s:6:"remark";a:2:{s:5:"value";s:36:"有任何疑问，请致电客服。";s:5:"color";s:7:"#173177";}}', 'DE9nCzP5xWpF9zvAPJFj3NnWFE0DI9QBexrmbk-Dfu0', 'OPENTM207582660', 0, 8),
(127, '提现成功通知', 'a:2:{s:5:"first";s:18:"提现成功通知";s:6:"remark";a:2:{s:5:"value";s:36:"有任何疑问，请致电客服。";s:5:"color";s:7:"#173177";}}', 'gQj-c-o99MkIO1T0-js_JkbmzWfG6voVkvHmxkMZjUA', 'TM00980', 0, 8),
(130, '还款成功通知', 'a:2:{s:5:"first";s:18:"还款成功通知";s:6:"remark";a:2:{s:5:"value";s:36:"有任何疑问，请致电客服。";s:5:"color";s:7:"#173177";}}', 'OseSNGAMF6LVkA3SOPrbccWtE9T4k9lltLd6BtNYPns', 'OPENTM207128740', 0, 8),
(129, '审核结果通知', 'a:2:{s:5:"first";s:18:"审核结果通知";s:6:"remark";a:2:{s:5:"value";s:18:"点此了解详情";s:5:"color";s:7:"#173177";}}', 'EjxIHm8H0rT-CCJT67uTdzRYBr-2oipscSZSg6RBfQ4', 'OPENTM204320762', 0, 8),
(131, '还款信息通知', 'a:2:{s:5:"first";s:18:"还款信息通知";s:6:"remark";a:2:{s:5:"value";s:36:"有任何疑问，请致电客服。";s:5:"color";s:7:"#173177";}}', 'i8bE8psWUpyoJJetBDrw9-BkTMMc2YwIHn4QnpNnsRw', 'OPENTM205975633', 0, 8);

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%weixin_user`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%weixin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '会员ID',
  `account_id` int(11) NOT NULL,
  `subscribe` tinyint(1) NOT NULL COMMENT '用户是否订阅该公众号标识，值为0时，代表此用户没有关注该公众号，拉取不到其余信息。',
  `openid` varchar(255) NOT NULL COMMENT '用户的标识，对当前公众号唯一',
  `nickname` varchar(255) NOT NULL,
  `sex` tinyint(1) NOT NULL COMMENT '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
  `city` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `headimgurl` varchar(255) DEFAULT NULL,
  `subscribe_time` varchar(255) DEFAULT NULL COMMENT '用户关注时间，为时间戳。如果用户曾多次关注，则取最后关注时间',
  `unionid` varchar(255) DEFAULT NULL COMMENT '只有在用户将公众号绑定到微信开放平台帐号后，才会出现该字段。',
  `remark` varchar(255) DEFAULT NULL COMMENT '公众号运营者对粉丝的备注，公众号运营者可在微信公众平台用户管理界面对粉丝添加备注',
  `groupid` int(11) DEFAULT NULL COMMENT '用户所在的分组ID',
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='//微信公众号会员列表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%yeepay_bind_bank_card`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%yeepay_bind_bank_card` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `requestNo` int(10) NOT NULL DEFAULT '0' COMMENT 'yeepay_log.id',
  `platformUserNo` int(11) NOT NULL DEFAULT '0' COMMENT '%DB_PREFIX%user.id',
  `platformNo` varchar(20) NOT NULL,
  `bankCardNo` varchar(50) NOT NULL DEFAULT '' COMMENT '绑定的卡号',
  `bank` varchar(20) NOT NULL DEFAULT '' COMMENT '卡的开户行',
  `cardStatus` varchar(20) NOT NULL COMMENT '卡的状态VERIFYING 认证中 VERIFIED 已认证',
  `is_callback` tinyint(1) NOT NULL DEFAULT '0',
  `bizType` varchar(50) DEFAULT NULL COMMENT '业务名称',
  `code` varchar(50) DEFAULT NULL COMMENT '返回码;1 成功 0 失败 2 xml参数格式错误 3 签名验证失败 101 引用了不存在的对象（例如错误的订单号） 102 业务状态不正确 103 由于业务限制导致业务不能执行 104 实名认证失败',
  `message` varchar(255) DEFAULT NULL COMMENT '描述异常信息',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`requestNo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%yeepay_cp_transaction`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%yeepay_cp_transaction` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `requestNo` int(10) NOT NULL DEFAULT '0' COMMENT 'yeepay_log.id',
  `platformNo` varchar(20) NOT NULL,
  `platformUserNo` int(11) NOT NULL DEFAULT '0' COMMENT '%DB_PREFIX%user.id',
  `userType` varchar(20) NOT NULL DEFAULT 'MEMBER' COMMENT '出款人用户类型，目前只支持传入 MEMBER\r\nMEMBER 个人会员 MERCHANT 商户 ',
  `bizType` varchar(50) NOT NULL COMMENT 'TENDER 投标 REPAYMENT 还款 CREDIT_ASSIGNMENT 债权转让 TRANSFER 转账 COMMISSION 分润，仅在资金转账明细中使用',
  `expired` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '超过此时间即不允许提交订单',
  `tenderOrderNo` int(11) DEFAULT '0' COMMENT '项目编号',
  `tenderName` varchar(255) DEFAULT NULL COMMENT '项目名称 ',
  `tenderAmount` decimal(20,2) DEFAULT NULL COMMENT '项目金额',
  `tenderDescription` varchar(255) DEFAULT NULL COMMENT '项目描述信息',
  `borrowerPlatformUserNo` int(11) DEFAULT NULL COMMENT '项目的借款人平台用户编号',
  `originalRequestNo` int(11) DEFAULT NULL COMMENT '需要转让的投资记录流水号',
  `paymentAmount` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '投标金额',
  `details` text COMMENT '资金明细记录',
  `extend` text COMMENT '业务扩展属性，根据业务类型的不同，需要传入不同的参数。',
  `transfer_id` int(11) NOT NULL DEFAULT '0' COMMENT '债权转让id %DB_PREFIX%deal_load_transfer.id',
  `is_callback` tinyint(1) NOT NULL DEFAULT '0',
  `is_complete_transaction` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'is_callback=1时，才生效;判断是否已经完成转帐',
  `code` varchar(50) DEFAULT NULL COMMENT '返回码;1 成功 0 失败 2 xml参数格式错误 3 签名验证失败 101 引用了不存在的对象（例如错误的订单号） 102 业务状态不正确 103 由于业务限制导致业务不能执行 104 实名认证失败',
  `message` varchar(255) DEFAULT NULL COMMENT '描述异常信息',
  `description` varchar(255) DEFAULT NULL,
  `deal_repay_id` int(11) DEFAULT NULL COMMENT '还款计划ID',
  `fee` decimal(20,2) DEFAULT NULL,
  `repay_start_time` varchar(50) DEFAULT NULL COMMENT '记录还款时间',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL COMMENT '易宝处理时间',
  `ecv_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`requestNo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1300094 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%yeepay_cp_transaction_detail`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%yeepay_cp_transaction_detail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL DEFAULT '0' COMMENT '%DB_PREFIX%yeepay_repayment.id',
  `deal_load_repay_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户回款计划表',
  `targetUserType` int(11) NOT NULL DEFAULT '0' COMMENT '用户类型',
  `targetPlatformUserNo` int(11) NOT NULL DEFAULT '0' COMMENT '平台用户编号',
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '转入金额',
  `bizType` varchar(20) NOT NULL DEFAULT '' COMMENT '资金明细业务类型。根据业务的不同，需要传入不同的值，见【业务类型',
  `repay_manage_impose_money` decimal(20,2) DEFAULT NULL COMMENT '平台收取借款者的管理费逾期罚息',
  `impose_money` decimal(20,2) DEFAULT NULL COMMENT '投资者收取借款者的逾期罚息',
  `repay_status` int(11) DEFAULT NULL COMMENT '还款状态',
  `true_repay_time` int(11) DEFAULT NULL COMMENT '还款时间',
  `fee` decimal(20,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=68 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%yeepay_enterprise_register`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%yeepay_enterprise_register` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `requestNo` int(10) NOT NULL DEFAULT '0' COMMENT 'yeepay_log.id',
  `platformUserNo` int(11) DEFAULT '0' COMMENT '%DB_PREFIX%user.id',
  `platformNo` varchar(20) DEFAULT NULL,
  `enterpriseName` varchar(50) DEFAULT NULL COMMENT '企业名称',
  `bankLicense` varchar(50) DEFAULT NULL COMMENT '开户银行许可证',
  `orgNo` varchar(50) DEFAULT NULL COMMENT '组织机构代码',
  `businessLicense` varchar(50) DEFAULT NULL COMMENT '营业执照编号',
  `taxNo` varchar(20) DEFAULT NULL COMMENT '税务登记号',
  `legal` varchar(50) DEFAULT NULL COMMENT '法人姓名',
  `legalIdNo` varchar(20) DEFAULT NULL COMMENT '法人身份证号',
  `contact` varchar(20) DEFAULT NULL COMMENT '企业联系人',
  `contactPhone` varchar(20) DEFAULT NULL COMMENT '联系人手机号',
  `email` varchar(50) DEFAULT NULL COMMENT '联系人邮箱',
  `memberClassType` varchar(255) DEFAULT NULL COMMENT '会员类型ENTERPRISE：企业借款人;GUARANTEE_CORP：担保公司',
  `is_callback` tinyint(1) NOT NULL DEFAULT '0',
  `bizType` varchar(50) DEFAULT NULL COMMENT '业务名称',
  `code` varchar(50) DEFAULT NULL COMMENT '返回码;1 成功 0 失败 2 xml参数格式错误 3 签名验证失败 101 引用了不存在的对象（例如错误的订单号） 102 业务状态不正确 103 由于业务限制导致业务不能执行 104 实名认证失败',
  `message` varchar(255) DEFAULT NULL COMMENT '描述异常信息',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`requestNo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%yeepay_log`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%yeepay_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `create_date` datetime NOT NULL,
  `strxml` text,
  `html` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=455581 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%yeepay_recharge`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%yeepay_recharge` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `requestNo` int(10) NOT NULL DEFAULT '0' COMMENT 'yeepay_log.id',
  `platformUserNo` int(11) NOT NULL DEFAULT '0' COMMENT '%DB_PREFIX%user.id',
  `platformNo` varchar(20) NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `feeMode` varchar(50) NOT NULL DEFAULT 'PLATFORM' COMMENT '费率模式PLATFORM',
  `is_callback` tinyint(1) NOT NULL DEFAULT '0',
  `bizType` varchar(50) DEFAULT NULL COMMENT '业务名称',
  `code` varchar(50) DEFAULT NULL COMMENT '返回码;1 成功 0 失败 2 xml参数格式错误 3 签名验证失败 101 引用了不存在的对象（例如错误的订单号） 102 业务状态不正确 103 由于业务限制导致业务不能执行 104 实名认证失败',
  `message` varchar(255) DEFAULT NULL COMMENT '描述异常信息',
  `description` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `fee` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '手续费',
  PRIMARY KEY (`id`,`requestNo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=142 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%yeepay_register`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%yeepay_register` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `requestNo` int(10) NOT NULL DEFAULT '0' COMMENT 'yeepay_log.id',
  `platformUserNo` int(11) DEFAULT '0' COMMENT '%DB_PREFIX%user.id',
  `platformNo` varchar(20) DEFAULT NULL,
  `nickName` varchar(50) DEFAULT NULL,
  `realName` varchar(50) DEFAULT NULL,
  `idCardNo` varchar(50) DEFAULT NULL,
  `idCardType` varchar(50) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `is_callback` tinyint(1) NOT NULL DEFAULT '0',
  `bizType` varchar(50) DEFAULT NULL COMMENT '业务名称',
  `code` varchar(50) DEFAULT NULL COMMENT '返回码;1 成功 0 失败 2 xml参数格式错误 3 签名验证失败 101 引用了不存在的对象（例如错误的订单号） 102 业务状态不正确 103 由于业务限制导致业务不能执行 104 实名认证失败',
  `message` varchar(255) DEFAULT NULL COMMENT '描述异常信息',
  `description` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`requestNo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=117 ;

-- --------------------------------------------------------

--
-- 表的结构 `%DB_PREFIX%yeepay_withdraw`
--

CREATE TABLE IF NOT EXISTS `%DB_PREFIX%yeepay_withdraw` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `requestNo` int(10) NOT NULL DEFAULT '0' COMMENT 'yeepay_log.id',
  `platformUserNo` int(11) NOT NULL DEFAULT '0' COMMENT '%DB_PREFIX%user.id',
  `platformNo` varchar(20) NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `feeMode` varchar(50) NOT NULL DEFAULT '' COMMENT 'PLATFORM 收取商户手续费 USER 收取用户手续费',
  `is_callback` tinyint(1) NOT NULL DEFAULT '0',
  `bizType` varchar(50) DEFAULT NULL COMMENT '业务名称',
  `code` varchar(50) DEFAULT NULL COMMENT '返回码;1 成功 0 失败 2 xml参数格式错误 3 签名验证失败 101 引用了不存在的对象（例如错误的订单号） 102 业务状态不正确 103 由于业务限制导致业务不能执行 104 实名认证失败',
  `message` varchar(255) DEFAULT NULL COMMENT '描述异常信息',
  `description` varchar(255) DEFAULT NULL,
  `cardNo` varchar(50) DEFAULT NULL COMMENT '绑定的卡号',
  `bank` varchar(20) DEFAULT NULL COMMENT '卡的开户行',
  `create_time` int(11) DEFAULT NULL,
  `fee` decimal(20,2) DEFAULT NULL COMMENT '手续费',
  PRIMARY KEY (`id`,`requestNo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=8 ;