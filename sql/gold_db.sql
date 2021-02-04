  -- phpMyAdmin SQL Dump
  -- version 5.0.4
  -- https://www.phpmyadmin.net/
  --
  -- Host: 127.0.0.1
  -- 생성 시간: 21-02-04 03:41
  -- 서버 버전: 10.4.17-MariaDB
  -- PHP 버전: 8.0.0

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

  -- --------------------------------------------------------

  --
  -- 테이블 구조 `gold_de`
  --

  CREATE TABLE `gold_de` (
    `GOLD_DE_num` int(11) NOT NULL COMMENT '고유번호',
    `GOLD_DE_tit` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '제목',
    `GOLD_DE_ser` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '시리얼넘버',
    `GOLD_DE_des` text CHARACTER SET utf8 NOT NULL COMMENT '설명',
    `GOLD_DE_img1` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '사진1',
    `GOLD_DE_img2` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '사진2',
    `GOLD_DE_thumb` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '썸네일이미지',
    `GOLD_DE_cli` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '납품처',
    `GOLD_DE_reg` varchar(15) CHARACTER SET utf8 NOT NULL COMMENT '등록일'
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
    `GOLD_mem_regi_day` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '가입일',
    `GOLD_mem_level` int(11) DEFAULT NULL COMMENT '레벨(회원등급)',
    `GOLD_mem_point` int(11) NOT NULL COMMENT '포인트'
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

  --
  -- 테이블의 덤프 데이터 `gold_mem`
  --

  INSERT INTO `gold_mem` (`GOLD_mem_num`, `GOLD_mem_id`, `GOLD_mem_name`, `GOLD_mem_email`, `GOLD_mem_pass`, `GOLD_mem_regi_day`, `GOLD_mem_level`, `GOLD_mem_point`) VALUES
  (1, 'test', 'user', 'asdf1@asdf', '1234', '2020-12-28 10:01:16', 1, 0),
  (9, 'test1', 'bbbb', 'admnin@123456789', '1234', '2021-02-02 06:06:41', 9, 0),
  (10, 'admnin', 'aaa', 'admnin@213456789', '1234', '2021-02-02 06:07:01', 9, 0),
  (11, 'chlwldn', 'ìµœì§€ìš°', 'chlwldn@1234567998', '1234', '2021-02-03 08:24:20', 9, 0);

  -- --------------------------------------------------------

  --
  -- 테이블 구조 `gold_msg`
  --

  CREATE TABLE `gold_msg` (
    `GOLD_MSG_num` int(11) NOT NULL COMMENT '고유번호',
    `GOLD_MSG_name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '메세지 작성자',
    `GOLD_MSG_email` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '작성자 이메일',
    `GOLD_MSG_tit` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '메세지 제목',
    `GOLD_MSG_con` text CHARACTER SET utf8 NOT NULL COMMENT '메세지 내용',
    `GOLD_MSG_reg` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '작성일자'
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

  -- --------------------------------------------------------

  --
  -- 테이블 구조 `gold_qna`
  --

  CREATE TABLE `gold_qna` (
    `GOLD_QNA_num` int(11) NOT NULL COMMENT '고유번호',
    `GOLD_QNA_id` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '글쓴이',
    `GOLD_QNA_tit` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '글제목',
    `GOLD_QNA_con` text CHARACTER SET utf8 NOT NULL COMMENT '내용',
    `GOLD_QNA_reg` varchar(11) CHARACTER SET utf8 NOT NULL COMMENT '등록일',
    `GOLD_QNA_hit` varchar(15) CHARACTER SET utf8 NOT NULL COMMENT '조회수'
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

  --
  -- 덤프된 테이블의 인덱스
  --

  --
  -- 테이블의 인덱스 `gold_ans`
  --
  ALTER TABLE `gold_ans`
    ADD PRIMARY KEY (`GOLD_ANS_num`);

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
  -- 테이블의 인덱스 `gold_msg`
  --
  ALTER TABLE `gold_msg`
    ADD PRIMARY KEY (`GOLD_MSG_num`);

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
  -- 덤프된 테이블의 AUTO_INCREMENT
  --

  --
  -- 테이블의 AUTO_INCREMENT `gold_ans`
  --
  ALTER TABLE `gold_ans`
    MODIFY `GOLD_ANS_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '고유번호', AUTO_INCREMENT=1;

  --
  -- 테이블의 AUTO_INCREMENT `gold_app`
  --
  ALTER TABLE `gold_app`
    MODIFY `GOLD_APP_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '고유번호', AUTO_INCREMENT=1;

  --
  -- 테이블의 AUTO_INCREMENT `gold_de`
  --
  ALTER TABLE `gold_de`
    MODIFY `GOLD_DE_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '고유번호', AUTO_INCREMENT=1;

  --
  -- 테이블의 AUTO_INCREMENT `gold_mem`
  --
  ALTER TABLE `gold_mem`
    MODIFY `GOLD_mem_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '고유번호', AUTO_INCREMENT=1;

  --
  -- 테이블의 AUTO_INCREMENT `gold_msg`
  --
  ALTER TABLE `gold_msg`
    MODIFY `GOLD_MSG_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '고유번호', AUTO_INCREMENT=1;

  --
  -- 테이블의 AUTO_INCREMENT `gold_qna`
  --
  ALTER TABLE `gold_qna`
    MODIFY `GOLD_QNA_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '고유번호', AUTO_INCREMENT=1;

  --
  -- 테이블의 AUTO_INCREMENT `gold_reply`
  --
  ALTER TABLE `gold_reply`
    MODIFY `GOLD_re_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '고유번호';

  --
  -- 테이블의 AUTO_INCREMENT `gold_web`
  --
  ALTER TABLE `gold_web`
    MODIFY `GOLD_WEB_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '고유번호', AUTO_INCREMENT=1;

  --
  -- 테이블의 AUTO_INCREMENT `gold_write`
  --
  ALTER TABLE `gold_write`
    MODIFY `GOLD_Wr_num` int(11) NOT NULL AUTO_INCREMENT COMMENT '고유번호';
  COMMIT;

  /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
  /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
  /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
