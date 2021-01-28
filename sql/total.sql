-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 21-01-27 04:12
-- 서버 버전: 10.4.14-MariaDB
-- PHP 버전: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `test`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `gold_app`
--

CREATE TABLE `gold_app` (
  `GOLD_APP_num` int(11) NOT NULL COMMENT '고유번호',
  `GOLD_APP_tit` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '제목',
  `GOLD_APP_ser` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '시리얼넘버',
  `GOLD_APP_des` text CHARACTER SET utf8 NOT NULL COMMENT '설명',
  `GOLD_APP_img` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '사진',
  `GOLD_APP_thumb` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '썸네일사진',
  `GOLD_APP_cli` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '납품처',
  `GOLD_APP_reg` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '등록일'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `gold_app`
--

INSERT INTO `gold_app` (`GOLD_APP_num`, `GOLD_APP_tit`, `GOLD_APP_ser`, `GOLD_APP_des`, `GOLD_APP_img`, `GOLD_APP_thumb`, `GOLD_APP_cli`, `GOLD_APP_reg`) VALUES
(21, 'the undoubtable', 'test', 'There are many variations of passages of Lorem Ipsum available, <br />\r\nbut the majority have suffered alteration in some form, by injected humour,<br />\r\n or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, <br />\r\nyou need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators ', 'app_main_001.png', 'app_001.png', 'test', '2021-01-20'),
(22, 'the undoubtable', 'PLOAD PROJE', 'There are many variations of passages of Lorem Ipsum available, <br />\r\nbut the majority have suffered alteration in some form, by injected humour,<br />\r\n or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, <br />\r\nyou need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators ', 'app_main_002.jpg', 'app_002.jpg', 'dameim', '2021-01-20'),
(23, 'randomised ', 'believable', 'There are many variations of passages of Lorem Ipsum available, <br />\r\nbut the majority have suffered alteration in some form, by injected humour,<br />\r\n or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, <br />\r\nyou need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators ', 'app_main_003.png', 'app_003.png', 'passage', '2021-01-20'),
(24, 'array_push', 'PLOAD PROJE', 'There are many variations of passages of Lorem Ipsum <br />\r\navailable, but the majority have suffered alteration in some form,<br />\r\n by injected humour, or randomised words which don\'t look even slightly believable. <br />\r\nIf you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing <br />\r\nhidden in the middle of text. All the Lorem Ipsum generators ', 'app_main_004.png', 'app_004.png', 'passage', '2021-01-20'),
(25, 'array_push', 'PLOAD PROJE', 'There are many variations of passages of Lorem Ipsum available, but the majority <br />\r\nhave suffered alteration in some form, by injected humour, or randomised words which don\'t look <br />\r\neven slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t <br />\r\nanything embarrassing hidden in the middle of text. All the Lorem Ipsum generators ', 'app_main_005.png', 'app_005.png', 'dameim', '2021-01-20'),
(26, 'the undoubtable', 'PLOAD PROJE', 'There are many variations of passages of Lorem Ipsum available, but the majority <br />\r\nhave suffered alteration in some form, by injected humour, or randomised words <br />\r\nwhich don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, <br />\r\nyou need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators ', 'app_main_006.png', 'app_006.png', 'test', '2021-01-20'),
(27, 'doubtable', 'believable', 'There are many variations of passages of Lorem Ipsum available, b<br />\r\nut the majority have suffered alteration in some form, by injected humour, or randomised w<br />\r\nords which don\'t look even slightly believable. If you are going to use a passage of <br />\r\nLorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators ', 'app_main_007.png', 'app_007.png', 'test', '2021-01-20'),
(28, 'array_push', 'adliamd', 'There are many variations of passages of Lorem Ipsum available, <br />\r\nbut the majority have suffered alteration in some form, by injected hum<br />\r\nour, or randomised words which don\'t look even slightly believable. If you are going to use a passage<br />\r\n of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing h<br />\r\nidden in the middle of text. All the Lorem Ipsum generators ', 'app_main_008.jpg', 'app_008.jpg', 'qadod', '2021-01-20');

-- --------------------------------------------------------

--
-- 테이블 구조 `gold_de`
--

CREATE TABLE `gold_de` (
  `GOLD_DE_num` int(11) NOT NULL COMMENT '고유번호',
  `GOLD_DE_tit` varchar(20) NOT NULL COMMENT '제목',
  `GOLD_DE_ser` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '시리얼넘버',
  `GOLD_DE_des` text CHARACTER SET utf8 NOT NULL COMMENT '설명',
  `GOLD_DE_img1` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '이미지1',
  `GOLD_DE_img2` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '이미지2',
  `GOLD_DE_thumb` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '썸네일사진',
  `GOLD_DE_cli` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '납품처',
  `GOLD_DE_reg` varchar(15) CHARACTER SET utf8 NOT NULL COMMENT '등록일'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `gold_de`
--

INSERT INTO `gold_de` (`GOLD_DE_num`, `GOLD_DE_tit`, `GOLD_DE_ser`, `GOLD_DE_des`, `GOLD_DE_img1`, `GOLD_DE_img2`, `GOLD_DE_thumb`, `GOLD_DE_cli`, `GOLD_DE_reg`) VALUES
(36, 'Test5', 'test', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. <br />\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, <br />\r\nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book. <br />\r\n<br />\r\n<br />\r\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. <br />\r\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently<br />\r\n with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'design_06_01.jpg', 'design_06_02.jpg', 'design_thumb_06.jpg', 'test', '2021-01-14'),
(34, 'Test4', 'test', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. <br />\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, <br />\r\nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book. <br />\r\n<br />\r\n<br />\r\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. <br />\r\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently<br />\r\n with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'design_04_01.jpg', 'design_04_02.jpg', 'design_thumb_04.jpg', 'test', '2021-01-14'),
(35, 'Test5', 'test', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. <br />\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, <br />\r\nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book. <br />\r\n<br />\r\n<br />\r\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. <br />\r\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently<br />\r\n with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'design_05_01.jpg', 'design_05_02.jpg', 'design_thumb_05.jpg', 'test', '2021-01-14'),
(33, 'Test3', 'test', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. <br />\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, <br />\r\nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book. <br />\r\n<br />\r\n<br />\r\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. <br />\r\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently<br />\r\n with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'design_02_01.jpg', 'design_02_02.jpg', 'design_thumb_06.jpg', 'test', '2021-01-14'),
(32, 'Test1', 'test1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. <br />\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, <br />\r\nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book. <br />\r\n<br />\r\n<br />\r\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. <br />\r\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently<br />\r\n with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'design_1_1.jpg', 'design_1_2.jpg', 'design_thumb_01.png', 'test1', '2021-01-14'),
(31, 'Test', 'test', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. <br />\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, <br />\r\nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book. <br />\r\n<br />\r\n<br />\r\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. <br />\r\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently<br />\r\n with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'design_01_01.jpg', 'design_01_02.jpg', 'design_thumb_01.jpg', 'test', '2021-01-14');

-- --------------------------------------------------------

--
-- 테이블 구조 `gold_mem`
--

CREATE TABLE `gold_mem` (
  `GOLD_mem_num` int(11) NOT NULL COMMENT '고유번호',
  `GOLD_mem_id` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '아이디',
  `GOLD_mem_name` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '이름',
  `GOLD_mem_email` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '이메일',
  `GOLD_mem_pass` varchar(80) CHARACTER SET utf8 NOT NULL COMMENT '비밀번호',
  `GOLD_mem_regit_day` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '가입일',
  `GOLD_mem_level` int(11) DEFAULT NULL COMMENT '레벨(회원등급)',
  `GOLD_mem_point` int(11) NOT NULL COMMENT '포인트'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `gold_mem`
--

INSERT INTO `gold_mem` (`GOLD_mem_num`, `GOLD_mem_id`, `GOLD_mem_name`, `GOLD_mem_email`, `GOLD_mem_pass`, `GOLD_mem_regit_day`, `GOLD_mem_level`, `GOLD_mem_point`) VALUES
(1, 'test', 'user', 'asdf1@asdf', '1234', '2020-12-28 10:01:16', 1, 0),
(2, 'test1', 'user1', 'asdf1@asdf', '1234', '2020-12-28 10:01:23', 9, 0);

-- --------------------------------------------------------

--
-- 테이블 구조 `gold_qna`
--

CREATE TABLE `gold_qna` (
  `GOLD_QNA_num` int(11) NOT NULL COMMENT '고유번호',
  `GOLD_QNA_id` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '글쓴이',
  `GOLD_QNA_tit` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '글제목',
  `GOLD_QNA_con` text CHARACTER SET utf8 NOT NULL COMMENT '내용',
  `GOLD_QNA_reg` int(11) NOT NULL COMMENT '등록일',
  `GOLD_QNA_hit` varchar(15) CHARACTER SET utf8 NOT NULL COMMENT '조회수'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `gold_qna`
--

INSERT INTO `gold_qna` (`GOLD_QNA_num`, `GOLD_QNA_id`, `GOLD_QNA_tit`, `GOLD_QNA_con`, `GOLD_QNA_reg`, `GOLD_QNA_hit`) VALUES
(1, 'test', '12ㅁㅁㅁㅁ\"', 'ㅁㅁ', 21, '4'),
(2, 'test', '2', '123', 21, '0'),
(3, 'test', '3', '1234ㅂ', 21, '0'),
(4, 'test', '4', '1234ㅂㅈㄷ', 21, '0'),
(5, 'test', '5', 'ㅂㅈㄷ', 21, '0'),
(6, 'test', '6', '123ㅁㄴㅇㄴㅁ', 21, '0'),
(7, 'test', '7', '123ㅂㅈㄷ', 21, '0'),
(8, 'test', '8', 'ㅂㅈㄷㅁㄴㅇ', 21, '0'),
(9, 'test', '9', 'ㅁㄴㅇㅁㅇㅁㄴㅇ', 21, '0'),
(10, 'test', '10', 'ㅁㅇㄻㅇㄻㄹ', 21, '0'),
(11, 'test', '11', 'ㅂㄷㄱㄷㅈㄱ', 21, '0'),
(12, 'test', '12', 'ㅁㅇㄻㅇㄹㄴㄹ', 21, '1');

-- --------------------------------------------------------

--
-- 테이블 구조 `gold_reply`
--

CREATE TABLE `gold_reply` (
  `GOLD_re_num` int(11) NOT NULL COMMENT '고유번호',
  `GOLD_re_id` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '답글 작성자',
  `GOLD_re_cont` int(11) NOT NULL COMMENT '답변',
  `GOLD_re_wr_num` text NOT NULL COMMENT '원글 번호'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 테이블 구조 `gold_web`
--

CREATE TABLE `gold_web` (
  `GOLD_WEB_num` int(11) NOT NULL COMMENT '고유번호',
  `GOLD_WEB_tit` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '제목',
  `GOLD_WEB_ser` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '시리얼넘버',
  `GOLD_WEB_des` text CHARACTER SET utf8 NOT NULL COMMENT '설명',
  `GOLD_WEB_img` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '사진',
  `GOLD_WEB_mimg` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '모바일사진',
  `GOLD_WEB_thumb` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '썸네일사진',
  `GOLD_WEB_cli` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '납품처',
  `GOLD_WEB_reg` varchar(15) CHARACTER SET utf8 DEFAULT NULL COMMENT '등록일',
  `GOLD_WEB_dom` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '도메인주소'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `gold_web`
--

INSERT INTO `gold_web` (`GOLD_WEB_num`, `GOLD_WEB_tit`, `GOLD_WEB_ser`, `GOLD_WEB_des`, `GOLD_WEB_img`, `GOLD_WEB_mimg`, `GOLD_WEB_thumb`, `GOLD_WEB_cli`, `GOLD_WEB_reg`, `GOLD_WEB_dom`) VALUES
(2, 'test', 'test', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. <br />\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, <br />\r\n<br />\r\nremaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'web_01.png', 'web_m_01.png', 'web_thumb_01.png', 'test', '2021-01-14', 'test'),
(3, 'test 1', 'test1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. <br />\r\n<br />\r\nIt has survived not only five centuries, but also the leap into electronic typesetting, <br />\r\n<br />\r\nremaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'web_02.png', 'web_m_02.png', 'web_thumb_02.png', 'test', '2021-01-14', 'test'),
(4, 'test 2', 'test', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. <br />\r\n<br />\r\nIt has survived not only five centuries, but also the leap into electronic typesetting, <br />\r\n<br />\r\nremaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'web_03.png', 'web_m_02.png', 'web_thumb_03.png', 'test', '2021-01-14', 'test'),
(5, 'test 3', 'test', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. <br />\r\n<br />\r\nIt has survived not only five centuries, but also the leap into electronic typesetting, <br />\r\n<br />\r\nremaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'web_04.png', 'web_m_04.png', 'web_thumb_04.png', 'test', '2021-01-14', 'test'),
(6, 'test4', 'test', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.<br />\r\n<br />\r\n<br />\r\n Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.<br />\r\n<br />\r\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'web_05.png', 'web_m_05.png', 'web_thumb_05.png', 'test', '2021-01-14', 'test');

-- --------------------------------------------------------

--
-- 테이블 구조 `gold_write`
--

CREATE TABLE `gold_write` (
  `GOLD_Wr_num` int(11) NOT NULL COMMENT '고유번호',
  `GOLD_Wr_id` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '글쓴이 아이디',
  `GOLD_Wr_title` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '글쓴이 제목',
  `GOLD_wr_cont` text CHARACTER SET utf8 NOT NULL COMMENT '내용',
  `GOLD_Wr_lo` text DEFAULT NULL COMMENT '조회수'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 테이블 구조 `member`
--

CREATE TABLE `member` (
  `num` int(11) NOT NULL COMMENT '고유번호',
  `ID` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '아이디',
  `name` int(30) NOT NULL COMMENT '이름',
  `pass` int(30) NOT NULL COMMENT '비밀번호',
  `email` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT 'email'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `member`
--

INSERT INTO `member` (`num`, `ID`, `name`, `pass`, `email`) VALUES
(3, 'sh1122', 0, 123456, 'sh1122@naver.com'),
(4, 'hs1122', 0, 456789, 'hs1122@naver.com');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `gold_app`
--
ALTER TABLE `gold_app`
  ADD PRIMARY KEY (`GOLD_APP_num`);

--
-- 테이블의 인덱스 `gold_de`
--
ALTER TABLE `gold_de`
  ADD PRIMARY KEY (`GOLD_DE_num`);

--
-- 테이블의 인덱스 `gold_mem`
--
ALTER TABLE `gold_mem`
  ADD PRIMARY KEY (`GOLD_mem_num`);

--
-- 테이블의 인덱스 `gold_qna`
--
ALTER TABLE `gold_qna`
  ADD PRIMARY KEY (`GOLD_QNA_num`);

--
-- 테이블의 인덱스 `gold_reply`
--
ALTER TABLE `gold_reply`
  ADD PRIMARY KEY (`GOLD_re_num`);

--
-- 테이블의 인덱스 `gold_web`
--
ALTER TABLE `gold_web`
  ADD PRIMARY KEY (`GOLD_WEB_num`);

--
-- 테이블의 인덱스 `gold_write`
--
ALTER TABLE `gold_write`
  ADD PRIMARY KEY (`GOLD_Wr_num`);

--
-- 테이블의 인덱스 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`num`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `gold_app`
--
ALTER TABLE `gold_app`
  MODIFY `GOLD_APP_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '고유번호', AUTO_INCREMENT=29;

--
-- 테이블의 AUTO_INCREMENT `gold_de`
--
ALTER TABLE `gold_de`
  MODIFY `GOLD_DE_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '고유번호', AUTO_INCREMENT=37;

--
-- 테이블의 AUTO_INCREMENT `gold_mem`
--
ALTER TABLE `gold_mem`
  MODIFY `GOLD_mem_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '고유번호', AUTO_INCREMENT=8;

--
-- 테이블의 AUTO_INCREMENT `gold_qna`
--
ALTER TABLE `gold_qna`
  MODIFY `GOLD_QNA_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '고유번호', AUTO_INCREMENT=13;

--
-- 테이블의 AUTO_INCREMENT `gold_reply`
--
ALTER TABLE `gold_reply`
  MODIFY `GOLD_re_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '고유번호';

--
-- 테이블의 AUTO_INCREMENT `gold_web`
--
ALTER TABLE `gold_web`
  MODIFY `GOLD_WEB_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '고유번호', AUTO_INCREMENT=7;

--
-- 테이블의 AUTO_INCREMENT `gold_write`
--
ALTER TABLE `gold_write`
  MODIFY `GOLD_Wr_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '고유번호';

--
-- 테이블의 AUTO_INCREMENT `member`
--
ALTER TABLE `member`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT COMMENT '고유번호', AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
