-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 21-01-29 02:16
-- 서버 버전: 10.4.16-MariaDB
-- PHP 버전: 7.4.12

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
-- 테이블 구조 `gold_ans`
--

CREATE TABLE `gold_ans` (
  `GOLD_ANS_num` int(11) NOT NULL COMMENT '고유번호',
  `GOLD_ANS_QNA_num` int(11) DEFAULT NULL COMMENT '질문글 번호',
  `GOLD_ANS_con` text CHARACTER SET utf8 NOT NULL COMMENT '답글 내용',
  `GOLD_ANS_reg` varchar(15) CHARACTER SET utf8 NOT NULL COMMENT '답글 등록일'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `gold_ans`
--

INSERT INTO `gold_ans` (`GOLD_ANS_num`, `GOLD_ANS_QNA_num`, `GOLD_ANS_con`, `GOLD_ANS_reg`) VALUES
(1, 12, 'ans_con', '2021-01-28'),
(3, 13, '첫 개시글 답변 입니다.', '2021-01-28'),
(4, 9, '9번 답변 완료', '2021-01-28');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `gold_ans`
--
ALTER TABLE `gold_ans`
  ADD PRIMARY KEY (`GOLD_ANS_num`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `gold_ans`
--
ALTER TABLE `gold_ans`
  MODIFY `GOLD_ANS_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '고유번호', AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
