-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 23, 2013 at 01:16 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `harvardw_p4_harvardweb_biz`
--
CREATE DATABASE IF NOT EXISTS `harvardw_p4_harvardweb_biz` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `harvardw_p4_harvardweb_biz`;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `created`, `modified`, `user_id`, `content`) VALUES
(24, 1387283711, 1387283711, 52, 'Hello??'),
(25, 1387283863, 1387283863, 53, 'Good morning!!'),
(28, 1387335783, 1387335783, 53, 'dsdsd'),
(29, 1387335873, 1387335873, 53, 'Good night/'),
(30, 1387759454, 1387759454, 56, '태국 장원참외 판촉전'),
(31, 1387759497, 1387759497, 56, '농산물 우수 관리 인증'),
(32, 1387760352, 1387760352, 57, '맛있는 즐거움과 기쁨이 가득한 싱싱한 빨간 딸기 농원!!'),
(33, 1387760391, 1387760391, 57, '다양한 체험, 딸기 수확체험'),
(34, 1387760660, 1387760660, 58, '푸른 숲 산 사과 농원'),
(35, 1387760718, 1387760718, 58, '높고 깨끗한 명산에서 자란 맛있는 푸른 숲 사과');

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE IF NOT EXISTS `sites` (
  `domain_id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `name` varchar(40) NOT NULL COMMENT 'site name',
  `domain_address` varchar(40) NOT NULL COMMENT 'domain address',
  `owner` varchar(20) NOT NULL,
  `local` varchar(10) NOT NULL COMMENT 'local location',
  `local02` varchar(10) NOT NULL,
  `category02` varchar(10) NOT NULL,
  PRIMARY KEY (`domain_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4686 ;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`domain_id`, `name`, `domain_address`, `owner`, `local`, `local02`, `category02`) VALUES
(3889, '콩이랑상걸리전통장', 'http://www.withkong.com', '', '강원도', '춘천시', '콩'),
(3890, '강릉팜', 'http://farm.gn.go.kr', '', '강원도', '강릉시', '사과'),
(3916, '독정정미소', 'http://www.janganrice.net/', '', '경기도', '화성시', '쌀'),
(3917, '은성주말관광농원', 'http://kgfarm.gg.go.kr/farm/00079/', '', '경기도', '화성시', '배'),
(3919, '와초농원', 'http://new.hi-farm.com/store/A00067', '', '경기도', '연천군', '배'),
(3921, '쌀밥같은 현미', 'http://www.hyunmijoa.com/', '', '경기도', '연천군', '쌀'),
(3928, '유림농원', 'http://yrapple.com', '개인', '경상북도', '안동시', '사과'),
(3931, '산배농원', 'http://sanbae.kr/', '개인', '경상북도', '안동시', '배'),
(3933, '광복농장', 'http://rkb.kr/', '개인', '경상북도', '안동시', '사과'),
(3936, '푸른숲산사과농장', 'http://www.purunapple.com/', '개인', '경상북도', '안동시', '사과'),
(3937, '안동블루베리영농조합', 'http://berrylove.co.kr/', '개인', '경상북도', '안동시', '블루베리'),
(3938, '반딧불이성곡농원', 'http://bandyapple.com/', '개인', '경상북도', '안동시', '사과'),
(3939, '안동전통한과', 'http://andonghanga.com/', '개인', '경상북도', '안동시', '한과'),
(3941, '대흥사과농장', 'http://apple1.kr/', '개인', '경상북도', '안동시', '사과'),
(3946, '착한농장', 'http://goodnj.kr/', '개인', '경상북도', '안동시', '사과'),
(3947, '금빛이슬', 'http://ecotea.kr/', '개인', '경상북도', '안동시', '국화차'),
(3948, '학가산금학', 'http://teas.kr/', '개인', '경상북도', '안동시', '국화차'),
(3949, '블루베리 불로초농원', 'http://goodvery.net/', '개인', '경상북도', '안동시', '블루베리'),
(3951, '덕산농원', 'http://www.dsfarm.kr/', '개인', '경상북도', '안동시', '사과'),
(3956, '안동정일품사과농장', 'http://www.ww4989.kr/', '개인', '경상북도', '안동시', '사과'),
(3957, '안동오름실농원', 'http://www.j2170.kr/', '개인', '경상북도', '안동시', '사과'),
(3958, '안동형제온원', 'http://www.a4688.kr/', '개인', '경상북도', '안동시', '사과'),
(3959, '토일새코미사관오장', 'http://www.secomiapple.com/', '개인', '경상북도', '안동시', '사과'),
(3965, '풍산사과', 'http://psapple.com/', '개인', '경상북도', '안동시', '사과'),
(3967, '제비원 사과농장', 'http://organicfarming.co.kr/', '개인', '경상북도', '안동시', '사과'),
(3969, '병태와 영자', 'http://byfarm.com/', '개인', '경상북도', '안동시', '쌀'),
(3970, '시남농원', 'http://sinamfarm.com/', '개인', '경상북도', '안동시', '사과'),
(3971, '황금사과농장', 'http://applegold.co.kr/', '개인', '경상북도', '안동시', '사과'),
(3972, '노루골농원', 'http://noruapple.com/', '개인', '경상북도', '안동시', '사과'),
(3973, '태성농원', 'http://sanapple.co.kr/', '개인', '경상북도', '안동시', '사과'),
(3974, '애플농장', 'http://andongapple.pe.kr/', '개인', '경상북도', '안동시', '사과'),
(3977, '안동대추', 'http://andongdaechu.com/', '개인', '경상북도', '안동시', '대추'),
(3981, '천지갑산 사과', 'http://kilanapple.co.kr/', '개인', '경상북도', '안동시', '사과'),
(3982, '해맑은사과', 'http://goodap.com/', '개인', '경상북도', '안동시', '사과'),
(3987, '류충현 약용버섯', 'http://mushroom.co.kr/', '개인', '경상북도', '안동시', '표고버섯'),
(3990, '복숭아나라', 'http://www.peachnara.co.kr/', '', '경상북도', '구미시', '복숭아'),
(3994, '찹쌀보리', 'http://www.cboli.co.kr/', '', '경상북도', '구미시', '보리'),
(4000, '천생농원', 'http://cheonsaengberry.com/', '', '경상북도', '구미시', '블루베리'),
(4010, '금호산인삼연구회', 'http://ginsengok.com/', '', '경상북도', '구미시', '인삼제품'),
(4011, '메론나라', 'http://melonara.cafe24.com/', '', '경상북도', '구미시', '참외'),
(4015, '영주꿀사과', 'http://cafe.daum.net/appleandhoney', '', '경상북도', '영주시', '사과'),
(4016, '무지개농원', 'http://blog.naver.com/nan4691', '', '경상북도', '영주시', '무'),
(4017, '장서방내', 'http://blog.daum.net/1402apple', '', '경상북도', '영주시', '사과'),
(4018, '소백인삼영농조합', 'http://www.sbkmall.com/', '', '경상북도', '영주시', '인삼제품'),
(4020, '북일사과작목반', 'http://www.farmmoa.com/bukil/index2.jsp', '', '경상북도', '영주시', '사과'),
(4023, '무농약인삼', 'http://cafe.daum.net/sujun3407', '', '경상북도', '영주시', '인삼제품'),
(4029, '선비촌참느타리버섯', 'http://blog.naver.com/chamneutari', '', '경상북도', '영주시', '느타리버섯'),
(4030, '한우리', 'http://blog.naver.com/k6368433', '', '경상북도', '영주시', '소고기'),
(4031, '참좋은사과', 'http://blog.naver.com/asfamily46', '', '경상북도', '영주시', '사과'),
(4032, '부석사옆사과농장', 'http://blog.naver.com/gogoxogh', '', '경상북도', '영주시', '사과'),
(4034, '사과농원', 'http://blog.naver.com/applepark53', '', '경상북도', '영주시', '사과'),
(4035, '소백산 산사과 꿀복숭아', 'http://blog.naver.com/ads5203', '', '경상북도', '영주시', '복숭아'),
(4037, '홍삼마을', 'http://blog.naver.com/leekh901', '', '경상북도', '영주시', '인삼제품'),
(4044, '성주참외할인전', 'http://www.cyso.co.kr/', '', '경상북도', '성주군', '참외'),
(4047, '장원인삼참외', 'http://www.bestmelon.com/', '', '경상북도', '성주군', '참외'),
(4048, '성주참외전문쇼핑몰', 'http://www.melonade.co.kr/', '', '경상북도', '성주군', '참외'),
(4049, '참외원예농협', 'http://www.melon.or.kr/', '', '경상북도', '성주군', '참외'),
(4050, '성주달콤참외', 'http://www.sweet-melon.kr/', '', '경상북도', '성주군', '참외'),
(4051, '성주노란참외', 'http://goldmelon.co.kr/', '', '경상북도', '성주군', '참외'),
(4052, '가야산녹색체험마을', 'http://gayasan.invil.org/', '', '경상북도', '성주군', '체험마을'),
(4053, '토마토새댁네', 'http://suyane.kr/', '', '경상북도', '성주군', '토마토'),
(4059, '경산임당대추', 'http://daechui.puruemi.com/', '', '경상북도', '경산시', '대추'),
(4061, '경산포도골', 'http://www.podogol.com/', '', '경상북도', '경산시', '포도'),
(4063, '한장군쌀', 'http://www.hanjanggun.co.kr/', '', '경상북도', '경산시', '쌀'),
(4064, '농원한반도', 'http://www.koreapeach.co.kr/', '', '경상북도', '경산시', '복숭아'),
(4065, '새미네대추농장', 'http://www.saemine.com/', '', '경상북도', '경산시', '대추'),
(4080, '스마일흙집사과원 ', 'http://www.smileapple.kr/', '', '경상북도', '군위군', '사과'),
(4082, '골목포도원 ', 'http://golmokpodo.com/', '', '경상북도', '군위군', '포도'),
(4083, '가나안포도원 ', 'http://ganaan.farmmoa.com/', '', '경상북도', '군위군', '포도'),
(4084, '윤팔선군위콩잎김치 ', 'http://www.palsun.co.kr/', '', '경상북도', '군위군', '김치'),
(4124, '고추팜', 'http://www.gochufarm.com/', '', '경상남도', '진주시', '고추'),
(4131, '배산골농원', 'http://www.baesangol.co.kr/', '', '경상남도', '진주시', '배'),
(4134, '허브쌀', 'http://www.hubssal.co.kr/', '', '경상남도', '진주시', '쌀'),
(4140, '삼시세끼', 'http://www.goldrice.net/', '', '경상남도', '진주시', '쌀'),
(4141, '라이스콜', 'http://www.ricecall.com/', '', '경상남도', '진주시', '쌀'),
(4159, '토마토누리', 'http://www.tomatonuri.com/', '', '경상남도', '사천시', '토마토'),
(4162, '토마토피아', 'http://www.tomatopia.net/', '', '경상남도', '사천시', '토마토'),
(4163, '성원토마토', 'http://www.tomajjang.co.kr/', '', '경상남도', '사천시', '토마토'),
(4164, '유정토마토', 'http://www.tomatoma.co.kr/', '', '경상남도', '사천시', '토마토'),
(4184, '지리산신등표고버섯', 'http://sindeung.puruemi.com/', '', '경상남도', '산청군', '표고버섯'),
(4197, '산청쌀 ', 'http://www.haepssal.com/', '', '경상남도', '산청군', '쌀'),
(4198, '차황 상법마을', 'http://www.hwangmaegol.co.kr/', '', '경상남도', '산청군', '차'),
(4202, '조령산체험마을', 'http://one.invil.org/ ', '', '충청북도', '괴산군', '체험마을'),
(4210, '고추박사이종민', 'http://www.gochumi.co.kr/', '', '충청북도', '음성군', '고추'),
(4219, '여울복숭아', 'http://www.yeouldo.com/', '', '충청북도', '옥천군', '복숭아'),
(4229, '서대느타리버섯농원', 'http://new.hi-farm.com/store/D03025/', '', '충청북도', '옥천군', '느타리버섯'),
(4232, '황산포도마을', 'http://hspodo.invil.org/', '', '충청북도', '영동군', '포도'),
(4245, '한국블루베리연구소', 'http://www.kbba.or.kr/', '', '충청남도', '청양군', '블루베리'),
(4246, '청양고추랜드', 'http://www.gochuland.co.kr/', '', '충청남도', '청양군', '고추'),
(4259, '칠갑산구기자한과', 'http://www.gugijahangwa.com/', '', '충청남도', '청양군', '한과'),
(4263, '크로바양계', 'http://www.eggking2000.com/', '', '충청남도', '홍성군', '닭고기'),
(4267, '태경딸기농원', 'http://www.dalkiya.com/', '', '충청남도', '논산시', '딸기'),
(4270, '해오름농원', 'http://www.apple-land.net/', '', '충청남도', '논산시', '사과'),
(4271, '굿모닝딸기농원', 'http://www.goodmorningsb.com/', '', '충청남도', '논산시', '딸기'),
(4272, '빨간딸기농원', 'http://www.redddalki.com/', '', '충청남도', '논산시', '딸기'),
(4282, '도림버섯촌', 'http://www.himush.co.kr/', '', '충청남도', '예산군', '표고버섯'),
(4285, '민균이네인삼농장', 'http://blog.naver.com/mami322', '', '충청남도', '예산군', '인삼제품'),
(4286, '복사과', 'http://www.boksakwa.co.kr/', '', '충청남도', '예산군', '사과'),
(4288, '산에들에표고농장', 'http://blog.naver.com/ysmkim1021', '', '충청남도', '예산군', '표고버섯'),
(4290, '삽다리전통한과', 'http://blog.naver.com/sapdare', '', '충청남도', '예산군', '한과'),
(4291, '삽다리한과', 'http://www.sapdari.co.kr/', '', '충청남도', '예산군', '한과'),
(4294, '아람농장', 'http://www.ijoaapple.com/', '', '충청남도', '예산군', '사과'),
(4299, '예당버섯', 'http://www.ydmush.com/', '', '충청남도', '예산군', '표고버섯'),
(4300, '예산사과농원', 'http://www.ysapple.com/', '', '충청남도', '예산군', '사과'),
(4305, '은헤농장 옥골사과', 'http://blog.naver.com/lkj88211', '', '충청남도', '예산군', '사과'),
(4309, '휴무스팜', 'http://blog.naver.com/ljw9959', '', '충청남도', '예산군', '무'),
(4311, '법산연꽃체험마을', 'http://www.beopsanlotus.co.kr/', '', '충청남도', '태안군', '체험마을'),
(4321, '노을이머무는 해변', 'http://www.ssbeach.co.kr/', '', '충청남도', '태안군', '무'),
(4336, '인삼약초정보화마을', 'http://insamherb.invil.org/', '', '충청남도', '금산군', '인삼제품'),
(4341, '월명산농원', 'http://gtvapple.com/', '', '충청남도', '부여군', '사과'),
(4355, '장수버섯농장', 'http://www.lingzhi.co.kr/', '', '충청남도', '부여군', '송이버섯'),
(4360, '한길버섯농원', 'http://mushfarm.co.kr/', '', '충청남도', '서천군', '표고버섯'),
(4369, '아산기쁨두배마을 ', 'http://www.asan.go.kr/sub_page/sub_page.', '', '충청남도', '아산시', '체험마을'),
(4370, '영인내이랑마을 ', 'http://www.asan.go.kr/sub_page/sub_page.', '', '충청남도', '아산시', '체험마을'),
(4371, '송악스머프마을 ', 'http://www.asan.go.kr/sub_page/sub_page.', '', '충청남도', '아산시', '체험마을'),
(4372, '농촌체험관광마을 ', 'http://www.asan.go.kr/sub_page/sub_page.', '', '충청남도', '아산시', '체험마을'),
(4373, '농촌체험휴양마을 ', 'http://www.asan.go.kr/sub_page/sub_page.', '', '충청남도', '아산시', '체험마을'),
(4378, '나비아이곤충체험 ', 'http://www.nabii.com/', '', '충청남도', '서산시', '체험마을'),
(4380, '생강한과만들기 ', 'http://www.seosanhangwa.com/', '', '충청남도', '서산시', '한과'),
(4381, '육가공체험농장 ', 'http://cafe.naver.com/smokingmeat', '', '충청남도', '서산시', '체험마을'),
(4387, '매실한과 ', 'http://blog.naver.com/allme1004', '', '충청남도', '당진시', '한과'),
(4391, '자연그대로 ', 'http://blog.naver.com/62berry', '', '충청남도', '당진시', '블루베리'),
(4396, '행복하누', 'http://www.khanwoo.co.kr/', '', '전라북도', '정읍시', '소고기'),
(4399, '내장산블루베리', 'http://www.i-blueberry.com/', '', '전라북도', '정읍시', '블루베리'),
(4406, '연천양계', 'http://www.yuncheon.co.kr/', '', '전라북도', '정읍시', '닭고기'),
(4414, '전일농장단풍사과', 'http://www.jeonilfarm.co.kr/', '', '전라북도', '정읍시', '사과'),
(4419, '남송다원', 'http://www.chonwontea.co.kr/', '', '전라북도', '정읍시', '차'),
(4420, '눈사랑블루베리농원', 'http://www.eyeberry.co.kr/', '', '전라북도', '정읍시', '블루베리'),
(4502, '대둔산블루베리농장 ', 'http://www.unjuberry.com/', '', '전라북도', '완주군', '블루베리'),
(4508, '신리표고버섯농장 ', 'http://new.hi-farm.com/store/B00094/', '', '전라북도', '완주군', '표고버섯'),
(4511, '영광포도원 ', 'http://www.kangpodo.com/', '', '전라북도', '완주군', '포도'),
(4517, '원심복합영농조합', 'http://www.ricekeep.com/', '', '전라북도', '부안군', '쌀'),
(4519, '머쉬몰', 'http://mushmall.com/', '', '전라북도', '부안군', '표고버섯'),
(4521, '주산사랑배메쌀', 'http://jusasa.farmmoa.com/', '', '전라북도', '부안군', '쌀'),
(4532, '구름들녘', 'http://www.yosumrice.com/', '', '전라북도', '전주시', '쌀'),
(4534, '묘보홍삼', 'http://www.myobo.kr/', '', '전라북도', '진안군', '인삼제품'),
(4536, '진안홍삼', 'http://blog.naver.com/2hongsam45', '', '전라북도', '진안군', '인삼제품'),
(4539, '표고아빠장터', 'http://www.mushroomdad.com/', '', '전라북도', '진안군', '표고버섯'),
(4540, '능길원 블루베리', 'http://www.berrypark.co.kr/', '', '전라북도', '진안군', '블루베리'),
(4547, '무릉원', 'http://mureungwon.com/', '', '전라북도', '진안군', '무'),
(4548, '강보홍삼', 'http://gangbo.co.kr/', '', '전라북도', '진안군', '인삼제품'),
(4551, '대본영농조합법인', 'http://jbrice.farmmoa.com/', '', '전라북도', '익산시', '쌀'),
(4554, '황토농원', 'http://okapple.farmmoa.com/', '', '전라북도', '익산시', '사과'),
(4563, '전주김치', 'http://www.jeonjukimchi.co.kr/', '', '전라북도', '임실군', '김치'),
(4566, '임실전통한과', 'http://www.hangwa.co.kr/', '', '전라북도', '임실군', '한과'),
(4612, '황금닭', 'http://coco.invil.org/', '', '전라남도', '강진군', '닭고기'),
(4614, '21세기 블루베리농원 ', 'http://www.21cblueberry.com/', '', '전라남도', '담양군', '블루베리'),
(4617, '창평한과, 호정 ', 'http://hojungfood.co.kr/', '', '전라남도', '담양군', '한과'),
(4619, '안복자한과 ', 'http://www.anbokja.co.kr/', '', '전라남도', '담양군', '한과'),
(4629, '진도소포검정쌀마을 ', 'http://sopoli.invil.org/', '', '전라남도', '진도군', '쌀'),
(4641, '진도구기정차 ', 'http://www.kukija.co.kr/', '', '전라남도', '진도군', '차'),
(4644, '광록포도원', 'http://www.smilerh.blog.me/', '', '전라남도', '곡성군', '포도'),
(4650, '샛터농장', 'http://www.ybapple.com/', '', '전라남도', '곡성군', '사과'),
(4664, '약대추농원', 'http://daechu.namdominbak.go.kr/', '', '전라남도', '곡성군', '대추'),
(4676, '신안배식품', 'http://home.invil.org/dbsdlswk89/', '', '전라남도', '신안군', '배'),
(4679, '신안으뜸무화과', 'http://www.goodfarm.net/figs', '', '전라남도', '신안군', '무'),
(4683, '압해배정보화마을', 'http://sinanpear.invil.org/', '', '전라남도', '신안군', '배'),
(4684, '바닷가무화과', 'http://www.goodfarm.net/yong', '', '전라남도', '신안군', '무'),
(4685, '바닷가무화과', 'http://www.beachfig.kr/', '', '전라남도', '신안군', '무');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` int(11) NOT NULL,
  `timezone` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `created`, `modified`, `token`, `password`, `last_login`, `timezone`, `first_name`, `last_name`, `email`) VALUES
(56, 1387759242, 1387759242, '6341ef446adc60b84cc81510e5464cb9d7ef1332', '8d8c50072480ab1a7b7336345139265fa6bfc1a8', 0, '', '성주', '참외', 'choi3961@naver.com'),
(57, 1387760211, 1387760211, '1b386f0b6a924c145dc48b181a21b434fb7da65d', '8d8c50072480ab1a7b7336345139265fa6bfc1a8', 0, '', '빨간', '딸기', 'ab@ac.net'),
(58, 1387760605, 1387760605, 'c0a42ac93c49043a95597c7bd9edd8de9f9d72db', '8d8c50072480ab1a7b7336345139265fa6bfc1a8', 0, '', '푸른숲', '사과', 'a@ac.net');

-- --------------------------------------------------------

--
-- Table structure for table `users_users`
--

CREATE TABLE IF NOT EXISTS `users_users` (
  `user_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_id_followed` int(11) NOT NULL,
  PRIMARY KEY (`user_user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `users_users`
--

INSERT INTO `users_users` (`user_user_id`, `created`, `user_id`, `user_id_followed`) VALUES
(14, 1387759511, 56, 56),
(15, 1387759521, 56, 54),
(16, 1387759533, 56, 53),
(17, 1387760405, 57, 56),
(18, 1387760726, 58, 56),
(19, 1387760727, 58, 57),
(20, 1387760729, 58, 58),
(21, 1387760793, 56, 57),
(22, 1387760794, 56, 58);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_users`
--
ALTER TABLE `users_users`
  ADD CONSTRAINT `users_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
