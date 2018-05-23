-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- 主機: localhost
-- 產生時間： 2018 年 05 月 19 日 20:52
-- 伺服器版本: 10.1.31-MariaDB
-- PHP 版本： 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `floatplane`
--

-- --------------------------------------------------------

--
-- 資料表結構 `login`
--

CREATE TABLE `login` (
  `user_id` int(4) NOT NULL,
  `login_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `worker_id` int(4) NOT NULL,
  `access_level` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `login`
--

INSERT INTO `login` (`user_id`, `login_id`, `password`, `worker_id`, `access_level`, `active`) VALUES
(1, 'admin', 'password', 1, 1, 1),
(2, 'fschan', 'password', 2, 1, 1),
(3, 'worker1', 'worker1', 3, 0, 1),
(4, 'hsyeung', 'hsyeung', 4, 0, 1),
(5, 'pychan', 'pychan', 5, 0, 1),
(6, 'kklam', 'kklam', 6, 0, 1),
(7, 'ymchan', 'ymchan', 7, 0, 1),
(8, 'hllau', 'hllau', 8, 0, 1),
(9, 'ycleung', 'ycleung', 9, 0, 1),
(10, 'admin1', 'password', 10, 1, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `order_for_worker`
--

CREATE TABLE `order_for_worker` (
  `worker_order_id` int(5) NOT NULL,
  `work_id` int(10) NOT NULL,
  `worker_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `order_for_worker`
--

INSERT INTO `order_for_worker` (`worker_order_id`, `work_id`, `worker_id`) VALUES
(6, 1, 4),
(9, 2, 4),
(10, 2, 5),
(12, 3, 5),
(14, 4, 7),
(17, 5, 8),
(18, 5, 4),
(23, 6, 8),
(24, 6, 5),
(28, 7, 6),
(29, 7, 9),
(30, 7, 7),
(33, 8, 4),
(34, 8, 7),
(37, 9, 4),
(38, 9, 7),
(42, 10, 8),
(43, 10, 7),
(44, 10, 7),
(48, 11, 6),
(49, 11, 9),
(50, 11, 7),
(52, 12, 7),
(57, 13, 6),
(58, 13, 9),
(59, 13, 7),
(60, 13, 3),
(62, 14, 4),
(65, 15, 4),
(66, 15, 7),
(71, 17, 8),
(72, 17, 5),
(73, 16, 4),
(74, 16, 7),
(78, 18, 4),
(79, 18, 6),
(80, 18, 7),
(84, 19, 6),
(85, 19, 9),
(86, 19, 7),
(88, 20, 2),
(94, 22, 8),
(95, 22, 5),
(102, 23, 8),
(103, 23, 4),
(104, 24, 8),
(105, 24, 7),
(108, 21, 2),
(109, 25, 8),
(110, 25, 4),
(113, 26, 8),
(114, 26, 4),
(117, 27, 8),
(118, 27, 7),
(121, 28, 4),
(122, 28, 6),
(125, 29, 5),
(126, 29, 9),
(128, 30, 5),
(135, 32, 8),
(136, 32, 7),
(137, 31, 8),
(138, 31, 7),
(141, 33, 8),
(142, 33, 7),
(145, 34, 8),
(146, 34, 4),
(149, 35, 8),
(150, 35, 4),
(153, 36, 8),
(154, 36, 4),
(159, 38, 4),
(160, 38, 6),
(161, 37, 8),
(162, 37, 7),
(166, 39, 2),
(167, 39, 4),
(168, 39, 6),
(172, 40, 2),
(173, 40, 4),
(174, 40, 6),
(177, 41, 8),
(178, 41, 7),
(180, 42, 7),
(184, 43, 8),
(185, 43, 6),
(186, 43, 7),
(189, 44, 8),
(190, 44, 7),
(197, 45, 8),
(198, 45, 7),
(205, 46, 8),
(206, 46, 7),
(207, 47, 5),
(208, 47, 7),
(219, 49, 8),
(220, 49, 4),
(223, 50, 6),
(224, 50, 7),
(225, 51, 8),
(226, 51, 7),
(227, 48, 8),
(228, 48, 3),
(229, 52, 8),
(230, 52, 4),
(232, 53, 7),
(235, 54, 8),
(236, 54, 7),
(239, 55, 8),
(240, 55, 7),
(250, 60, 8),
(251, 60, 4),
(252, 59, 8),
(253, 59, 4),
(254, 57, 8),
(255, 57, 4),
(258, 56, 8),
(259, 56, 7),
(260, 58, 4),
(263, 61, 8),
(264, 61, 4),
(272, 62, 8),
(273, 62, 7),
(274, 63, 5),
(275, 64, 8),
(276, 64, 6),
(277, 64, 9),
(278, 64, 7),
(285, 65, 8),
(286, 65, 4),
(287, 66, 9),
(288, 67, 8),
(289, 67, 4),
(290, 68, 4),
(309, 69, 9),
(310, 70, 8),
(311, 70, 4),
(316, 71, 8),
(317, 71, 4),
(318, 72, 8),
(319, 72, 4),
(323, 73, 7),
(324, 74, 8),
(325, 74, 4),
(329, 75, 6),
(330, 75, 7),
(331, 76, 9),
(335, 77, 8),
(336, 77, 4),
(337, 77, 6),
(345, 79, 8),
(346, 79, 4),
(347, 79, 3),
(366, 78, 8),
(367, 78, 4),
(368, 78, 3);

-- --------------------------------------------------------

--
-- 資料表結構 `station`
--

CREATE TABLE `station` (
  `sta_id` int(4) NOT NULL,
  `sta_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `visible` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `station`
--

INSERT INTO `station` (`sta_id`, `sta_name`, `address`, `telephone`, `status`, `visible`) VALUES
(1, 'HK/243 九龍灣(西)', '九龍灣啟福道 8 號(向土瓜灣方向)', '27989508', 1, 1),
(2, 'HK/255 九龍灣(東)', '九龍灣啟福道 5 號 (向觀塘方向)', '27589621', 1, 1),
(3, 'HK/303 將軍澳', '將軍澳寶康路 100號 (欣宜花園對面)', '27036373', 1, 1),
(4, 'HK/320 馬鞍山', '馬鞍山鞍山里 21號', '26408705', 1, 1),
(5, 'HK/325 葵涌 ', '大窩口青山公路 682-688號(向九龍方向)', '24200518', 1, 1),
(6, 'HK/328 新青衣', '青衣西路 173號', '24310223', 1, 1),
(7, 'HK/333 粉嶺北', '粉嶺沙頭角路', '27763823', 1, 1),
(8, 'HK/388 錦上路', '元朗八鄉錦上路 (近三號幹線)', '24832537', 1, 1),
(9, 'HK/833 機場(客運大樓)', '赤鱲角機場暢景路6 號', '29490328', 1, 1),
(10, 'HK/888 舊機場(客運大樓)', '赤鱲角機場暢連路6 號', '29490328', 2, 1),
(11, 'test', '1111', '1111', 1, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `worker`
--

CREATE TABLE `worker` (
  `worker_id` int(4) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `cbre_passport` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `worker_type` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `worker`
--

INSERT INTO `worker` (`worker_id`, `name`, `cbre_passport`, `telephone`, `status`, `worker_type`) VALUES
(1, 'admin', '000', '26471358', 1, 2),
(2, 'FS Chan', 'PI2016-010', '66666666', 1, 1),
(3, 'YT Chan', 'PI2017-024', '1111', 1, 1),
(4, 'HS Yeung', 'PI2017-022', '88443639', 1, 1),
(5, 'PY Chan', 'PI2017-033', '84525335', 1, 1),
(6, 'KK Lam', 'PI2016-031', '63095337', 1, 1),
(7, 'YM Chan', 'PI2017-023', '93760915', 1, 1),
(8, 'HL Lau', 'PI2017-021', '91064474', 1, 1),
(9, 'YC Leung', 'PI2017-024', '83812303', 1, 1),
(10, 'Yvonne Cheung', '0', '0', 1, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `work_order`
--

CREATE TABLE `work_order` (
  `work_id` int(10) NOT NULL,
  `rec_date` datetime NOT NULL,
  `work_order_no` int(12) NOT NULL,
  `sta_id` int(4) NOT NULL,
  `work_description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `priority` tinyint(4) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `complete_date` date DEFAULT NULL,
  `reason` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `affected_nozzle` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_id` int(3) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `work_order`
--

INSERT INTO `work_order` (`work_id`, `rec_date`, `work_order_no`, `sta_id`, `work_description`, `priority`, `start_time`, `end_time`, `complete_date`, `reason`, `affected_nozzle`, `type_id`, `status`) VALUES
(1, '2018-01-01 14:30:00', 1007285091, 5, 'All LPG unable to work', 5, '15:00:00', '16:59:00', '2018-01-01', '***Ecall-14:30*** 站報石油氣系統未能運作, 要求到場檢查. \r\n1.) 經檢查發現石油氣潛液泵出口壓力不穩定導致石油氣控掣箱著D.P.S.燈. \r\n2.) 檢查潛液泵出口壓力為150psi, 電流約7.5A, 運作時數 6033.2H. \r\n3.) 檢查後建議更換新石油氣潛液泵1套. \r\n4.) 已通知站減少使用加氣鎗數目及暫停使用.', 'n.a.', 10, 3),
(2, '2018-01-03 09:00:00', 2147483647, 2, 'P19 P20 LPG slow delivery of gas', 4, '17:05:00', '19:40:00', '2018-01-03', '***Ecall***WP#2018-1001; \r\n1.) 站報19號 & 20號鎗流量慢, 檢查後已即時更換過濾芯共2個(Stocks) ; \r\n流量:19號-停鎗/33升;\r\n 20號-14升/33升; \r\n21號-15升/34升; \r\n22號-16升/33升(入車/回缸). \r\n2.) 泡沫及手提探測器測試LEL 0%. ', '19,20', 14, 3),
(3, '2018-01-03 22:30:00', 1007285666, 8, 'All LPG unable ti function.', 5, '23:10:00', '00:25:00', '2018-01-04', '***Ecall***1.) 站報石油氣系統不能運作停站, 已檢查發現因壓縮泵壓力異常導致已重置系統試鎗正常. \r\n2.) 已通知站找CBRE跟進壓縮泵. \r\n3.)泡沫及手提氣體探測器測試LEL 0%. \r\n4.) 檢查時發現石油氣用壓縮泵旁通掣被開啟導致壓力異常已關旁通掣.', 'n.a.', 10, 3),
(4, '2018-01-04 09:00:00', 1007297403, 7, 'LPG unable to function after the emergency button was pressed accidentally.', 5, '10:45:00', '11:45:00', '2018-01-04', '***Ecall*** 站報客人誤觸緊急掣, 重置後無法使用石油氣\r\n1.) 已重置系統及檢查入油情況正常, 使用手提氣體探測器測試LEL 0%.', 'n.a.', 2, 3),
(5, '2018-01-13 08:30:00', 2147483647, 3, 'P11-P14 LPG slow dispensing and require inspection (still in use)', 3, '09:15:00', '00:10:00', '2018-01-13', 'WP#2018-1003\r\n站報11,12,13,14號鎗流量慢; \r\n1.) 經檢查後發現5,6號鎗流量慢; 已更換過濾芯共3個(Stocks). \r\n流量: 5號-18升/35升; 6號-19升/34升; 11號-15升/35; 12號-14升/34升; 13號 15升/35升; 14號 15升/35升(入車/回缸), \r\n使用泡沫及手提氣體探測機測試為0% LEL. \r\n2.) 發現5,6號加氣機機底REGO 6579C損壞, 已更換全新REGO 6579C 一套 (Stock). ', '11-14', 15, 3),
(6, '2018-01-17 09:00:00', 2147483647, 6, 'P16-P19 LPG slow dispensing and require inspection (still in use).', 1, '09:50:00', '11:50:00', '2018-01-17', 'WP#2018-1004; 站報P16-19號鎗流量慢; \r\n1.) 經檢查後已更換過濾芯共2個(Stocks). 流量: 16號-14升/35升; 17號: 停鎗/34升;18號-15升/35升; 19號-15升/35升(入倉/回缸). \r\n2.) 清理卸氣點過濾網. \r\n3.) 檢查石油氣缸蓋, 炮塔位置及水位情況, 水位現約450mm. \r\n4.) 使用手提氣體探測為0% LEL.', '16-19', 15, 3),
(7, '2018-01-17 09:00:00', 1007300939, 4, 'To replace / clean the cellulose filters for LPG', 1, '13:30:00', '15:30:00', '2018-01-20', 'WP#2018-1010;  \r\n1.) 更換1-4號加氣機過濾芯共2個(Stocks). 流量:1號-34升; 2號-32升; 3號-35升; 4號-35升(回缸); \r\n2.) 清理缸車卸氣點過濾網. \r\n3.) 泡沫及氣體探測器測試正常LEL 0%\r\n油缸車到場時間: 14:25-14:55', '1-4', 13, 3),
(8, '2018-01-19 09:00:00', 1007300946, 1, 'To replace / clean the cellulose filters for LPG', 1, '09:00:00', '11:50:00', '2018-01-26', 'WP#2018-1007;  \r\n1.) 已更換13-16號加氣機過濾芯共2個(Stocks).  流量: 13號-38升; 14號-38升; 15號-37升; 16號-37升(回缸); \r\n2.) 已檢查及清理卸氣點過濾網. \r\n3.) 使用手提氣體探測器測試LEL 0%.', 'n.a.', 13, 3),
(9, '2018-01-19 09:00:00', 1007300949, 2, 'To replace / clean the cellulose filters for LPG', 1, '09:00:00', '16:00:00', '2018-01-25', 'WP#2018-1008;  \r\n1.) 檢查及清理卸氣點過濾網及加氣機. \r\n2.) 已更換19-20號加氣機過濾芯共2個(Stocks). \r\n流量: 19號-24升; 20號-24升; 21號-24升(入車); 22號-36升(回缸); \r\n3.) 已檢查及清理卸氣點過濾網.\r\n 4.) 使用手提氣體探測器測試LEL 0%. \r\n石油氣缸車到達時間: 09:21-10:40; \r\n油缸車到達時間: 10:45-11:35. \r\n***豁免收費, Refer WO#1007307589 ***', 'n.a.', 12, 3),
(10, '2018-01-19 09:00:00', 1007300952, 3, 'To replace / clean the cellulose filters for LPG', 1, '13:00:00', '15:30:00', '2018-01-21', 'WP#2018-1009; \r\n更換過濾芯及清理卸氣點過濾網. \r\n1.) 已更換P5, P6, P11-P14號鎗過濾芯共3個(Stocks). \r\n流量: 5號-25升; 6號-24升; 11號-25升; 12號-24升; 13號-25升; 14號-25升(入車); \r\n2.) 已清理卸氣點過濾網. \r\n3.) 使用手提氣體探測機測試LEL 0%.', '5-6,11-14', 13, 3),
(11, '2018-01-19 09:00:00', 1007300956, 7, 'To replace / clean the cellulose filters for LPG', 1, '09:40:00', '12:15:00', '2018-01-20', 'WP#2018-1011; \r\n1.)更換11-16加氣機過濾芯共3個(Stocks). 流量: 15號-22升; 16號-35升; 13號-33升; 14號-33升; 11號-32升; 12號-32升(回缸); \r\n2.) 已清理缸車卸氣點過濾網,\r\n 手提探測器及泡沫測試正常 LEL 0%.\r\n 缸車到達時間: 09:35-10:05', '11-16', 13, 3),
(12, '2018-01-20 03:50:00', 1007302971, 2, 'All LPG unable to function.', 5, '04:45:00', '06:30:00', '2018-01-20', '***E-call*** 站通知LPG系統未能運作. \r\n1.) 到場已檢查石油氣系統缸塔及加氣機位置, 重置系統著M.O.L燈, 再次重置系統運作正常\r\n. ~站報師傅當時連續有3台的士入氣後出現此情況,  已通知站職員留意潛液泵狀況~ \r\n2.) 使用手提氣體探測器測試正常LEL 0%.', 'n.a.', 10, 3),
(13, '2018-01-20 08:45:00', 1007302971, 2, 'All LPG unable to function.', 4, '09:45:00', '19:50:00', '2018-01-23', 'WP#2018-1012; \r\n1.) 更換2號潛液泵連摩打1台 (S/N: RX10 S16054-06 2016, 開始運行時間:21275hr ) 及壓差掣膠拍一套. (Stocks) ; \r\n泵壓力160psi, 缸壓60psi, 電流: L1-7.5A; L2-7.6A; L3-7.7A.  \r\n早上到站石油氣(低液位15%, 站已停止售賣), \r\n18:20石油氣缸車落油顯示78.6%. \r\n石油氣缸車到場時間: 16:50-18:27. \r\n油缸車到場時間: 18:30-19:30', 'T2', 10, 3),
(14, '2018-01-21 13:45:00', 1007307589, 2, 'p19 p20 LPS got abnormal sounds ', 5, '14:45:00', '15:55:00', '2018-01-21', '***E-Call*** QUOT# Q/CBRE/2018-1019/R2; 站報19, 20號機有響聲. 1.) 經檢查後發現19, 20號機流量計有老化現象. 建議需更換流量計2套, 待跟進. ', '19-20', 1, 3),
(15, '2018-01-21 13:45:00', 1007307589, 2, 'p19 p20 LPS got abnormal sounds ', 4, '08:50:00', '16:00:00', '2018-01-25', 'QUOT# Q/CBRE/2017-1019/R2; \r\nWP#2017-1008; \r\n1.) 更換19, 20號機更換流量計共2個(Stocks); \r\n19號-舊S/N: 1207818; 新S/N:1139311; 20號-舊S/N:1207819, 新S/N:1398634;\r\n 更換後經回流測試及校檢,一切正常. \r\n2.) 19, 20 號機進行調試工作 (由DMC更換流量計及進行調試). \r\n3.) 使用泡沫及手提氣體探測器測試LEL 0%.\r\n石油氣缸車到達時間: 09:25-10:45; 油缸車到達時間: 10:40-11:35.', '19-20', 1, 3),
(16, '2018-01-26 14:00:00', 2147483647, 5, 'P12 LPG leaking gas (still in use)', 5, '16:20:00', '18:30:00', '2018-01-26', '***E-call***WP#2018-1013; 站報12號鎗漏氣. \r\n1.) 已更換氣鎗 1支(Stocks; 新鎗:S/N# 71842; 舊鎗: S/N#60804). \r\n2.) 到場發現12號象鼻損壞, 已即時更換12號象鼻(長度1050mm)連喉碼底座 1套(Stocks-扣900mm)', '12', 9, 3),
(17, '2018-01-05 09:00:00', 1007286658, 5, 'Annual LPG Dispensers Calibration in January 2018', 0, '09:00:00', '15:00:00', '2018-01-19', 'WP#2018-1005; 進行加氣機調試與DMC人員, 更換過濾芯2個及清理卸氣點過濾芯. \r\n1.)已更換P11-P14號鎗過濾芯2個(Stocks). \r\n2.)已清理卸氣點過濾芯. \r\n3.)與DMC人員進行加氣機調試已完成, P11-P14號鎗正常可供使用. \r\n4.)使用手提氣體探測測試LEL 0%', 'n.a.', 4, 3),
(18, '2018-01-05 09:00:00', 1007286660, 8, 'Annual LPG Dispensers Calibration in January 2018', 0, '09:00:00', '15:30:00', '2018-01-24', 'WP#2018-1006; \r\n1.) 檢查及清理卸氣點過濾網及加氣機; \r\n2.) 與DMC人員進行加氣機測試工程 \r\n3.) 已更換9號-12號過濾芯共2個(Stocks) 流量: 9號-37升; 10號-37升; 11號-37升; 12號-37升(回缸); 及已清理過濾網. \r\n4.) 已完成與DMC人員進行9號-12號加氣機調試工程. \r\n5.) 9號-12號機入油喉保護圈損壞, 已更換保護圈8個(Stocks). \r\n6.) 使用氣體探測器測試周邊地區LEL 0%.', 'n.a.', 4, 3),
(19, '2018-01-05 09:00:00', 1007286656, 4, 'Annual Inspection of CP Audit', 0, '13:30:00', '14:20:00', '2018-01-17', '檢測石油氣缸陰極保護裝置CP. \r\n1.)已檢測石油氣缸陰極保護裝置CP;\r\n 使用泡沫及手提氣體探測器測試LEL 0%. \r\n2.) 石油氣缸塔及探水孔位置水位約120mm高. ', 'n.a.', 4, 3),
(20, '2018-01-05 09:00:00', 1007286672, 2, 'Annual Inspection of Vapour Recovery Inspection - VR2 & GIDS', 0, '09:00:00', '11:40:00', '2018-01-13', 'QUOT#Q/CBRE/2017-1007; 氣體回收年檢/GIDS, 更換真空錶1個及膠圈1個', 'n.a.', 5, 3),
(21, '2018-01-05 09:00:00', 1007286669, 1, 'Annual Inspection of Vapour Recovery Inspection - VR2 & GIDS', 0, '09:00:00', '09:00:00', '2018-01-13', 'QUOT#Q/CBRE/2018-1007; 氣體回收年檢/GIDS, 更換真空錶1個及膠圈1個', 'n.a.', 5, 3),
(22, '2018-02-03 09:00:00', 1007352430, 9, 'Annual Inspection of Annual Inspection (CP)', 0, '13:30:00', '14:30:00', '2018-02-03', '1.) 石油氣缸進行陰極保護裝置已完成.\r\n 2.) 檢查缸蓋炮塔及探水管水位情況 水位160mm LEL 0%.', 'n.a.', 4, 3),
(23, '2018-02-13 09:00:00', 1007330445, 5, 'To perform 1 no. LPG tank drain-off - Feb 2018', 0, '09:00:00', '10:55:00', '2018-02-18', 'WP#2018-1016; \r\n1.) 檢查石油氣缸蓋, 炮塔位置及水位情況, \r\n使用手提氣體探測機0% LEL, \r\n水深約400mm. \r\n2.) 石油氣地下儲備存缸進行排汙工作, 未能排汙. ', 'n.a.', 3, 3),
(24, '2018-02-13 09:00:00', 1007330445, 5, 'To perform 1 no. LPG tank drain-off - Feb 2018', 0, '09:25:00', '12:30:00', '2018-02-23', '跟進工作 - 進行石油氣抽水工作. \r\n1.) 已完成抽水工作及水位現約90mm. \r\n2.) 使用手提氣體探測LEL為0%.', 'n.a.', 3, 3),
(25, '2018-02-13 09:00:00', 1007330457, 8, 'To perform 1 no. LPG tank drain-off - Feb 2018', 0, '11:40:00', '13:30:00', '2018-02-20', 'WP#2018-1017; \r\n1.) 石油氣缸排汙工程已完成. \r\n缸編號: WET98285, 排出量- 32%; \r\n20/02/2018-檢查結果, 水-無, 外物-無. \r\n2.) 泡沫及手提氣體探測器測試LEL 0%.', 'n.a.', 3, 3),
(26, '2018-02-13 09:00:00', 1007330458, 1, 'To perform 1 no. LPG tank drain-off - Feb 2018', 0, '14:15:00', '16:10:00', '2018-02-21', 'WP#2018-1018; \r\n1.) 石油氣缸排汙工程已完成.\r\n 缸編號: WET5889, 排出量- 32%; 20/02/2018-檢查結果, 水-無, 外物-無. \r\n2.) 泡沫及手提氣體探測器測試LEL 0%.', 'n.a.', 3, 3),
(27, '2018-02-13 09:00:00', 1007330458, 1, 'To perform 1 no. LPG tank drain-off - Feb 2017', 0, '12:55:00', '17:35:00', '2018-02-22', '跟進工作 - 石油氣缸進行抽水工作. \r\n1.) 已完成抽水工作, 水位現約30mm. \r\n2.) 手提氣體探測探水孔位置LEL為0%. 油車到達:', 'n.a.', 3, 3),
(28, '2018-02-22 09:00:00', 1007341599, 3, 'Schedule PPM on the LPG system for the station in March 2018', 0, '14:00:00', '17:30:00', '2018-02-23', 'WP#2018-1021; 石油氣系統及設備檢查(PPM); \r\n1,) 檢查炮塔及水位情況T5-50mm水深, T6-50mm水深, \r\n使用手提氣體探測器測試0% LEL. \r\n2.) 已清理卸氣點過濾網. ', 'n.a.', 4, 3),
(29, '2018-02-10 12:00:00', 1007328478, 7, 'ALL LPG unable to delivery gas.', 5, '12:40:00', '14:20:00', '2018-02-10', '***Ecall-12:00*** \r\n站報加氣機9-12號未能運作, 已檢查石油氣系統及壓縮機房正常. \r\n手提探測器測試石油氣缸塔及探水孔位置LEL 0%, \r\n檢查探水孔水位約150mm高.', 'n.a.', 12, 3),
(30, '2018-02-11 13:00:00', 1007330342, 6, '2 unit gas control panel ringing alarm is ON.', 5, '13:40:00', '15:00:00', '0000-00-00', '***Ecall-13:00***\r\n站報氣體探頭有問題要求到場維修. \r\n1.) 經檢查探頭顯示數值UR導致警報, \r\n已檢查卸氣點, 炮塔, 加氣機及週邊地方, \r\n泡沫及手提探測器測試LEL 0%. \r\n2.) 已通知站內人員找氣體探頭供應商跟進探頭顯示RU問題.', 'n.a.', 2, 3),
(31, '2018-02-13 09:00:00', 2147483647, 7, 'P11 LPG joint drop off by itself. (Site unsure the root cause)', 3, '16:10:00', '19:30:00', '2018-02-13', 'WP#2018-1015; \r\n站報11號槍連接油泵及油槍喉脫落. \r\n1.) 已接駁回11號槍及已正常運作. \r\n2.) 經檢查發現13號槍拉斷閥有爆裂, 已於17:10匯報夏小姐及夏小姐口頭批準更換全新拉斷閥一套(Stocks). \r\n3.) 檢查炮塔及使用手提探測測試LEL為0%,\r\n 水位現約100mm.\r\n 石油氣缸車到站: 15:45 - 16:30; 油車到站時間: 17:45 - 18:25', '11', 6, 3),
(32, '2018-02-14 09:00:00', 1007331761, 8, 'P12 (LPG) unable to charge after gas delivered.', 3, '13:55:00', '15:40:00', '2018-02-14', '站報12號槍入氣時不懂跳錶; \r\n1.) 經檢查及測試, 11-12號機運作正常已供站使用. \r\n2.) 手提氣體探測LEL為0%.', '12', 9, 3),
(33, '2018-02-14 09:00:00', 2147483647, 2, 'P19 P20 LPG meter screen is running', 1, '17:35:00', '19:00:00', '2018-02-14', '站報P19 & P20號槍跳銀碼; \r\n1.) 檢查P19 & P20號槍入油情況, 每支槍入車測試各8部的士及多次打回油測試, 提槍及收槍未有跳銀碼情況出現, 已供站使用.\r\n2.) 使用手提氣體探測機測LEL為0%.', '19,20', 9, 3),
(34, '2018-02-16 09:00:00', 2147483647, 2, 'P19 P20 LPG meter screen is running', 1, '10:30:00', '14:40:00', '2018-02-17', 'QUOT#Q/CBRE/2017-1026; WP#2017-1019; \r\n站報P19 & P20號槍跳銀碼; \r\n1.) 檢查19,20號壓差掣有問題, 導致有跳數情況出現, 已更換加氣機壓差掣2套(其中1套Stock) ; \r\n2.) 檢查時發現19-22號槍流量慢, 已即時更換過濾芯共2個(Stocks); \r\n流量: 19號 16升/21升; 20號 16升/21升; 21號 17升/22升; 22號: 18升/22升(入車);\r\n 檢查炮塔缸蓋及水位情況. 水位現約120mm.\r\n 缸車到達: 12:00-13:10; 油缸車到達: 13:15-14:00', '19-20', 9, 3),
(35, '2018-02-16 13:00:00', 2147483647, 9, 'LPG P17 P18 during filling gas, there is abnormal noises (not in use) ', 4, '15:45:00', '18:15:00', '2018-02-16', '***Ecall***站報17,18號機入車時有響聲; \r\n1.) 測試18號槍第一次測試時沒有氣出, 再進行第二次測試時運作正常. \r\n2.) 17號槍運作時沒有響聲. \r\n3.) 已同DMC人員溝通後另約時間跟進.', '17-18', 1, 3),
(36, '2018-02-16 13:00:00', 2147483647, 9, 'LPG P17 P18 during filling gas, there is abnormal noises (not in use) ', 4, '09:00:00', '13:00:00', '2018-02-01', 'WP#2017-1020; \r\n跟進工作 - 17,18號槍跟進響聲問題. \r\n1.) DMC人員更換17, 18號機角掣2個. C & C則負責解除運作工作. \r\n2.) 與DMC人員檢查17, 18號機, 暫時正常運作, 已通知站觀察加氣機情況. \r\n3.) 檢查炮塔及水位情況, 水位現約1000mm, 及使用手提氣體探測LEL 0%.', '17-18', 1, 3),
(37, '2018-02-21 09:00:00', 2147483647, 2, 'P19 LPG slow dispensing. (JIM)', 3, '10:25:00', '12:05:00', '2018-02-22', 'WP#2018-1019; 站報19號槍流量慢.\r\n 1.) 經檢查後, 已更換19&20號槍過濾芯共1個(Stocks)流量: 19號: 16升/38升; 20號: 18升/37升(入車/回缸)\r\n 2.) 進行石油氣缸抽水工作, 水位情況現約80mm. \r\n 3.) 使用手提氣體探測測試LEL 0%. \r\n***WP-豁免收費, Refer WO#5004315282 ***', '19', 14, 3),
(38, '2018-02-27 16:17:00', 2147483647, 5, 'LPG discharge point connection rubber seal is broken. ', 5, '17:10:00', '18:49:00', '2018-02-27', '***E-Call-16:17***WP#2017-1022; \r\n 站報卸氣點入油頭位置漏氣. \r\n1.) 已更換卸氣點入油頭1個-RegO 6579C(Stocks). \r\n2.) 使用氣體探測器測試0% LEL.', 'n.a.', 7, 3),
(39, '2018-02-23 09:00:00', 1007341602, 3, 'HK/CEI - LPG Annual Preventative Maintenance - (11.1/11.4/9.1/11.8/11.10/11.3 /11.5/11.6/11.17/11.18', 0, '08:50:00', '11:50:00', '2018-03-02', '石油氣系統進行F109表格 (年檢)', 'n.a.', 4, 3),
(40, '2018-03-01 09:00:00', 1007356581, 6, 'Annual LPG Dispensers Calibration in 2017', 0, '09:15:00', '17:00:00', '2018-03-08', 'WP#2018-1023; 與DMC人員進行16-19號加氣機調試. \r\n1.) 加氣機槍校檢, 經回流測試及校檢後, 一切正常. \r\n***WP-豁免收費, Refer WO#1007354801; 費用已包括17號鎗加氣機調試*** \r\n油車落油 09:10-09:45;14:05-14:50\r\n石油氣缸車落油 15:00-15:40', 'n.a.', 4, 3),
(41, '2018-03-06 09:00:00', 1007356578, 1, 'Annual LPG Dispensers Calibration in 2017', 0, '09:00:00', '17:00:00', '2018-03-09', 'WP#2017-1024; 與DMC人員進行加氣機調試; \r\n1.) 加氣機校檢經回流測試及校檢後, 一切正常. \r\n2.) 使用手提氣體探測機測試LEL為0%\r\n石油氣缸車落油 12:20-13:25', 'n.a.', 4, 3),
(42, '2018-03-06 09:00:00', 1007345004, 8, 'HK/CEI - Hanging Hardware Inspection (LPG) - (11.2)', 0, '09:00:00', '11:10:00', '2018-03-04', '進行加氣機檢查CEI \r\n1.) 已完成加氣機檢查工作.\r\n 2.) 檢查缸塔及水位情況. \r\n2.1) 已檢查缸塔及水位. 使用手提氣體探測器測試LEL 0%, 水位為80mm高.', 'n.a.', 4, 3),
(43, '2018-03-06 09:00:00', 1007356614, 6, 'HK/CEI - Hanging Hardware Inspection (LPG) - (11.2)', 0, '09:15:00', '16:00:00', '2018-03-08', '1.) 石油氣加氣機檢查16-19號機;\r\n 2:) 檢查炮塔及探水孔位置, 使用手提氣體探測機測試LEL 0%及現水位約50mm. (已完成加氣機CEI) \r\n油車落油 09:10-09:45; 油車落油 14:05-14:50    石油氣車落油 15:00-15:40', 'n.a.', 4, 3),
(44, '2018-03-06 09:00:00', 1007344999, 1, 'HK/CEI - Hanging Hardware Inspection (LPG) - (11.2)', 0, '09:00:00', '16:00:00', '2018-03-09', 'WP#2017-1024; 加氣機檢查CEI. \r\n1.) 檢查13-16號加氣槍, 短喉喉身及喉夾位置漏氣, 已進行解除運作及通知站14號槍停止使用, 已報CBRE需更換全新短喉一條, 待跟進. \r\n2.) 檢查炮塔, 缸蓋及水位情況, 手提氣體探測機測試LEL為0%. 現水位約170mm.\r\n***WP-豁免收費, Refer WO#1007356578 ***', 'n.a.', 4, 3),
(45, '2018-03-06 09:00:00', 1007345002, 4, 'HK/CEI - Hanging Hardware Inspection (LPG) - (11.2)', 0, '15:30:00', '17:30:00', '2018-03-16', '石油氣加氣機檢查; 1.) 已檢查1至4號加氣機. 2.)檢查炮塔及探水位情況, 使用手提氣體探測器測試LEL 0%. 水位90mm.', 'n.a.', 4, 3),
(46, '2018-03-06 09:00:00', 1007356616, 7, 'HK/CEI - Hanging Hardware Inspection (LPG) - (11.2)', 0, '13:10:00', '14:45:00', '2018-03-17', '進行加氣機檢查. 1.) 11-16號機進行檢查. 2.) 檢查炮塔及水孔位置, 手提氣體探測為0%, 及探水孔現水位約370mm, 需待跟進. ', 'n.a.', 4, 3),
(47, '2018-03-06 09:00:00', 1007356620, 9, 'HK/CEI - Hanging Hardware Inspection (LPG) - (11.2)', 0, NULL, NULL, NULL, NULL, NULL, 4, 3),
(48, '2018-03-06 09:00:00', 1007345001, 3, 'HK/CEI - Hanging Hardware Inspection (LPG) - (11.2)', 0, '13:10:00', '15:05:00', '2018-03-21', '進行加氣機檢查; 1.) 加氣機檢查P5-P6, P11-P.12及P13號機.2.) 檢查炮塔及探水孔位置使用手提氣體探測機測試LEL 0%, 及水位情況現約110mm.', 'n.a.', 4, 3),
(49, '2018-02-21 09:00:00', 1007345003, 5, 'HK/CEI - Hanging Hardware Inspection (LPG) - (11.2)', 0, '13:10:00', '14:45:00', '2018-03-17', '進行加氣機檢查', 'n.a.', 4, 3),
(50, '2018-02-21 09:00:00', 1007371588, 5, 'Schedule PPM on the LPG system for the station - Mar 2018', 0, '13:20:00', '18:00:00', '2018-03-29', 'WP#2017-1030; 石油氣系統檢查(PPM); 1.) 已清理卸氣點過濾網. 2.) 使用氣體探測器測試LEL 0%.', 'n.a.', 4, 3),
(51, '2018-03-01 09:00:00', 2147483647, 5, 'P12 LPG nozzle is lossen', 1, '11:25:00', '12:00:00', '2018-03-02', '站報12號槍T字架掛喉位置鬆脫. 1.) 已檢查象鼻頂喉碼底座, 檢查及修妥使用(測試正常), 已供站使用. 2.) 使用手提氣體探測炮塔及水位LEL 0%. 現水位約100mm.', 'n.a.', 16, 3),
(52, '2018-03-06 16:45:00', 1007354801, 6, 'P17 LPG no delivery of gas (not in use)', 5, '18:02:00', '19:55:00', '2018-03-06', '***E-call 16:45***WP#2017-1023; 站報17號槍扣雞拉出唔到氣. 1.) 到場檢查發現17號槍未能全開, 已更換新槍1支(新號碼-GG1DNS 70191;舊槍 70176)(Stocks). 2.)檢查16號機流量慢, 已更換過濾芯共1個(Stocks), 流量;16號-17升/35升; 17號-10升/34升 (入車/回缸). 3.) 17號機入車時有不正常跳動, 發現17號機流量計不正常, 建議需更換流量計, 站已暫停使用. 4.) 手提氣體探測LEL 0%. ', 'n.a.', 12, 3),
(53, '2018-03-13 16:19:00', 2147483647, 2, 'P19-P20 LPG slow delivery of fuel (P19 not in use)', 5, '18:45:00', '22:15:00', '0000-00-00', '***E-call 16:19***WP#2018-1025; 站報P19-20號槍流量慢. 1.) 已更換19&20號加氣機過濾芯(Stocks), 流量; 19號14升/37升; 20號 19升/37升(入車/回缸) 2.) 炮塔及水位使用氣體探測器測試LEL 0%, 水位90mm.', 'n.a.', 14, 3),
(54, '2018-03-14 09:00:00', 1007361940, 9, 'To perform water drain off for LPG 17 18 (follow up WO#5004316792)', 2, '14:20:00', '17:40:00', '2018-03-14', '進行石油氣缸抽水工作; 1.) 抽水工作後, 經量度尚有700mm水位需待跟進. 2.) 使用手提探測機測試水孔位置LEL 0%.', '17-18', 3, 3),
(55, '2018-03-15 09:00:00', 1007362090, 9, 'LPG 17 18 during filling gas, there is abmormal noises (not in use)', 3, '16:00:00', '18:00:00', '2018-03-15', '站報P17-18號槍有響聲, 已檢查17, 18號槍, 需聯絡DMC及待跟進.***豁免工時費用, Refer WO#1007361940 ***', '17-18', 1, 3),
(56, '2018-03-20 16:04:00', 2147483647, 3, 'LPG P11 P12 P5 P6 slow delivery of gas (still in use)', 5, '17:00:00', '19:05:00', '2018-03-20', '***E-Call***WP#2018-1026; 站報P5-P6, P11-P12號槍流量慢. 1.) 經檢查及測試後, 發現P13, P14號槍流量慢, 站長要求更換過濾芯, 現已更換P5-P6, P13-P14及P11-P12號槍過濾芯共3個(Stocks).流量;5號-15升/36升; 6號-14升/37升; 11號-17升/37升; 12號-16升/37升; 13號-14升/37升; 14號-15升/37升 (入車/回缸) 2.)手提氣體探測LEL 0%.', '5-6,11-12', 15, 3),
(57, '2018-03-20 09:00:00', 2147483647, 2, 'P21 P22 (LPG) display broken', 2, '08:30:00', '09:20:00', '2018-03-23', '站報21 & 22號槍顯示價錢光管損壞, 已更換慳電膽一個(Stocks).', '21-22', 9, 3),
(58, '2018-03-22 12:15:00', 2147483647, 5, 'ALL LPG unable to deliver gas.', 5, '12:45:00', '14:20:00', '2018-03-22', '***E-Call-12:15***站報石油氣系統未能運作. 1.) 到場發現石油氣系統D.P.S.燈著, 已重新啟動石油氣系統運作正常. 2.) 11至14號加氣機運作正常.', 'n.a.', 12, 3),
(59, '2018-03-27 20:15:00', 2147483647, 3, 'Water Spray system is activated', 5, '22:30:00', '01:20:00', '2018-03-25', '***E-Call-20:55***站報灑水要求到場系統; 1.) 已檢查石油氣系統 1.1)缸炮塔位置 1.2)缸車卸氣點1.3)加氣機位置 1.4)加氣機(回缸)測試操作正常. 2.) 使用手提氣體探測器測試LEL 0%. 3.) 站報因消防系統未能重置. 4.) 站報石油氣停止售賣 (28/3 3:00am已開賣石油氣).', 'n.a.', 2, 3),
(60, '2018-03-27 09:15:00', 2147483647, 5, 'P11-P14 LPG slow delivery of fuel (still in use)', 5, '11:15:00', '13:00:00', '2018-03-27', '***E-call-9:51***WP#2017-1029; 站報P11-P14號鎗流量慢; 1.)經檢查後, 更換P11-P14號鎗過濾芯共2個(Stocks).流量;11號-15升/33升; 12號-16升/32升; 13號-15升/35升; 14號-15升/34升 (入車/回缸) 2.) 使用手提氣體探測機測試LEL為0%.', 'n.a.', 15, 3),
(61, '2018-03-31 09:00:00', 1007377011, 5, 'HK/CEI -Cathodic Protection - (11.15)->Follow up: water drain-off  ~Ref ~WO#1007371589~', 2, '09:00:00', '10:39:00', '2018-04-01', '1.) 進行石油氣缸抽水工作, 現時水位約150mm. 2.) 進行炮塔及缸蓋檢查, 使用手提氣體探測機測試LEL 0%. ', 'n.a.', 3, 3),
(62, '2018-04-05 11:00:00', 1007384118, 9, 'p18 got minor gas leak', 4, '12:25:00', '14:30:00', '2018-04-05', '***Ecall***WP#2017-1032; 站報P18號鎗有微漏; 1.) 泡沫及使用手提氣體探測機測試LEL為0%, 一切正常. 2.) 檢查時發現P17, P18號鎗流量慢, 已更換P17, P18號鎗過濾芯共1個(Stocks), 流量: 15號-21升;16號-21升(入車); 17號-16升/36升; 18號-15升/37升(入車/回缸). 3.) 檢查炮塔及水位, 現水位約160mm. 4.) 檢查時發現P17號鎗回流測試黃色保護蓋損壞, 需待DMC人員跟進 (已通知DMC人員跟進).', '18', 8, 3),
(63, '2018-04-10 20:25:00', 1007388535, 7, 'LPG  able to function.', 4, '21:20:00', '23:00:00', '2018-04-10', '***Ecall-20:25*** 1.) 站報石油氣系統不能運作, 經檢查系統故障警報燈著, 但系統故障記錄無顯示曾故障項目, 已重置系統, 試鎗正常. 現泵壓150psi, 電流 L1 7.1A; L2 7.1A; L3 7.2A. 2.) 系統現運作正常, 泡沫及手提氣體探測器測試LEL 0%.', 'n.a.', 10, 3),
(64, '2018-04-11 09:00:00', 1007388641, 7, 'To replace a LPG submersible pump for #T1 at the station.', 2, '09:40:00', '18:30:00', '2018-04-13', 'WP#2018-1034; 更換1號潛液泵. 1.) 已更換1號潛液泵1台 (RX10-S16257-05) 出廠年份-2016; 缸壓50psi; 泵輸出壓力160psi; 電流L1-8.5A, L2-8.6A (Stocks). 2.) 泡沬及手提氣體探測機測試LEL為0%. 3.) 1號泵運行時間89日.', '1', 7, 3),
(65, '2018-04-18 09:00:00', 2147483647, 1, 'P13 P14 P15 P16 LPG slow delivery (still in use) P13 P14 dispenser lighting has unlit (still in use)', 3, '09:00:00', '12:00:00', '2018-04-19', 'WP#2018-1035; 站報P13-P16流量慢及P13-P14顯示銀碼光管損壞. 1.) 檢查後發現P13-P14, P15-P16流量慢, 已更換過濾芯共2個(Stocks); 流量:13號 19升/40升; 14號 18升/35升; 15號 19升/34升; 16號 17升/35升 (入車/回缸). 2.) 更換全新慳電膽一個(Stocks)於P13-P14號機. 3.) 手提氣體探測機測試LEL為0%.', 'n.a.', 15, 3),
(66, '2018-04-19 18:19:00', 1007400930, 7, 'Emergency Fire alarm on, please attend to check LPG system', 5, '18:50:00', '19:50:00', '2018-04-19', '***Ecall-18:19***站報消防警報響, 使用手提氣體探測器測試石油氣缸塔, 探水孔位置缸車卸氣點, 11-16號加氣機位置LEL 0%, 檢查固定探頭顯示箱G2探頭有3% LEL, 已通知站長聯絡消防系統公司(惠景)跟進.檢查站石油氣系統運作正常.', 'n.a.', 2, 3),
(67, '2018-04-20 11:35:00', 1007399003, 5, 'Emergency To check P11-P14 LPG due to slow dispensing.', 3, '12:50:00', '14:30:00', '2018-04-20', 'WP#2018-1037; 站報P11-P14號鎗流量慢. 1.) 經檢查後發現P11-14號鎗流量慢, 已更換過濾芯共2個(Stocks). 流量; 11號: 24升/39升; 12號: 22升/34升; 13號: 22升/39升; 14號: 21升/34升 (回缸); 2.) 檢查缸蓋及炮塔情況, 水位現約220mm.', '11-14', 15, 3),
(68, '2018-04-21 17:04:00', 2147483647, 2, 'LPG alarm triggered LPG not dispensing', 5, '17:25:00', '14:25:00', '2018-04-21', 'QUOT#Q/CBRE/2018-1038; ***Ecall-17:04***站報石油氣系統未能運作. 1.) 到場檢查發現風泵低導致石油氣系統暫停運作, 已重新啟動風泵及石油氣系統. 2.) 啟動石油氣系統發現液位不正常, 經檢查後明天搵零件到場檢查及更換, 已關閉液位顯示器電源. 3.) 檢查19-22號加氣機, 發現19號機加氣槍未能完全開啟, 因零件老化, 建議需更換新鎗1枝及22號機檢查時發現流量計有不正常震動及響聲, 建議需更換流量計1套. 待跟進. ', '19-22', 2, 3),
(69, '2018-04-21 17:22:00', 2147483647, 4, 'Station hit by lighting', 5, '17:25:00', '20:00:00', '2018-04-21', 'QUOT# Q/CBRE/2107-1043; ***Ecall-17:22***站報液位由50%升至100%. 1.) 檢查缸塔液位計顯示120%高液位警報重置系統後, 電子液位計未能正常, 需通知DMC跟進. 2.) 因高液位警報著缸車卸氣點氣動掣關閉, 暫以手動開啟氣動掣, 待電子液位計維修後, 需跟進卸氣點氣動掣復位.', 'n.a.', 2, 3),
(70, '2018-04-25 09:00:00', 2147483647, 4, 'All 4 LPG pumps slow delivery of gas.', 4, '09:25:00', '12:00:00', '2018-04-25', 'WP#2018-1039; 1.) 站報石油氣1-4號機流量慢, 已更換過濾芯共2個(Stocks). 流量: 1號 22升/37升; 2號 22升/32升; 3號 22升/37升; 4號 23升/39升 (回缸). 2.) 進行缸蓋炮塔及水位情況檢查水深180mm, 使用手提氣體探測機測試0% LEL.***豁免工時費用, Refer WO#5004356142 ***', '1-4', 15, 3),
(71, '2018-05-02 09:00:00', 1007403922, 2, 'Follow up #5004356110 To replace exchange meter and filter (Q2017-1038', 1, '09:00:00', '13:15:00', '2018-05-02', 'QUOT# Q/CBRE/2108-1038R2; \r\nWP#2017-1041; \r\n1.) 將22號槍解除運作.\r\n 2.) 由DMC人員更換22號槍流量計一套(Stocks) ~新S/N: 138014; 舊S/N: 1184450~. \r\n3.) 將21, 22號機進行加氣機調試. \r\n4.) 已完成更換22號槍流量計及21,22號機進行調試. \r\n5.) 手提氣體探測LEL 0%, 一切正常, 已交站使用. ', '21-22', 13, 3),
(72, '2018-05-02 12:03:00', 2147483647, 5, 'P12 LPG the return valve have gas leak and opening valve broken (not in use)', 5, '14:55:00', '18:15:00', '2018-05-02', '***E-call*** QUOT# Q/CBRE/2108-1056; \r\n1.) 11號槍拉斷閥鬆脫, 已重新接駁拉斷閥. 使用手提氣體探測機及泡沫測試. \r\n2.) 12號槍開關掣損壞, 供應及安裝開關掣一套. \r\n(到場明興泰進行更換招牌光管工作, 由14:55至16:45)', '11-12', 6, 3),
(73, '2018-05-05 01:11:00', 1007407002, 8, 'Emergency call_Sprinkler system alarm ', 5, '02:00:00', '04:20:00', '2018-05-05', '***Ecall-01:11am***站報灑水(石油氣消防系統灑水) \r\n1.) 檢查石油氣缸塔位置 \r\n2.) 檢查卸氣點位置 \r\n3.)檢查加氣機位置泡沬及氣體探測器測試LEL 0%. \r\n4.) 重置石油氣系統 5.) 加氣(回缸)測試正常. \r\n6.)11&12號加氣機位置G3探頭LEL讀數49% LEL. \r\n7.) 惠景消防人員已(獨立)隔離G3探頭. \r\n8.) 11&12號機暫停使用及掛牌. \r\n9.) 惠景消防通知站人員水噴灑系統(主閘)掣損壞, 不能重置系統, 現只能手動開泵(操作). ', '11-12', 2, 3),
(74, '2018-05-05 09:00:00', 2147483647, 8, 'LPG Tank 5 contains water and alarm activated, please act and inspect asap.', 3, '09:15:00', '10:45:00', '2018-05-06', '站報電子尺系統5號缸有水位警報. \r\n1.) 經檢查後石油氣缸內並沒有電子尺系統, 建議CBRE找回電子尺供應商到場檢查.\r\n2.) 檢查缸蓋炮塔及水位情況, 水位現約400mm, 待跟進. \r\n3.) 手提氣體探測測試LEL 0%.', 'n.a.', 2, 3),
(75, '2018-05-08 09:00:00', 1007407455, 7, 'HK/CEI - LPG Annual Preventative Maintenance - (11.1 /11.4 /9.1) Follow up work- To replace P13 LPG ', 2, '09:00:00', '11:25:00', '2018-05-09', 'QUOT# Q/CBRE/2017-1045R1; WP#2018-1044\r\n更換13號加氣鎗長軟喉. \r\n1.) 已更換13號鎗長軟喉1條(Stocks)  ~新喉No: 16/7/217 出廠0815; 測試日期: 29/07/2016; 安裝日期: 09/05/2017\r\n2.) 檢查炮塔LEL 0%及探水孔水深350mm(待跟進)\r\n3.) 泡沫及使用氣體探測器測試LEL 0%\r\n4.) 需更換軟喉保護膠圈30個 (Stocks). ', '13', 6, 3),
(76, '2018-05-10 19:20:00', 1007422985, 4, 'Emergency _All LPG Disp were down, please check (Inspected on 10May17 21:30)', 5, '20:10:00', '21:30:00', '2018-05-10', '***E-call***1.) 站報石油氣不能使用, 檢查石油氣系統潛液泵過截故障,\r\n 已調底出口壓力測試約10秒停泵, 使用手提探測器測試石油氣缸塔, 探水孔及加氣機,卸氣點位置LEL 0%.\r\n 已通知站長石油氣未能使用, 需更換潛液泵1個. 待跟進.\r\n運行時間: 104日9時21分 運行次數: 15795次', 'n.a.', 10, 3),
(77, '2018-05-10 09:00:00', 1007422985, 4, 'Follow up Emergency All LPG Disp were down, please check', 4, '09:35:00', '19:05:00', '2018-05-11', '跟進工作 - WP#2017-1045; \r\n石油氣缸更換潛液泵一套連配件.(Stocks)  \r\n1.) 供應1-1/2\"絕緣法蘭1套及壓叉膠柏1套. \r\n2.) 新泵資料-RX10-10652-06 2016, 泵壓力約165psi, 電流約6.8A. \r\n3.) 檢查及測試1至4號加氣機流量約32升回缸, 流量正常. \r\n4.) 使用手提氣體探測機測試缸蓋, 炮塔LEL 0%.', 'n.a.', 6, 3),
(78, '2018-05-12 09:00:00', 1007422976, 4, 'Follow up#5004356142 To replace Moore display core and rochester current transmitter.', 2, NULL, NULL, NULL, '站報2', NULL, 7, 1),
(79, '2018-05-15 12:00:00', 2147483647, 3, 'LPG P5 P6 P11 P12 slow delivery. (Still in use)', 5, '15:08:00', NULL, NULL, NULL, NULL, 15, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `work_type`
--

CREATE TABLE `work_type` (
  `type_id` int(3) NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `work_type`
--

INSERT INTO `work_type` (`type_id`, `type`) VALUES
(1, 'Abnormal sounds'),
(2, 'Alarm triggered'),
(3, 'CEI – drain off'),
(4, 'CEI – PPM'),
(5, 'CEI – VR2 & GIDS'),
(6, 'Damage on nozzle'),
(7, 'Discharge point'),
(8, 'Disfunction of nozzle'),
(9, 'Failure of gas dispenser parts'),
(10, 'LPG system unable to function'),
(11, 'LPG Tank'),
(12, 'No LPG delivery'),
(13, 'Replace filter'),
(14, 'Slow delivery of gas (not in use)'),
(15, 'Slow delivery of gas (still in use)'),
(16, 'Others');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `Worker_foreign` (`worker_id`);

--
-- 資料表索引 `order_for_worker`
--
ALTER TABLE `order_for_worker`
  ADD PRIMARY KEY (`worker_order_id`),
  ADD KEY `worker` (`worker_id`),
  ADD KEY `work` (`work_id`);

--
-- 資料表索引 `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`sta_id`);

--
-- 資料表索引 `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`worker_id`);

--
-- 資料表索引 `work_order`
--
ALTER TABLE `work_order`
  ADD PRIMARY KEY (`work_id`),
  ADD KEY `station` (`sta_id`),
  ADD KEY `type` (`type_id`);

--
-- 資料表索引 `work_type`
--
ALTER TABLE `work_type`
  ADD PRIMARY KEY (`type_id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表 AUTO_INCREMENT `order_for_worker`
--
ALTER TABLE `order_for_worker`
  MODIFY `worker_order_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=369;

--
-- 使用資料表 AUTO_INCREMENT `station`
--
ALTER TABLE `station`
  MODIFY `sta_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用資料表 AUTO_INCREMENT `worker`
--
ALTER TABLE `worker`
  MODIFY `worker_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表 AUTO_INCREMENT `work_order`
--
ALTER TABLE `work_order`
  MODIFY `work_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- 使用資料表 AUTO_INCREMENT `work_type`
--
ALTER TABLE `work_type`
  MODIFY `type_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `Worker_foreign` FOREIGN KEY (`worker_id`) REFERENCES `worker` (`worker_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的 Constraints `order_for_worker`
--
ALTER TABLE `order_for_worker`
  ADD CONSTRAINT `work` FOREIGN KEY (`work_id`) REFERENCES `work_order` (`work_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `worker` FOREIGN KEY (`worker_id`) REFERENCES `worker` (`worker_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的 Constraints `work_order`
--
ALTER TABLE `work_order`
  ADD CONSTRAINT `station` FOREIGN KEY (`sta_id`) REFERENCES `station` (`sta_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `type` FOREIGN KEY (`type_id`) REFERENCES `work_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;