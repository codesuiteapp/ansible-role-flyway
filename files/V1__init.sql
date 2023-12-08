-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: sto-db-svc    Database: stoeco
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `STD_ACNT_MGMT_ITT_INFO`
--

DROP TABLE IF EXISTS `STD_ACNT_MGMT_ITT_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STD_ACNT_MGMT_ITT_INFO` (
  `ACNT_MGMT_ITT_NO` char(8) COLLATE utf8mb4_bin NOT NULL COMMENT '계좌관리기관번호',
  `ACNT_MGMT_ITT_NM` char(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '계좌관리기관명',
  PRIMARY KEY (`ACNT_MGMT_ITT_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계좌관기기관 계좌정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STD_ACNT_MGMT_ITT_INFO`
--

LOCK TABLES `STD_ACNT_MGMT_ITT_INFO` WRITE;
/*!40000 ALTER TABLE `STD_ACNT_MGMT_ITT_INFO` DISABLE KEYS */;
/*!40000 ALTER TABLE `STD_ACNT_MGMT_ITT_INFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STD_EXAMTN_ISTM_INFO`
--

DROP TABLE IF EXISTS `STD_EXAMTN_ISTM_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STD_EXAMTN_ISTM_INFO` (
  `ISU_NO` char(12) COLLATE utf8mb4_bin NOT NULL COMMENT '종목번호',
  `BF_EXAMTN_DOC_CRE_DT` date NOT NULL COMMENT '사전심사 문서생성일',
  `BF_EXAMTN_DOC_NO` int NOT NULL COMMENT '사전심사 문서번호',
  `ISTM_SEQNO` int NOT NULL COMMENT '서류 일련번호',
  `ISTM_NM` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '서류명',
  `ISTM_FILE_NM` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '서류 파일명',
  `ISTM_LOC` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '서류 위치',
  `ISTM_PTN` varchar(5) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '서류 유형(xls, xlsm, xlsx, pdf, doc, hwp, pptx)',
  `ISTM_AVAL_TP` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '서류 유호 구분(1:정상, 2:삭제)',
  `ISTM_CODE` char(2) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '서류코드',
  PRIMARY KEY (`ISU_NO`,`BF_EXAMTN_DOC_CRE_DT`,`BF_EXAMTN_DOC_NO`,`ISTM_SEQNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='토큰증권 심사 서류정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STD_EXAMTN_ISTM_INFO`
--

LOCK TABLES `STD_EXAMTN_ISTM_INFO` WRITE;
/*!40000 ALTER TABLE `STD_EXAMTN_ISTM_INFO` DISABLE KEYS */;
INSERT INTO `STD_EXAMTN_ISTM_INFO` VALUES ('123456','2023-12-06',14,1,'신탁계약서','test.xlsx','\\appdata\\sto\\20231206','xlsx','2','01');
/*!40000 ALTER TABLE `STD_EXAMTN_ISTM_INFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STD_FLTCO_MGMT_ACNT`
--

DROP TABLE IF EXISTS `STD_FLTCO_MGMT_ACNT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STD_FLTCO_MGMT_ACNT` (
  `FLTCO_MGMT_ACNT_NO` char(8) COLLATE utf8mb4_bin NOT NULL COMMENT '발행사 관리계좌번호',
  `FLTCO_MGMT_ACNT_NM` char(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '발행사 관리계좌명',
  PRIMARY KEY (`FLTCO_MGMT_ACNT_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='발행사 관리계좌';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STD_FLTCO_MGMT_ACNT`
--

LOCK TABLES `STD_FLTCO_MGMT_ACNT` WRITE;
/*!40000 ALTER TABLE `STD_FLTCO_MGMT_ACNT` DISABLE KEYS */;
/*!40000 ALTER TABLE `STD_FLTCO_MGMT_ACNT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STD_OWN_PSN_PRSL`
--

DROP TABLE IF EXISTS `STD_OWN_PSN_PRSL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STD_OWN_PSN_PRSL` (
  `PRSL_DT` date NOT NULL COMMENT '신청일',
  `ISS_YEAR` int NOT NULL COMMENT '발급년',
  `ISS_NO` int NOT NULL COMMENT '발급번호',
  `FLTCO_CODE` char(5) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '발행사 코드',
  `ACNT_MGMT_ITT_NO` char(8) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '계좌관리기관번호',
  `OWN_PROOF_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '소유증명구분(1:소유자증명서, 2:소유내용의 통지)',
  `ISU_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '종목구분(1:신탁수익증권, 2:투자계약증권)',
  `ISU_NO` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '종목번호',
  `OWN_PROOF_PRSL_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '소유증명 신청구분(1:신청  2:신청 취소, 3:반환(해지)신청, 4:재발급 신청)',
  `OWN_PROOF_AGRM_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '소유증명 승인구분(0:미승인, 1:발급 승인, 2:반환(해지) 승인, 3:재발급 승인)',
  `CSGN_ACNT_NO` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '위탁계좌번호',
  `OWN_PSN_NM` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '소유자 이름',
  `RMNNO` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '실명확인번호',
  `SUBM_PLC` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '제출처',
  `OWN_PROOF_USAGE_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '소유증명 용도구분',
  `AVAL_TERM_SRT_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '유효기간 시작일',
  `AVAL_TERM_END_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '유효기간 종료일',
  `CNT` int NOT NULL DEFAULT '0' COMMENT '부수(건수)',
  `TEL_NO_1` varchar(4) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '전화번호1',
  `TEL_NO_2` varchar(4) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '전화번호2',
  `TEL_NO_3` varchar(4) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '전화번호3',
  `FAX_EMAIL` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT 'FAX/이메일',
  `PRSL_QTY` int NOT NULL DEFAULT '0' COMMENT '신청 수량',
  `PRSL_PSN_ID` char(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '신청자 ID',
  `ISS_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '발급일',
  `ISS_APRVR_ID` char(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '발급 승인자 ID',
  `GVBK_PRSL_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '반환 신청일',
  `GVBK_PRSL_PSN_ID` char(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '반환 신청자 ID',
  `GVBK__DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '반환일',
  `GVBK_APRVR_ID` char(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '반환 승인자 ID',
  `RE_ISS_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '재발급일',
  `RE_ISS_APRVR_ID` char(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '재발급 승인자 ID',
  PRIMARY KEY (`PRSL_DT`,`ISS_YEAR`,`ISS_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='소유자증명 신청 내역';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STD_OWN_PSN_PRSL`
--

LOCK TABLES `STD_OWN_PSN_PRSL` WRITE;
/*!40000 ALTER TABLE `STD_OWN_PSN_PRSL` DISABLE KEYS */;
/*!40000 ALTER TABLE `STD_OWN_PSN_PRSL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STD_REG_ISTM_INFO`
--

DROP TABLE IF EXISTS `STD_REG_ISTM_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STD_REG_ISTM_INFO` (
  `ISU_NO` char(12) COLLATE utf8mb4_bin NOT NULL COMMENT '종목번호',
  `FLTN_REG_DOC_CRE_DT` date NOT NULL COMMENT '발행등록 문서생성일',
  `FLTN_REG_DOC_NO` int NOT NULL COMMENT '발행등록 문서번호',
  `ISTM_SEQNO` int NOT NULL COMMENT '서류 일련번호',
  `ISTM_NM` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '서류명',
  `ISTM_FILE_NM` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '서류 파일명',
  `ISTM_LOC` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '서류 위치',
  `ISTM_PTN` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '서류 유형(xls, xlsm, xlsx, pdf, doc, hwp, pptx)',
  `ISTM_AVAL_TP` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '서류 유효 구분(1:정상, 2:삭제)',
  `ISTM_CODE` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '서류코드',
  PRIMARY KEY (`ISU_NO`,`FLTN_REG_DOC_CRE_DT`,`FLTN_REG_DOC_NO`,`ISTM_SEQNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='토큰증권 등록 서류정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STD_REG_ISTM_INFO`
--

LOCK TABLES `STD_REG_ISTM_INFO` WRITE;
/*!40000 ALTER TABLE `STD_REG_ISTM_INFO` DISABLE KEYS */;
/*!40000 ALTER TABLE `STD_REG_ISTM_INFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STD_TBD_FLTN_ASGN`
--

DROP TABLE IF EXISTS `STD_TBD_FLTN_ASGN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STD_TBD_FLTN_ASGN` (
  `REG_DT` date NOT NULL COMMENT '등록일',
  `ISU_NO` char(12) COLLATE utf8mb4_bin NOT NULL COMMENT '종목번호',
  `FLTN_REG_DOC_CRE_DT` date NOT NULL COMMENT '발행등록 문서생성일',
  `FLTN_REG_DOC_NO` int NOT NULL COMMENT '발행등록 문서번호',
  `ACNT_MGMT_ITT_NO` char(8) COLLATE utf8mb4_bin NOT NULL COMMENT '계좌관리기관번호',
  `FLTN_PRERG_QTY` int NOT NULL DEFAULT '0' COMMENT '발행 예정 수량',
  `ACNT_CNF_YN` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '계좌확인여부',
  `CNF_REQST_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '확인요청일',
  `CNF_DTTM` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '확인일시',
  `FLTN_CMPLT_YN` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '발행완료여부',
  PRIMARY KEY (`REG_DT`,`ISU_NO`,`FLTN_REG_DOC_CRE_DT`,`FLTN_REG_DOC_NO`,`ACNT_MGMT_ITT_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='토큰증권 발행 배정 상세';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STD_TBD_FLTN_ASGN`
--

LOCK TABLES `STD_TBD_FLTN_ASGN` WRITE;
/*!40000 ALTER TABLE `STD_TBD_FLTN_ASGN` DISABLE KEYS */;
/*!40000 ALTER TABLE `STD_TBD_FLTN_ASGN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STD_TBL_ACNT_MGMT_ITT_INCDEC`
--

DROP TABLE IF EXISTS `STD_TBL_ACNT_MGMT_ITT_INCDEC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STD_TBL_ACNT_MGMT_ITT_INCDEC` (
  `ACNT_MGMT_ITT_NO` char(8) COLLATE utf8mb4_bin NOT NULL COMMENT '계좌관리기관번호',
  `DATE` date NOT NULL COMMENT '일자',
  `ISU_NO` char(12) COLLATE utf8mb4_bin NOT NULL COMMENT '종목번호',
  `INCDEC_TP` char(1) COLLATE utf8mb4_bin NOT NULL COMMENT '증감 구분(1:증가, 2:감소)',
  `INCDEC_RSN_CODE_1` char(2) COLLATE utf8mb4_bin NOT NULL COMMENT '중감 사유 코드 1(11:등록, 12:계좌대체 (매입), 21:말소, 22:계좌대체 (인출))',
  `INCDEC_RSN_CODE_2` char(3) COLLATE utf8mb4_bin NOT NULL COMMENT '증감 사유 코드 2(111:등록 (예탁), 121:일반대체 (매입), 122:결제 (매입), 211:말소(권리행사변동), 221:일반대체 (인출), 222:결제 (인출))',
  `TRX_STAT_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '처리 상태 구분',
  `ISU_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '종목구분(1:신탁수익증권, 2:투자계약증권)',
  `QTY` int NOT NULL DEFAULT '0' COMMENT '수량',
  PRIMARY KEY (`ACNT_MGMT_ITT_NO`,`DATE`,`ISU_NO`,`INCDEC_TP`,`INCDEC_RSN_CODE_1`,`INCDEC_RSN_CODE_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='토큰증권 계좌관리기관 종목 증감 내역';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STD_TBL_ACNT_MGMT_ITT_INCDEC`
--

LOCK TABLES `STD_TBL_ACNT_MGMT_ITT_INCDEC` WRITE;
/*!40000 ALTER TABLE `STD_TBL_ACNT_MGMT_ITT_INCDEC` DISABLE KEYS */;
/*!40000 ALTER TABLE `STD_TBL_ACNT_MGMT_ITT_INCDEC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STD_TBL_FLTCO_FLTN_ERS`
--

DROP TABLE IF EXISTS `STD_TBL_FLTCO_FLTN_ERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STD_TBL_FLTCO_FLTN_ERS` (
  `FLTCO_CODE` char(5) COLLATE utf8mb4_bin NOT NULL COMMENT '발행사 코드',
  `REG_DT` date NOT NULL COMMENT '등록일',
  `ISU_NO` char(12) COLLATE utf8mb4_bin NOT NULL COMMENT '종목번호',
  `ACNT_MGMT_ITT_NO` char(8) COLLATE utf8mb4_bin NOT NULL COMMENT '계좌관리기관번호',
  `ISU_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '종목구분(1:신탁수익증권, 2:투자계약증권)',
  `FLTN_ERS_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '발행 말소 구분(1:발행, 2:말소)',
  `TRX_STAT_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '처리 상태 구분(1:정상, 2:취소)',
  `QTY` int NOT NULL DEFAULT '0' COMMENT '수량',
  `FLTN_ERS_RSN_CODE` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '발행말소사유 코드(1:신규발행, 2:추가발행, 3:조기상환, 4:만기상환)',
  PRIMARY KEY (`FLTCO_CODE`,`REG_DT`,`ISU_NO`,`ACNT_MGMT_ITT_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='토큰증권 발행사 발행 말소 내역';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STD_TBL_FLTCO_FLTN_ERS`
--

LOCK TABLES `STD_TBL_FLTCO_FLTN_ERS` WRITE;
/*!40000 ALTER TABLE `STD_TBL_FLTCO_FLTN_ERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `STD_TBL_FLTCO_FLTN_ERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STD_TBL_FLTCO_RGTEXE`
--

DROP TABLE IF EXISTS `STD_TBL_FLTCO_RGTEXE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STD_TBL_FLTCO_RGTEXE` (
  `FLTCO_CODE` char(5) COLLATE utf8mb4_bin NOT NULL COMMENT '발행사 코드',
  `ISU_NO` char(12) COLLATE utf8mb4_bin NOT NULL COMMENT '종목번호',
  `RGTEXE_DT` date NOT NULL COMMENT '권리행사일',
  `RGTEXE_TP` char(1) COLLATE utf8mb4_bin NOT NULL COMMENT '권리행사구분',
  `ACNT_MGMT_ITT_NO` char(8) COLLATE utf8mb4_bin NOT NULL COMMENT '계좌관리기관번호',
  `ISU_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '종목구분(1:신탁수익증권, 2:투자계약증권)',
  `CLM_STAT_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '청구상태구분(1:청구완료, 2:청구취소, 3: 확정완료)',
  `ACNT_QTY` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '계좌부 수량',
  `RGTEXE_QTY` int NOT NULL DEFAULT '0' COMMENT '권리행사 수량',
  `RGTEXE_AMT_PER_UNIT` decimal(18,6) NOT NULL DEFAULT '0.000000' COMMENT '1좌당 권리행사금액',
  `GIV_MTHD_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '지급 방식 구분',
  `GIV_CRCY_CODE` char(3) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '지급 통화코드',
  `RFUND_AMT_CALC` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '상환금 산정식',
  `INPT_PSN_ID` char(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '입력자 ID',
  `INPT_DTTM` datetime NOT NULL DEFAULT '0000-01-01 00:00:00' COMMENT '입력일시',
  `CANC_PSN_ID` char(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '취소자 ID',
  `CANC_DTTM` datetime NOT NULL DEFAULT '0000-01-01 00:00:00' COMMENT '취소일시',
  `DCSN_PSN_ID` char(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '확정자 ID',
  `DCSN_DTTM` datetime NOT NULL DEFAULT '0000-01-01 00:00:00' COMMENT '확정일시',
  PRIMARY KEY (`FLTCO_CODE`,`ISU_NO`,`RGTEXE_DT`,`RGTEXE_TP`,`ACNT_MGMT_ITT_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='토큰증권 발행사 권리행사 내역';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STD_TBL_FLTCO_RGTEXE`
--

LOCK TABLES `STD_TBL_FLTCO_RGTEXE` WRITE;
/*!40000 ALTER TABLE `STD_TBL_FLTCO_RGTEXE` DISABLE KEYS */;
/*!40000 ALTER TABLE `STD_TBL_FLTCO_RGTEXE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STD_TBL_REG_PROOF_ISS`
--

DROP TABLE IF EXISTS `STD_TBL_REG_PROOF_ISS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STD_TBL_REG_PROOF_ISS` (
  `ACNT_MGMT_ITT_NO` char(8) COLLATE utf8mb4_bin NOT NULL COMMENT '계좌관리기관번호',
  `ISS_NO` int NOT NULL COMMENT '발급번호',
  `ISS_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '발급일',
  `ABND_DT` char(8) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '해지일',
  `ISU_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '종목구분(1:신탁수익증권, 2:투자계약증권)',
  `ISU_NO` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '종목번호',
  `REG_PROOF_ISS_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '등록증명 발급구분(1:발급, 2:해지)',
  `RE_ISS_YN` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT 'Y' COMMENT '재발급 여부(Y:재발급)',
  `RE_ISS_RSN` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '재발급 사유',
  `CSGN_ACNT_NO` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '위탁계좌번호',
  `OWN_PSN_NM` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '소유자 이름',
  `RMNNO_PTN` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '실명확인번호 유형(1:주민등록번호, 2:사업자등록번호)',
  `RMNNO` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '실명확인번호',
  `SUBM_PLC` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '제출처',
  `REG_PROOF_USAGE_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '등록증명 용도구분(1:공탁법에 따른 공탁)',
  `ADDR` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '주소',
  `REG_PROOF_QTY` int NOT NULL DEFAULT '0' COMMENT '등록증명 수량',
  `ISS_APRV_ID` char(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '발급 승인자 ID',
  `ABND_APRV_ID` char(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '해지 승인자 ID',
  `BF_ISS_NO` int NOT NULL DEFAULT '0' COMMENT '이전발급번호',
  `BF_ISS_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '이전발급일',
  PRIMARY KEY (`ACNT_MGMT_ITT_NO`,`ISS_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전자등록증명 발급내역';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STD_TBL_REG_PROOF_ISS`
--

LOCK TABLES `STD_TBL_REG_PROOF_ISS` WRITE;
/*!40000 ALTER TABLE `STD_TBL_REG_PROOF_ISS` DISABLE KEYS */;
/*!40000 ALTER TABLE `STD_TBL_REG_PROOF_ISS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STD_TBL_REG_PROOF_PRSL`
--

DROP TABLE IF EXISTS `STD_TBL_REG_PROOF_PRSL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STD_TBL_REG_PROOF_PRSL` (
  `PRSL_DT` date NOT NULL COMMENT '신청일',
  `ACNT_MGMT_ITT_NO` char(8) COLLATE utf8mb4_bin NOT NULL COMMENT '계좌관리기관번호',
  `ISS_NO` int NOT NULL COMMENT '발급번호',
  `ISU_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '종목구분(1:신탁수익증권, 2:투자계약증권)',
  `ISU_NO` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '종목번호',
  `REG_PROOF_PRSL_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '등록증명 신청구분(1:신청, 2:신청 취소)',
  `REG_PROOF_AGRM_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '등록증명 승인구분(0:미승인, 1:발급 승인, 2:해지 승인, 3:재발급 승인)',
  `CSGN_ACNT_NO` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '위탁계좌번호',
  `OWN_PSN_NM` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '소유자 이름',
  `RMNNO_PTN` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '실명확인번호 유형(1:주민등록번호, 2:사업자등록번호)',
  `OWN_PSN_NO` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '소유자번호',
  `SUBM_PLC` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '제출처',
  `REG_PROOF_USAGE_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '등록증명 용도구분(1:공탁법에 따른 공탁)',
  `ADDR` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '주소',
  `PRSL_QTY` int NOT NULL DEFAULT '0' COMMENT '신청 수량',
  `PRSL_PSN_ID` char(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '신청자 ID',
  `ISS_APRV_ID` char(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '발급 승인자 ID',
  `ISS_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '발급일',
  `ABND_APRV_ID` char(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '해지 승인자 ID',
  `ABND_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '해지일',
  `RE_ISS_NO` int NOT NULL DEFAULT '0' COMMENT '재발급번호',
  `RE_ISS_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '재발급일',
  `RE_ISS_APRVR_ID` char(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '재발급 승인자 ID',
  PRIMARY KEY (`PRSL_DT`,`ACNT_MGMT_ITT_NO`,`ISS_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전자등록증명 신청 내역';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STD_TBL_REG_PROOF_PRSL`
--

LOCK TABLES `STD_TBL_REG_PROOF_PRSL` WRITE;
/*!40000 ALTER TABLE `STD_TBL_REG_PROOF_PRSL` DISABLE KEYS */;
/*!40000 ALTER TABLE `STD_TBL_REG_PROOF_PRSL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STD_TBM_ACNT_MGMT_ITT__BAL`
--

DROP TABLE IF EXISTS `STD_TBM_ACNT_MGMT_ITT__BAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STD_TBM_ACNT_MGMT_ITT__BAL` (
  `ACNT_MGMT_ITT_NO` char(8) COLLATE utf8mb4_bin NOT NULL COMMENT '계좌관리기관번호',
  `DATE` char(8) COLLATE utf8mb4_bin NOT NULL COMMENT '일자',
  `ISU_NO` char(12) COLLATE utf8mb4_bin NOT NULL COMMENT '종목번호',
  `ISU_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '종목구분(1:신탁수익증권, 2:투자계약증권)',
  `PRDAY_BAL_QTY` int NOT NULL DEFAULT '0' COMMENT '전일 잔고 수량',
  `PRDAY_DPSL_RESTRC_BAL_QTY` int NOT NULL DEFAULT '0' COMMENT '전일 처분제한 잔고 수량',
  `CRDAY_BAL_QTY` int NOT NULL DEFAULT '0' COMMENT '금일 잔고 수량',
  `CRDAY_DPSL_RESTRC_BAL_QTY` int NOT NULL DEFAULT '0' COMMENT '금일 처분제한 잔고 수량',
  PRIMARY KEY (`ACNT_MGMT_ITT_NO`,`DATE`,`ISU_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='토큰증권 계좌관리기관 잔고';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STD_TBM_ACNT_MGMT_ITT__BAL`
--

LOCK TABLES `STD_TBM_ACNT_MGMT_ITT__BAL` WRITE;
/*!40000 ALTER TABLE `STD_TBM_ACNT_MGMT_ITT__BAL` DISABLE KEYS */;
/*!40000 ALTER TABLE `STD_TBM_ACNT_MGMT_ITT__BAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STD_TBM_FD_ASSET_INFO`
--

DROP TABLE IF EXISTS `STD_TBM_FD_ASSET_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STD_TBM_FD_ASSET_INFO` (
  `FD_FLTCO_CODE` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '발행사 코드',
  `ISU_NO` char(12) COLLATE utf8mb4_bin NOT NULL COMMENT '종목번호',
  `BF_EXAMTN_DOC_CRE_DT` date NOT NULL COMMENT '사전심사 문서생성일',
  `BF_EXAMTN_DOC_NO` int NOT NULL COMMENT '사전심사 문서번호',
  `SEQNO` int NOT NULL COMMENT '일련번호',
  `ITEM` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '항목',
  `CNTS` varchar(300) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '내용',
  PRIMARY KEY (`FD_FLTCO_CODE`,`ISU_NO`,`BF_EXAMTN_DOC_CRE_DT`,`BF_EXAMTN_DOC_NO`,`SEQNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='토큰증권의 기초자산에 관한 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STD_TBM_FD_ASSET_INFO`
--

LOCK TABLES `STD_TBM_FD_ASSET_INFO` WRITE;
/*!40000 ALTER TABLE `STD_TBM_FD_ASSET_INFO` DISABLE KEYS */;
INSERT INTO `STD_TBM_FD_ASSET_INFO` VALUES ('03949','123456','2023-12-06',14,1,'작품명','스테이 히트송'),('03949','123456','2023-12-06',14,2,'작가','스탠리 김'),('03949','123456','2023-12-06',14,3,'제작년도','2018년');
/*!40000 ALTER TABLE `STD_TBM_FD_ASSET_INFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STD_TBM_FLTCO_INFO`
--

DROP TABLE IF EXISTS `STD_TBM_FLTCO_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STD_TBM_FLTCO_INFO` (
  `FD_FLTCO_CODE` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '발행사 코드',
  `FD_FLTCO_CO_NM` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '발행사 회사명',
  `FD_FLTCO_ENG_NM` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '발행사 영문명',
  `FD_FLTCO_DLG_PSN` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '발행사 대표자',
  `FD_FLTCO_HDOFC_REGENT_NO` char(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '발행사 본점사업자등록번호',
  `FD_FLTCO_HOMEPG` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '발행사 홈페이지',
  `FD_FLTCO_ADDR` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '발행사 주소',
  `CHG_USER_ID` char(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '변경사용자ID',
  `CHG_DTTM` datetime NOT NULL DEFAULT '0000-01-01 00:00:00' COMMENT '변경일시',
  PRIMARY KEY (`FD_FLTCO_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='토큰증권 발행사에 관한 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STD_TBM_FLTCO_INFO`
--

LOCK TABLES `STD_TBM_FLTCO_INFO` WRITE;
/*!40000 ALTER TABLE `STD_TBM_FLTCO_INFO` DISABLE KEYS */;
INSERT INTO `STD_TBM_FLTCO_INFO` VALUES ('03949','키움증권','KIWOOM','대표자','012345678901','https://koscom.com','서울특별시 영등포구 여의도동 123','aaa','2023-12-01 10:59:11');
/*!40000 ALTER TABLE `STD_TBM_FLTCO_INFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STD_TBM_FLTCO__BAL`
--

DROP TABLE IF EXISTS `STD_TBM_FLTCO__BAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STD_TBM_FLTCO__BAL` (
  `FLTCO_CODE` char(5) COLLATE utf8mb4_bin NOT NULL COMMENT '발행사 코드',
  `DATE` date NOT NULL COMMENT '일자',
  `ISU_NO` char(12) COLLATE utf8mb4_bin NOT NULL COMMENT '종목번호',
  `ISU_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '종목구분',
  `PRDAY_BAL_QTY` int NOT NULL DEFAULT '0' COMMENT '전일 잔고 수량',
  `PRDAY_DPSL_RESTRC_BAL_QTY` int NOT NULL DEFAULT '0' COMMENT '전일 처분제한 잔고 수량',
  `CRDAY_INCRE_QTY` int NOT NULL DEFAULT '0' COMMENT '금일 증가 수량',
  `CRDAY_DECRE_QTY` int NOT NULL DEFAULT '0' COMMENT '금일 감소 수량',
  `CRDAY_BAL_QTY` int NOT NULL DEFAULT '0' COMMENT '금일 잔고 수량',
  `CRDAY_DPSL_RESTRC_BAL_QTY` int NOT NULL DEFAULT '0' COMMENT '금일 처분제한 잔고 수량',
  `FLTN_ERS_RSN_CODE` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '발행말소사유 코드',
  PRIMARY KEY (`FLTCO_CODE`,`DATE`,`ISU_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='토큰증권 발행사 잔고';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STD_TBM_FLTCO__BAL`
--

LOCK TABLES `STD_TBM_FLTCO__BAL` WRITE;
/*!40000 ALTER TABLE `STD_TBM_FLTCO__BAL` DISABLE KEYS */;
/*!40000 ALTER TABLE `STD_TBM_FLTCO__BAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STD_TBM_FLTN_EXAMTN_INFO`
--

DROP TABLE IF EXISTS `STD_TBM_FLTN_EXAMTN_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STD_TBM_FLTN_EXAMTN_INFO` (
  `ISU_NO` char(12) COLLATE utf8mb4_bin NOT NULL COMMENT '종목번호',
  `BF_EXAMTN_DOC_CRE_DT` date NOT NULL DEFAULT (curdate()) COMMENT '사전심사 문서생성일',
  `BF_EXAMTN_DOC_NO` int NOT NULL AUTO_INCREMENT COMMENT '사전심사 문서번호',
  `ISU_TP` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '종목구분(1:신탁수익증권, 2:투자계약증권)',
  `PRSL_TRX_TP` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '신청처리구분(0:임시 저장중 (신청 미완료), 1:심사 신청, 2:심사 신청 취소(문서 삭제 ), 3:심사 완료)',
  `REG_TRX_TP` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'N' COMMENT '등록처리구분(0::임시 저장중(신청 미완료), 1:등록 신청, 2:등록 신청 취소(문서 삭제), 3:등록 완료, N:N(등록 미신청))',
  `CODE_CNF_YN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'N' COMMENT '코드확인여부',
  `FLTN_REG_DOC_CRE_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '발행등록 문서생성일',
  `FLTN_REG_DOC_NO` int NOT NULL DEFAULT '0' COMMENT '발행등록 문서번호',
  `FLTCO_CODE` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '발행사 코드',
  `OFR_MTHD_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '모집방법구분',
  `FST_FLTN_QTY` int NOT NULL DEFAULT '0' COMMENT '최초발행수량',
  `FST_FLTN_AMT` decimal(18,6) NOT NULL DEFAULT '0.000000' COMMENT '최초발행금액',
  `TOT_FLTN_QTY` int NOT NULL DEFAULT '0' COMMENT '총발행수량',
  `TOT_FLTN_AMT` decimal(18,6) NOT NULL DEFAULT '0.000000' COMMENT '총발행금액',
  `FLTN_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '발행일',
  `DUE_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '만기일',
  `RFUND_AMT_GIV_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '상환금 지급일',
  `TRST_PRPTY_KIND_CODE` char(2) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '신탁재산종류 코드',
  `TRST_AMT` decimal(18,6) NOT NULL DEFAULT '0.000000' COMMENT '신탁원본액',
  `TRST_SETUP_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '신탁설정일',
  `TRST_XPIR_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '신탁만료일',
  `INSCR_YN` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '기명식여부',
  `LIST_MGMT_ITT_CODE` char(2) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '명부관리기관 코드',
  `LCVR_RESTRC_SRT_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '전매제한시작일',
  `LCVR_RESTRC_END_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '전매제힌정료일',
  `PRFT_DSTB_AMT_GIV_YN` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '이익분배금 지급여부',
  `GIV_BNK_CODE` char(3) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '지급은행 코드',
  `GIV_BNK_CYCL_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '지급주기구분',
  `HOLI_GIV_MTHD_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '휴무일 지급방법 구분',
  `AVAL_ISTM_CNT` int NOT NULL DEFAULT '0' COMMENT '유효 서류 건수',
  `TAXCHR_CODE` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '과세 코드',
  `FLTCO_CO_NM` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '발행사 회사명',
  `FLTCO_ENG_NM` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '발행사 영문명',
  `FLTCO_DLG_PSN` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '발행사 대표자',
  `FLTCO_HDOFC_REGENT_NO` char(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '발행사 본점사업자등록번호',
  `FLTCO_HOMEPG` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '발행사 홈페이지',
  `FLTCO_ADDR` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '발행사 주소',
  `FDAST_PTN_CODE` char(2) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '기초자산유형코드',
  `EXAMTN_PRSL_PSN_ID` char(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '심사 신청자 ID',
  `EXAMTN_PRSL_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '심사 신청일',
  `EXAMTN_APRVR_ID` char(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '심사 승인자 ID',
  `EXAMTN_AGRM_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '심사 승인일',
  PRIMARY KEY (`BF_EXAMTN_DOC_NO`),
  KEY `IDX_STD_TBM_FLTN_EXAMTN_INFO` (`ISU_NO`,`BF_EXAMTN_DOC_CRE_DT`,`BF_EXAMTN_DOC_NO`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='토큰증권의 발행 심사에 관한 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STD_TBM_FLTN_EXAMTN_INFO`
--

LOCK TABLES `STD_TBM_FLTN_EXAMTN_INFO` WRITE;
/*!40000 ALTER TABLE `STD_TBM_FLTN_EXAMTN_INFO` DISABLE KEYS */;
INSERT INTO `STD_TBM_FLTN_EXAMTN_INFO` VALUES ('123456','2023-12-06',14,'1','2','N','N','0000-01-01',0,'03949','1',1000,1.000000,1000,1.000000,'2023-12-05','2023-12-20','2023-12-21','',0.000000,'0000-01-01','0000-01-01','','','0000-01-01','0000-01-01','Y','010','1','1',0,'1','키움증권','KIWOOM','대표자','012345678901','https://koscom.com','서울특별시 영등포구 여의도동 123','01','','0000-01-01','','0000-01-01');
/*!40000 ALTER TABLE `STD_TBM_FLTN_EXAMTN_INFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STD_TBM_FLTN_REG_INFO`
--

DROP TABLE IF EXISTS `STD_TBM_FLTN_REG_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STD_TBM_FLTN_REG_INFO` (
  `ISU_NO` char(12) COLLATE utf8mb4_bin NOT NULL COMMENT '종목번호',
  `FLTN_REG_DOC_CRE_DT` date NOT NULL COMMENT '발행등록 문서생성일',
  `FLTN_REG_DOC_NO` int NOT NULL COMMENT '발행등록 문서번호',
  `ISU_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '종목구분',
  `PRSL_TRX_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '신청처리구분',
  `REG_TRX_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '등록처리구분',
  `BF_EXAMTN_DOC_CRE_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '사전심사 문서생성일',
  `BF_EXAMTN_DOC_NO` int NOT NULL DEFAULT '0' COMMENT '사전심사 문서번호',
  `FLTCO_CODE` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '발행사 코드',
  `FLTN_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '발행구분',
  `FLTN_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '발행일',
  `FLTN_QTY` int NOT NULL DEFAULT '0' COMMENT '발행수량',
  `FLTN_AMT` decimal(18,6) NOT NULL DEFAULT '0.000000' COMMENT '발행금액',
  `PAY_AMT` decimal(18,6) NOT NULL DEFAULT '0.000000' COMMENT '납입금액',
  `FLTN_REG_CMSN_AMT` decimal(18,6) NOT NULL DEFAULT '0.000000' COMMENT '발행등록 수수료',
  `CMSN_AMT_DFRY_ACNT` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '수수료 납부계좌',
  `AVAL_ISTM_CNT` int NOT NULL DEFAULT '0' COMMENT '유효 서류 건수',
  `EXAMTN_PRSL_PSN_ID` char(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '심사 신청자 ID',
  `EXAMTN_PRSL_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '심사 신청일',
  `EXAMTN_APRVR_ID` char(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '심사 승인자 ID',
  `EXAMTN_AGRM_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '심사 승인일',
  `REG_PRSL_PSN_ID` char(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '등록 신청자 ID',
  `REG_PRSL_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '등록 신청일',
  `REG_APRVR_ID` char(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '등록 승인자 ID',
  `REG_AGRM_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '등록 승인일',
  PRIMARY KEY (`ISU_NO`,`FLTN_REG_DOC_CRE_DT`,`FLTN_REG_DOC_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='토큰증권 발행 등록 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STD_TBM_FLTN_REG_INFO`
--

LOCK TABLES `STD_TBM_FLTN_REG_INFO` WRITE;
/*!40000 ALTER TABLE `STD_TBM_FLTN_REG_INFO` DISABLE KEYS */;
/*!40000 ALTER TABLE `STD_TBM_FLTN_REG_INFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STD_TBM_ISU_INFO`
--

DROP TABLE IF EXISTS `STD_TBM_ISU_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STD_TBM_ISU_INFO` (
  `FLTCO_CODE` char(5) COLLATE utf8mb4_bin NOT NULL COMMENT '발행사 코드',
  `ISU_NO` char(12) COLLATE utf8mb4_bin NOT NULL COMMENT '종목번호',
  `ISU_TP` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '종목구분',
  `ISU_REG_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '종목등록구분',
  `HANGL_ISU_NM` varchar(40) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '한글종목명',
  `ENG_ISU_NM` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '영문종목명',
  `SHTN_ISU_CODE` char(6) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '단축종목코드',
  `FLTN_CNTRY_CODE` char(3) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '발행국가코드',
  `REG_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '등록일',
  `KRX_FLTN_ITT_CODE` char(5) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT 'KRX발행기관코드',
  `FLTN_CRCY_CODE` char(3) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '발행통화코드',
  `OFR_MTHD_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '모집방법구분',
  `FST_FLTN_QTY` int NOT NULL DEFAULT '0' COMMENT '최초발행수량',
  `FST_FLTN_AMT` decimal(18,6) NOT NULL DEFAULT '0.000000' COMMENT '최초발행금액',
  `TOT_FLTN_QTY` int NOT NULL DEFAULT '0' COMMENT '총발행수량',
  `TOT_FLTN_AMT` decimal(18,6) NOT NULL DEFAULT '0.000000' COMMENT '총발행금액',
  `FLTN_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '발행일',
  `DUE_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '만기일',
  `RFUND_AMT_GIV_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '상환금 지급일',
  `TRST_PRPTY_KIND_CODE` char(2) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '신탁재산종류 코드',
  `TRST_AMT` decimal(18,6) NOT NULL DEFAULT '0.000000' COMMENT '신탁원본액',
  `TRST_SETUP_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '신탁설정일',
  `TRST_XPIR_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '신탁만료일',
  `INSCR_YN` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '기명식여부',
  `LIST_MGMT_ITT_CODE` char(2) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '명부관리기관 코드',
  `LCVR_RESTRC_SRT_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '전매제한시작일',
  `LCVR_RESTRC_END_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '전매제힌정료일',
  `PRFT_DSTB_AMT_GIV_YN` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '이익분배금 지급여부',
  `GIV_BNK_CODE` char(3) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '지급은행 코드',
  `GIV_BNK_CYCL_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '지급주기구분',
  `HOLI_GIV_MTHD_TP` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '휴무일 지급방법 구분',
  `FDAST_PTN_CODE` char(2) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '기초자산유형코드',
  `CHG_USER_ID` char(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '변경사용자ID',
  `CHG_DTTM` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '변경일시',
  PRIMARY KEY (`FLTCO_CODE`,`ISU_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='토큰증권 종목정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STD_TBM_ISU_INFO`
--

LOCK TABLES `STD_TBM_ISU_INFO` WRITE;
/*!40000 ALTER TABLE `STD_TBM_ISU_INFO` DISABLE KEYS */;
/*!40000 ALTER TABLE `STD_TBM_ISU_INFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STO_TBL_APPY`
--

DROP TABLE IF EXISTS `STO_TBL_APPY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STO_TBL_APPY` (
  `APPY_BRN_NO` char(3) NOT NULL COMMENT '청약처리지점번호(청약매체가 HTS면 계좌관리지점번호)',
  `APPY_SRT_DT` date NOT NULL COMMENT '청약시작일',
  `APPY_ISU_NO` char(12) NOT NULL COMMENT '청약종목번호(공모 유가증권의 표준종목번호)',
  `APPY_ACNT_NO` varchar(20) NOT NULL COMMENT '청약계좌번호',
  `APPY_NO` decimal(9,0) NOT NULL COMMENT '청약번호(청약종목별 청약계좌번호별 일련번호)',
  `FIRM_NO` char(3) NOT NULL COMMENT '이용사번호',
  `APPY_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '청약입력일(청약일최초 청약입력일)',
  `APPY_ACMGT_BRN_NO` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '청약계좌관리지점번호',
  `APPY_ACNT_PDPTN_CODE` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '청약계좌상품유형코드',
  `APPY_GRP_CODE` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '청약그룹코드(일반투자자,기관청약자,우리사주조합을 구분)',
  `RMNNO` char(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '실명확인번호',
  `CLNT_NO` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '고객번호',
  `APPY_QTY` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '청약수량',
  `APPY_MGN` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '청약증거금액',
  `DUP_APPY_YN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '중복청약여부',
  `ASGN_QTY` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '배정수량',
  `PRZLOT_YN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '당첨여부',
  `REBAT_PREARG_AMT` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '환불예정금액',
  `SECIN_PREARG_QTY` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '입고예정수량',
  `COMMDA_CODE` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '통신매체코드',
  `GRDTN_SVC_GRD_PTN_CODE` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '차등서비스등급유형코드',
  `APPY_CMSN_AMT` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '청약수수료',
  `APPY_CMSN_AMT_MNYOUT_YN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '청약수수료출금여부',
  `CANC_YN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '취소여부',
  `REBAT_AMT_MNYIN_YN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '환불금입금여부',
  `SECIN_YN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '입고여부',
  `CHG_USER_ID` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '변경사용자ID',
  `CHG_TERM_NO` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '변경단말번호',
  `CHG_DTTM` datetime NOT NULL DEFAULT '0000-01-01 00:00:00' COMMENT '변경일시',
  PRIMARY KEY (`APPY_BRN_NO`,`APPY_SRT_DT`,`APPY_ISU_NO`,`APPY_ACNT_NO`,`APPY_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='등급별 매체별 청약수수료금액 관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STO_TBL_APPY`
--

LOCK TABLES `STO_TBL_APPY` WRITE;
/*!40000 ALTER TABLE `STO_TBL_APPY` DISABLE KEYS */;
INSERT INTO `STO_TBL_APPY` VALUES ('201','2023-11-16','KR0000000003','KR133-9999999',1,'200','2023-11-16','','2','1','99999999999','999',10,1000,'0',10,'',0,10,'','0',5000,'0','0','','','','','2023-11-16 13:19:35'),('201','2023-11-16','KR0000000003','KR134-77777777',3,'200','2023-11-16','','2','1','77777777777','777',5,1000,'0',10,'',0,0,'','0',5000,'0','0','','','','','2023-11-16 13:32:09'),('201','2023-11-16','KR0000000003','KR134-88888888',2,'200','2023-11-16','','2','1','88888888881','881',10,1000,'0',10,'',0,10,'01','0',5000,'0','0','','','','','2023-11-16 13:32:13'),('201','2023-11-16','KR0000000003','KR134-88888889',4,'200','2023-11-16','','2','1','88888888882','882',10,1000,'0',10,'',0,10,'','0',5000,'0','0','','','','','2023-11-16 13:32:13'),('202','2023-11-16','KR0000000003','KR134-77777772',7,'200','2023-11-16','','3','1','88888888885','885',5,1000,'0',20,'',0,5,'','0',10000,'0','0','','','','','2023-11-16 13:32:13'),('202','2023-11-16','KR0000000003','KR134-88888880',5,'200','2023-11-16','','3','1','88888888883','883',5,1000,'0',20,'',0,0,'01','0',10000,'0','0','','','','','2023-11-16 13:32:13'),('202','2023-11-16','KR0000000003','KR134-88888881',6,'200','2023-11-16','','3','1','88888888884','884',10,1000,'0',20,'',0,10,'','0',10000,'0','0','','','','','2023-11-16 13:32:13'),('202','2023-11-16','KR0000000003','KR134-88888883',8,'200','2023-11-16','','3','1','88888888886','886',10,1000,'0',20,'',0,10,'','0',10000,'0','0','','','','','2023-11-16 13:32:13'),('203','2023-11-16','KR0000000003','KR134-88888884',10,'200','2023-11-16','','2','1','88888888888','888',20,1000,'0',10,'',0,20,'','1',5000,'0','0','','','','','2023-11-16 13:32:13'),('203','2023-11-16','KR0000000003','KR134-88888885',9,'200','2023-11-16','','2','1','88888888887','887',100,1000,'0',10,'',0,10,'','1',5000,'0','0','','','','','2023-11-16 13:32:13'),('203','2023-11-16','KR0000000003','KR134-88888886',11,'200','2023-11-16','','2','1','88888888889','889',5,1000,'0',10,'',0,0,'','1',5000,'0','0','','','','','2023-11-16 13:32:13'),('212','2023-11-16','IBK000000012','KR134-88888844',16,'210','2023-11-16','','1','1','88888888844','844',10,1000,'0',20,'',0,0,'','1',10000,'0','0','','','','','2023-11-16 13:32:13'),('212','2023-11-16','IBK000000012','KR134-88888855',17,'210','2023-11-16','','3','1','88888888855','855',20,1000,'0',20,'',0,0,'','1',10000,'0','0','','','','','2023-11-16 13:32:13'),('212','2023-11-16','IBK000000012','KR134-88888866',18,'210','2023-11-16','','3','1','88888888866','866',5,1000,'0',20,'',0,0,'','1',10000,'0','0','','','','','2023-11-16 13:32:13'),('213','2023-11-16','IBK000000012','KR134-88888811',13,'210','2023-11-16','','2','1','88888888811','811',20,1000,'0',10,'',0,0,'','1',5000,'0','0','','','','','2023-11-16 13:32:13'),('213','2023-11-16','IBK000000012','KR134-88888822',14,'210','2023-11-16','','2','1','88888888822','822',10,1000,'0',10,'',0,0,'','1',5000,'0','0','','','','','2023-11-16 13:32:13'),('213','2023-11-16','IBK000000012','KR134-88888833',15,'210','2023-11-16','','3','1','88888888833','833',20,1000,'0',10,'',0,0,'','1',5000,'0','0','','','','','2023-11-16 13:32:13'),('213','2023-11-16','IBK000000012','KR134-88888887',12,'210','2023-11-16','','2','1','88888888800','800',10,1000,'0',10,'',0,0,'','',5000,'0','','','','','','2023-11-16 13:32:13');
/*!40000 ALTER TABLE `STO_TBL_APPY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STO_TBL_APPY_DLVR`
--

DROP TABLE IF EXISTS `STO_TBL_APPY_DLVR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STO_TBL_APPY_DLVR` (
  `APPY_SRT_DT` date NOT NULL COMMENT '청약시작일',
  `APPY_ISU_NO` char(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '종목번호',
  `ACNT_NO` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '계좌번호',
  `DLVR_CODE` char(2) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '교부방법',
  `DLVR_DT` datetime NOT NULL COMMENT '교부일',
  `DOWN_TIME` datetime NOT NULL DEFAULT '0000-01-01 00:00:00' COMMENT '청약서DOWN시각',
  `FIRM_NO` char(3) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '이용사번호',
  `TRX_BRN_NO` char(3) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '처리지점번호',
  `TRX_TIME` datetime NOT NULL DEFAULT '0000-01-01 00:00:00' COMMENT '처리시각',
  `TRX_TERM_NO` char(3) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '처리단말번호',
  `TRX_USER_ID` char(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '처리사용자ID',
  `TRX_IP` char(12) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '처리IP',
  `APPY_DLVR_URL` char(200) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '투자설명서URL',
  PRIMARY KEY (`APPY_SRT_DT`,`APPY_ISU_NO`,`ACNT_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='토큰증권 청약투자설명서 교부내역';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STO_TBL_APPY_DLVR`
--

LOCK TABLES `STO_TBL_APPY_DLVR` WRITE;
/*!40000 ALTER TABLE `STO_TBL_APPY_DLVR` DISABLE KEYS */;
INSERT INTO `STO_TBL_APPY_DLVR` VALUES ('2023-11-16','KR0000000003','KR134-88888888','01','2023-11-21 16:15:00','0000-01-01 00:00:00','111','','2023-11-21 16:09:17','aaa','sss','','');
/*!40000 ALTER TABLE `STO_TBL_APPY_DLVR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STO_TBL_APPY_FIN`
--

DROP TABLE IF EXISTS `STO_TBL_APPY_FIN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STO_TBL_APPY_FIN` (
  `BRN_NO` char(4) COLLATE utf8mb4_bin NOT NULL COMMENT '지점번호',
  `APPY_SRT_DT` date NOT NULL COMMENT '청약시작일',
  `APPY_ISU_NO` char(12) COLLATE utf8mb4_bin NOT NULL COMMENT '청약종목번호',
  `APPY_PTN_CODE` char(2) COLLATE utf8mb4_bin NOT NULL COMMENT '청약유형코드',
  `FIN_DT` date NOT NULL COMMENT '마감일',
  `FIRM_NO` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '이용사번호',
  `FIN_YN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '마감여부',
  `CHG_USER_ID` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '변경사용자ID',
  `CHG_TERM_NO` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '변경단말번호',
  `CHG_DTTM` datetime NOT NULL DEFAULT '0000-01-01 00:00:00' COMMENT '변경일시',
  PRIMARY KEY (`BRN_NO`,`APPY_SRT_DT`,`APPY_ISU_NO`,`APPY_PTN_CODE`,`FIN_DT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='토큰증권 공모청약마감 관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STO_TBL_APPY_FIN`
--

LOCK TABLES `STO_TBL_APPY_FIN` WRITE;
/*!40000 ALTER TABLE `STO_TBL_APPY_FIN` DISABLE KEYS */;
INSERT INTO `STO_TBL_APPY_FIN` VALUES ('001','2023-11-14','A1234','1','2023-11-15','123','2','SSS','aaa','2023-11-15 15:47:04'),('002','2023-11-14','A1234','1','2023-11-15','123','1','sss','aaa','2023-11-15 15:24:05'),('004','2023-11-14','A1234','1','2023-11-15','123','1','sss','aaa','2023-11-15 15:24:05'),('HTS','2023-11-14','A1234','2','2023-11-15','123','1','sss','aaa','2023-11-15 00:00:00'),('MTS','2023-11-14','A1234','2','2023-11-15','123','1','sss','aaa','2023-11-15 00:00:00'),('WTS','2023-11-14','A1234','2','2023-11-15','123','1','sss','aaa','2023-11-15 00:00:00');
/*!40000 ALTER TABLE `STO_TBL_APPY_FIN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STO_TBL_APPY_UNIT`
--

DROP TABLE IF EXISTS `STO_TBL_APPY_UNIT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STO_TBL_APPY_UNIT` (
  `APPY_SRT_DT` date NOT NULL COMMENT '청약시작일',
  `APPY_ISU_NO` char(12) COLLATE utf8mb4_bin NOT NULL COMMENT '청약종목번호',
  `APPY_UNIT_SECT_SEQNO` int NOT NULL COMMENT '청약단위구간일련번호',
  `FIRM_NO` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '이용사번호',
  `LWST_APPY_UNIT_QTY` decimal(18,6) NOT NULL DEFAULT '0.000000' COMMENT '최저청약단위수량',
  `BEST_APPY_UNIT_QTY` decimal(18,6) NOT NULL DEFAULT '0.000000' COMMENT '최고청약단위수량',
  `INCRE_QTY` decimal(18,6) NOT NULL DEFAULT '0.000000' COMMENT '증가수량',
  `CHG_USER_ID` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '변경사용자ID',
  `CHG_TERM_NO` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '변경단말번호',
  `CHG_DTTM` datetime NOT NULL DEFAULT '0000-01-01 00:00:00' COMMENT '변경일시',
  PRIMARY KEY (`APPY_SRT_DT`,`APPY_ISU_NO`,`APPY_UNIT_SECT_SEQNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='토큰증권 청약단위 관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STO_TBL_APPY_UNIT`
--

LOCK TABLES `STO_TBL_APPY_UNIT` WRITE;
/*!40000 ALTER TABLE `STO_TBL_APPY_UNIT` DISABLE KEYS */;
INSERT INTO `STO_TBL_APPY_UNIT` VALUES ('2023-11-16','A1234',1,'123',10.000000,90.000000,10.000000,'song2hc','aaa','2023-11-14 10:07:00'),('2023-11-16','KR0000000003',12,'500',10.000000,90.000000,10.000000,'yoo','aaa','2023-11-14 10:07:00'),('2023-11-16','KR0000000003',13,'500',100.000000,450.000000,50.000000,'yoo','aaa','2023-11-14 10:07:00'),('2023-11-16','KR0000000003',14,'500',500.000000,900.000000,100.000000,'yoo','aaa','2023-11-14 10:07:00'),('2023-11-16','KR0000000003',15,'500',1000.000000,4500.000000,500.000000,'yoo','aaa','2023-11-14 10:07:00');
/*!40000 ALTER TABLE `STO_TBL_APPY_UNIT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STO_TBL_ASGN_BASE`
--

DROP TABLE IF EXISTS `STO_TBL_ASGN_BASE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STO_TBL_ASGN_BASE` (
  `APPY_SRT_DT` date NOT NULL COMMENT '청약시작일',
  `APPY_ISU_NO` char(12) NOT NULL COMMENT '청약종목번호',
  `APPY_UNIT_QTY` decimal(15,0) NOT NULL COMMENT '청약단위수량',
  `FIRM_NO` char(3) NOT NULL DEFAULT '' COMMENT '이용사번호',
  `ASGN_QTY` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '배정수량',
  `APPY_CNT` decimal(9,0) NOT NULL DEFAULT '0' COMMENT '청약건수',
  `CHG_DTTM` datetime NOT NULL DEFAULT '0001-01-01 00:00:00' COMMENT 'CHG_DTTM',
  `CHG_TERM_NO` char(3) NOT NULL DEFAULT '' COMMENT '변경단말번호',
  `CHG_USER_ID` char(16) NOT NULL DEFAULT '' COMMENT '변경사용자ID',
  `EQLTY_ASGN_QTY` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '균등배정수량',
  `PRDSTB_ASGN_QTY` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '비례배정수량',
  PRIMARY KEY (`APPY_SRT_DT`,`APPY_ISU_NO`,`APPY_UNIT_QTY`),
  KEY `STO_TBL_ASGN_BSSE_APPY_SRT_DT_IDX` (`APPY_SRT_DT`,`APPY_ISU_NO`,`APPY_UNIT_QTY`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='STO 청약내역에 대한 배정정보를 관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STO_TBL_ASGN_BASE`
--

LOCK TABLES `STO_TBL_ASGN_BASE` WRITE;
/*!40000 ALTER TABLE `STO_TBL_ASGN_BASE` DISABLE KEYS */;
INSERT INTO `STO_TBL_ASGN_BASE` VALUES ('2023-11-16','123456789',1,'200',1,0,'0101-01-01 00:00:00','sys','kos',50,50),('2023-11-16','KR0000000003',10,'200',2,5,'0001-01-01 00:00:00','','',1,1),('2023-11-16','KR0000000003',20,'200',2,100,'0001-01-01 00:00:00','','',1,1),('2023-11-16','KR0000000003',30,'200',3,115,'0001-01-01 00:00:00','','',1,2),('2023-11-16','KR0000000003',40,'200',4,5,'0001-01-01 00:00:00','','',1,3),('2023-11-16','KR0000000003',50,'200',5,20,'0001-01-01 00:00:00','','',2,4),('2023-11-16','KR0000000003',60,'200',6,60,'0001-01-01 00:00:00','','',2,5),('2023-11-16','KR0000000003',100,'200',3,1,'0001-01-01 00:00:00','','',1,2);
/*!40000 ALTER TABLE `STO_TBL_ASGN_BASE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STO_TBL_BENOWN_SDINF`
--

DROP TABLE IF EXISTS `STO_TBL_BENOWN_SDINF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STO_TBL_BENOWN_SDINF` (
  `RGPTN_CODE` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '권리유형코드 : 01. 임시주총24. 펀드결산25. 펀드청산',
  `BASE_DT` date NOT NULL COMMENT '기준일',
  `ISU_NO` char(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '종목번호',
  `ACNT_NO` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '계좌번호',
  `FIRM_NO` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '이용사번호',
  `MGMT_BRN_NO` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '관리지점번호',
  `PDPTN_CODE` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '상품유형코드:01:STO상품',
  `ACNT_NM` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '계좌명',
  `RMNNO` char(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '실명확인번호',
  `ADDR_TP_CODE` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '주소유형코드 :1.자택2.직장3.기타통보지',
  `POST_NO` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '우편번호',
  `ADDR` char(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '주소',
  `ACNT_OPN_DT` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '계좌개설일',
  `PSNL_YN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '개인여부:0.개인1.법인',
  `TAXCHR_YN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '과세여부:0.과세1.비과세',
  `NRF_TP` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '내외국인구분:1.내국인2.외국인',
  `RSDN_CNTRY_NO` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '거주국가번호',
  `HLD_STK_EVAL_AMT` decimal(15,0) NOT NULL COMMENT '보유주식평가금액',
  `CHG_USER_ID` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '변경사용자ID',
  `CHG_TERM_NO` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '변경단말번호',
  `CHG_DTTM` datetime NOT NULL COMMENT '변경일시',
  PRIMARY KEY (`RGPTN_CODE`,`BASE_DT`,`ISU_NO`,`ACNT_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='토큰증권 실질주주 계좌내역';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STO_TBL_BENOWN_SDINF`
--

LOCK TABLES `STO_TBL_BENOWN_SDINF` WRITE;
/*!40000 ALTER TABLE `STO_TBL_BENOWN_SDINF` DISABLE KEYS */;
INSERT INTO `STO_TBL_BENOWN_SDINF` VALUES ('00','2023-11-16','KR0000000003','KR134-77777772','\'\'','\'\'','\'\'','\'\'','\'\'','\'\'','123456','서울시영등포구여의도동 코스콤 123','\'\'','','','','',0,'kos','sys','2023-12-06 00:00:00');
/*!40000 ALTER TABLE `STO_TBL_BENOWN_SDINF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STO_TBM_ACNT`
--

DROP TABLE IF EXISTS `STO_TBM_ACNT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STO_TBM_ACNT` (
  `ACNT_NO` varchar(20) NOT NULL COMMENT '계좌번호',
  `PDPTN_CODE` char(2) NOT NULL COMMENT '상품유형코드(01:STO)',
  `FIRM_NO` char(3) NOT NULL DEFAULT '' COMMENT '이용사번호',
  `MGMT_BRN_NO` char(3) NOT NULL DEFAULT '' COMMENT '관리지점번호',
  `OPN_BRN_NO` char(3) NOT NULL DEFAULT '' COMMENT '개설지점번호',
  `PRDT_DTL_CODE` char(2) NOT NULL DEFAULT '' COMMENT '상품상세코드(01:STO)',
  `ACNT_STAT_CODE` char(2) NOT NULL DEFAULT '' COMMENT '계좌상태코드((00:활동,01:통합,02:정기폐쇄(BATCH),03:고객폐쇄(ON-LINE),04:이관신청,05:이관,06:이관취소신청,07:이수취소,09:통폐합예정))',
  `CLNT_NO` varchar(20) NOT NULL DEFAULT '' COMMENT '고객번호',
  `MGEMP_NO` char(9) NOT NULL DEFAULT '' COMMENT '관리사원번호',
  `CNVS_EMP_NO` char(9) NOT NULL DEFAULT '' COMMENT '권유사원번호',
  `ACNT_NM` varchar(40) NOT NULL DEFAULT '' COMMENT '계좌명',
  `ACNT_HANGL_ALIAS` varchar(40) NOT NULL DEFAULT '' COMMENT '계좌한글부기명',
  `ACNT_ENG_ALIAS` varchar(40) NOT NULL DEFAULT '' COMMENT '계좌영문부기명',
  `PWD` varchar(32) NOT NULL DEFAULT '' COMMENT '비밀번호',
  `PWD_CONT_ERR_CNT` decimal(9,0) NOT NULL DEFAULT '0' COMMENT '비밀번호연속오류횟수',
  `RMNNO` char(13) NOT NULL DEFAULT '' COMMENT '실명확인번호',
  `RMN_CNF_MTHD_CODE` char(2) NOT NULL DEFAULT '' COMMENT '실명확인방법코드((01:주민등록번호,02:사업자등록번호,03:고유번호,04:납세번호,05:외국인등록번호,06:투자등록증,07:재외국민등록번호,08:여권,09:의료보호증관리번호,10:단체등록번호,11:당해국가등록번호,12:거소신고번호,13:관련문서번호)))',
  `HTS_REG_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT 'HTS등록일',
  `ACNT_OPN_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '계좌개설일',
  `ACNT_ABND_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '계좌해지일',
  `ACNT_CNC_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '계좌통폐합일',
  `ACNT_CNC_ABND_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '계좌통폐합해지일',
  `LAST_TRD_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '최종거래일',
  `DPS` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '예수금',
  `NTLT_CNTRY_NO` char(3) NOT NULL DEFAULT '' COMMENT '국적국가번호',
  `GRDTN_SVC_GRD_PTN_CODE` char(2) NOT NULL DEFAULT '' COMMENT '차등서비스 등급유형코드(1.일반,2.우대)',
  PRIMARY KEY (`ACNT_NO`,`PDPTN_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='계좌 정보를 관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STO_TBM_ACNT`
--

LOCK TABLES `STO_TBM_ACNT` WRITE;
/*!40000 ALTER TABLE `STO_TBM_ACNT` DISABLE KEYS */;
INSERT INTO `STO_TBM_ACNT` VALUES ('KR134-77777772','01','200','210','200','01','00','0001','','','키움계좌','','','1111',0,'88888888881','01','0000-01-01','0000-01-01','0000-01-01','0000-01-01','0000-01-01','0000-01-01',0,'',''),('KR134-88888844','01','200','202','200','01','00','0001','','','키움계좌','','','1111',0,'88888888881','01','0000-01-01','0000-01-01','0000-01-01','0000-01-01','0000-01-01','0000-01-01',0,'',''),('KR134-88888886','01','200','200','200','01','00','0001','','','키움계좌','','','1111',0,'88888888881','01','0000-01-01','0000-01-01','0000-01-01','0000-01-01','0000-01-01','0000-01-01',0,'',''),('KR134-88888887','01','200','201','200','01','00','0001','','','키움계좌','','','1111',0,'88888888881','01','0000-01-01','0000-01-01','0000-01-01','0000-01-01','0000-01-01','0000-01-01',0,'',''),('KR134-88888888','01','200','200','200','01','00','0001','','','키움계좌','','','1111',0,'88888888881','01','0000-01-01','0000-01-01','0000-01-01','0000-01-01','0000-01-01','0000-01-01',0,'',''),('KR134-88888889','01','200','202','200','01','00','0001','','','키움계좌','','','1111',0,'88888888881','01','0000-01-01','0000-01-01','0000-01-01','0000-01-01','0000-01-01','0000-01-01',0,'','');
/*!40000 ALTER TABLE `STO_TBM_ACNT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STO_TBM_APPY_CMSN_AMT`
--

DROP TABLE IF EXISTS `STO_TBM_APPY_CMSN_AMT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STO_TBM_APPY_CMSN_AMT` (
  `GRDTN_SVC_GRD_PTN_CODE` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '차등서비스 등급유형코드(1.일반,2.우대)',
  `APPY_PTN_CODE` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '청약유형코드(통신매체,1지점청약,2HTS청약)',
  `FIRM_NO` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '이용사번호',
  `APPY_CMSN_AMT` int NOT NULL DEFAULT '0' COMMENT '청약수수료',
  `CHG_USER_ID` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '변경사용자ID',
  `CHG_TERM_NO` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '변경단말번호',
  `CHG_DTTM` datetime NOT NULL DEFAULT '0000-01-01 00:00:00' COMMENT '변경일시',
  PRIMARY KEY (`GRDTN_SVC_GRD_PTN_CODE`,`APPY_PTN_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='등급별 매체별 청약수수료금액 관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STO_TBM_APPY_CMSN_AMT`
--

LOCK TABLES `STO_TBM_APPY_CMSN_AMT` WRITE;
/*!40000 ALTER TABLE `STO_TBM_APPY_CMSN_AMT` DISABLE KEYS */;
INSERT INTO `STO_TBM_APPY_CMSN_AMT` VALUES ('1','1','200',22,'kos','sys','2023-11-29 17:52:32'),('1','2','200',30000,'kos','sys','2023-11-16 14:23:00'),('2','1','200',50000,'kos','sys','2023-11-16 14:23:00'),('2','2','200',30000,'kos','sys','2023-11-16 14:23:00');
/*!40000 ALTER TABLE `STO_TBM_APPY_CMSN_AMT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STO_TBM_BRN`
--

DROP TABLE IF EXISTS `STO_TBM_BRN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STO_TBM_BRN` (
  `FIRM_NO` char(3) COLLATE utf8mb4_bin NOT NULL COMMENT '이용사번호',
  `BRN_NO` char(3) COLLATE utf8mb4_bin NOT NULL COMMENT '지점번호',
  `BRN_NM` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '지점명',
  `HDNBR_TP` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '본지점구분(1:지점,2:본점,3:본지점총괄(회계))',
  `OP_TP` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '운용구분(0:영업중,1:신설예정,2:폐쇄예정,3:폐쇄)',
  `OPNCL_PNT_DT` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '개폐점일',
  `HANGL_BRN_NM` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '한글지점명',
  `ENG_BRN_NM` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '영문지점명',
  `POST_NO` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '우편번호',
  `BRN_ADDR` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '지점주소',
  `TEL_RGNO` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '전화지역번호',
  `TEL_EXNO` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '전화국번호',
  `TEL_SEQNO` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '전화일련번호',
  `REGENT_NO` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '사업자등록번호',
  `BRN_PWD` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '지점비밀번호',
  `INOUT_ABLE_YN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '출납가능여부(0:불가,1:가능)',
  `CYB_BRN_TP` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '사이버지점구분(0:일반지점,1:CYBER지점,2:CALL CENTER)',
  `OTBR_QRY_ABLE_YN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '타점조회가능여부(0:불,1:가능)',
  `AFIR_FIN_YN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '업무마감여부(0:업무중,1:업무마감)',
  `MNY_INOUT_FIN_YN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '현금출납마감여부(0:업무중,1:마감)',
  `SEC_INOUT_FIN_YN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '증권출납마감여부(0:업무중,1:마감)',
  `CHG_USER_ID` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '변경사용자ID',
  `CHG_TERM_NO` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '변경단말번호',
  `CHG_DTTM` datetime NOT NULL DEFAULT '0000-01-01 00:00:01' COMMENT '변경일시',
  PRIMARY KEY (`FIRM_NO`,`BRN_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지점내역';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STO_TBM_BRN`
--

LOCK TABLES `STO_TBM_BRN` WRITE;
/*!40000 ALTER TABLE `STO_TBM_BRN` DISABLE KEYS */;
INSERT INTO `STO_TBM_BRN` VALUES ('000','000','회사전체','1','1','','회사전체','회사전체','','','','','','1111111111','qwer1234!@#$','1','0','0','0','0','0','kos','sys','0000-01-01 00:00:01'),('100','100','코스콤','1','1','','코스콤','코스콤','','','','','','1000012345','qwer1234!@#$','1','0','0','0','0','0','kos','sys','0000-01-01 00:00:01'),('100','101','영업부','1','1','','영업부','영업부','','','','','','1000012345','qwer1234!@#$','1','0','0','0','0','0','kos','sys','0000-01-01 00:00:01'),('100','102','여의도본점','1','1','','여의도본점','여의도본점','','','','','','1000012345','qwer1234!@#$','1','0','0','0','0','0','kos','sys','0000-01-01 00:00:01'),('100','103','R&D연구소','1','1','','R&D연구소','R&D연구소','','','','','','1000012345','qwer1234!@#$','1','0','0','0','0','0','kos','sys','0000-01-01 00:00:01'),('100','104','인사부','1','1','','인사부','인사부','','','','','','1000012345','qwer1234!@#$','1','0','0','0','0','0','kos','sys','0000-01-01 00:00:01'),('200','200','키움증권본점','1','1','','키움증권본점','키움증권본점','','','','','','2000012345','qwer1234!@#$','1','0','0','0','0','0','kos','sys','0000-01-01 00:00:01'),('200','201','종로지점','1','1','','종로지점','종로지점','','','','','','2000012345','qwer1234!@#$','1','0','0','0','0','0','kos','sys','0000-01-01 00:00:01'),('200','202','여의도지점','1','1','','여의도지점','여의도지점','','','','','','2000012345','qwer1234!@#$','1','0','0','0','0','0','kos','sys','0000-01-01 00:00:01'),('210','210','IBK증권','1','1','','IBK증권','IBK증권','','','','','','2100012345','qwer1234!@#$','1','0','0','0','0','0','kos','sys','0000-01-01 00:00:01'),('210','211','을지로지점','1','1','','을지로지점','을지로지점','','','','','','2100012345','qwer1234!@#$','1','0','0','0','0','0','kos','sys','0000-01-01 00:00:01'),('210','212','강남지점','1','1','','강남지점','강남지점','','','','','','2100012345','qwer1234!@#$','1','0','0','0','0','0','kos','sys','0000-01-01 00:00:01'),('999','990','청약추가주식회사','1','1','','청약추가주식회사','청약추가주식회사','','','','','','999999999','qwer1234!@#$','1','0','0','0','0','0','kos','sys','0000-01-01 00:00:01'),('999','991','청약추가주식회사-강남지점','1','1','','청약추가주식회사-강남지점','청약추가주식회사-강남지점','','','','','','999999999','qwer1234!@#$','1','0','0','0','0','0','kos','sys','0000-01-01 00:00:01'),('999','992','청약추가주식회사-여의도지점','1','1','','청약추가주식회사-여의도지점','청약추가주식회사-여의도지점','','','','','','999999999','qwer1234!@#$','1','0','0','0','0','0','kos','sys','0000-01-01 00:00:01'),('999','993','청약추가주식회사-종로지점','1','1','','청약추가주식회사-종로지점','청약추가주식회사-종로지점','','','','','','999999999','qwer1234!@#$','1','0','0','0','0','0','kos','sys','0000-01-01 00:00:01');
/*!40000 ALTER TABLE `STO_TBM_BRN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STO_TBM_CALENDAR`
--

DROP TABLE IF EXISTS `STO_TBM_CALENDAR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STO_TBM_CALENDAR` (
  `HOLI_DT` date NOT NULL COMMENT '공휴일,명절,임시휴일,기념일',
  `DESCR` varchar(40) NOT NULL DEFAULT '' COMMENT '설명,주석',
  `CHG_USER_ID` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '변경사용자ID',
  `CHG_TERM_NO` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '변경단말번호',
  `CHG_DTTM` datetime NOT NULL DEFAULT '0000-01-01 00:00:00' COMMENT '변경일시',
  PRIMARY KEY (`HOLI_DT`),
  KEY `STO_TBM_CALENDAR_HOLI_DT_IDX` (`HOLI_DT`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='이용사 영업일 달력(임시개발용)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STO_TBM_CALENDAR`
--

LOCK TABLES `STO_TBM_CALENDAR` WRITE;
/*!40000 ALTER TABLE `STO_TBM_CALENDAR` DISABLE KEYS */;
INSERT INTO `STO_TBM_CALENDAR` VALUES ('2023-01-01','신정','kos','sys','2022-12-28 00:00:00'),('2023-01-21','설날','kos','sys','2022-12-28 00:00:00'),('2023-01-22','설날','kos','sys','2022-12-28 00:00:00'),('2023-01-23','설날','kos','sys','2022-12-28 00:00:00'),('2023-01-24','설날','kos','sys','2022-12-28 00:00:00'),('2023-03-01','삼일절','kos','sys','2022-12-28 00:00:00'),('2023-05-05','어린이날','kos','sys','2022-12-28 00:00:00'),('2023-05-27','부처님오신날','kos','sys','2022-12-28 00:00:00'),('2023-06-06','현충일','kos','sys','2022-12-28 00:00:00'),('2023-08-15','광복절','kos','sys','2022-12-28 00:00:00'),('2023-09-28','추석','kos','sys','2022-12-28 00:00:00'),('2023-09-29','추석','kos','sys','2022-12-28 00:00:00'),('2023-09-30','추석','kos','sys','2022-12-28 00:00:00'),('2023-10-03','개천절','kos','sys','2022-12-28 00:00:00'),('2023-10-09','한글날','kos','sys','2022-12-28 00:00:00'),('2023-12-25','크리스마스','kos','sys','2022-12-28 00:00:00');
/*!40000 ALTER TABLE `STO_TBM_CALENDAR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STO_TBM_CMN_CODE`
--

DROP TABLE IF EXISTS `STO_TBM_CMN_CODE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STO_TBM_CMN_CODE` (
  `CODE_SCOPE_VAL` char(4) COLLATE utf8mb4_bin NOT NULL COMMENT '코드범위값',
  `CMN_CSLDT_CODE` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '공통통합코드',
  `LNG_TP` char(1) COLLATE utf8mb4_bin NOT NULL COMMENT '언어구분 (K:한글, E:영문)',
  `CODE_NM` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '코드명',
  `CODE_VAL` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' COMMENT '코드값',
  `CHG_USER_ID` char(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '변경사용자ID',
  `CHG_DTTM` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '변경일시',
  PRIMARY KEY (`CODE_SCOPE_VAL`,`CMN_CSLDT_CODE`,`LNG_TP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='토큰증권 업무에 사용되는 공통코드 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STO_TBM_CMN_CODE`
--

LOCK TABLES `STO_TBM_CMN_CODE` WRITE;
/*!40000 ALTER TABLE `STO_TBM_CMN_CODE` DISABLE KEYS */;
INSERT INTO `STO_TBM_CMN_CODE` VALUES ('0001','001','K','은행코드','한국은행','test','2023-11-30 09:04:08'),('0001','002','K','은행코드','산업은행','test','2023-11-30 09:04:08'),('0001','003','K','은행코드','기업은행','test','2023-11-30 09:04:08'),('0001','004','K','은행코드','국민은행','test','2023-11-30 09:04:08'),('0001','005','K','은행코드','하나은행','test','2023-11-30 09:04:08'),('0001','007','K','은행코드','수협은행','test','2023-11-30 09:04:08'),('0001','008','K','은행코드','수출입은행','test','2023-11-30 09:04:08'),('0001','010','K','은행코드','NH농협은행','test','2023-11-30 09:04:08'),('0001','020','K','은행코드','우리은행','test','2023-11-30 09:04:08'),('0001','021','K','은행코드','신한은행','test','2023-11-30 09:04:08'),('0001','023','K','은행코드',':SC제일은행','test','2023-11-30 09:04:08'),('0001','031','K','은행코드','대구은행','test','2023-11-30 09:04:08'),('0001','032','K','은행코드','부산은행','test','2023-11-30 09:04:08'),('0001','034','K','은행코드','광주은행','test','2023-11-30 09:04:08'),('0001','035','K','은행코드','제주은행','test','2023-11-30 09:04:08'),('0001','037','K','은행코드','전북은행','test','2023-11-30 09:04:08'),('0001','039','K','은행코드','경남은행','test','2023-11-30 09:04:08'),('0002','CHN','K','국가코드','중국','test','2023-11-30 09:04:08'),('0002','HKG','K','국가코드','홍콩','test','2023-11-30 09:04:08'),('0002','JPN','K','국가코드','일본','test','2023-11-30 09:04:08'),('0002','KOR','K','국가코드','대한민국','test','2023-11-30 09:04:08'),('0002','VNM','K','국가코드','베트남','test','2023-11-30 09:04:08'),('0003','EUR','K','통화코드','유로','test','2023-11-30 09:04:08'),('0003','KRW','K','통화코드','원','test','2023-11-30 09:04:08'),('0003','USD','K','통화코드','미국달러','test','2023-11-30 09:04:08'),('0004','01','K','명부관리기관코드','예탁원','test','2023-11-30 09:04:08'),('0004','02','K','명부관리기관코드','키움증권','test','2023-11-30 09:04:08'),('0005','1','K','종목구분','신탁수익증권','test','2023-11-30 09:04:08'),('0005','2','K','종목구분','투자계약증권','test','2023-11-30 09:04:08'),('0006','0','K','신청처리구분','임시 저장중','test','2023-11-30 09:04:08'),('0006','1','K','신청처리구분','심사 신청','test','2023-11-30 09:04:08'),('0006','2','K','신청처리구분',' 심사 신청 취소','test','2023-11-30 09:04:08'),('0006','3','K','신청처리구분','심사 완료','test','2023-11-30 09:04:08'),('0007','0','K','등록처리구분','임시 저장중','test','2023-11-30 09:04:08'),('0007','1','K','등록처리구분','등록 신청','test','2023-11-30 09:04:08'),('0007','2','K','등록처리구분','등록 신청 취소','test','2023-11-30 09:04:08'),('0007','3','K','등록처리구분','등록 완료','test','2023-11-30 09:04:08'),('0007','N','K','등록처리구분','N','test','2023-11-30 09:04:08'),('0008','1','K','모집방법구분','공모1','test','2023-11-30 09:04:08'),('0008','2','K','모집방법구분','공모2','test','2023-11-30 09:04:08'),('0009','01','K','신탁재산종류코드','부동산','test','2023-11-30 09:04:08'),('0009','02','K','신탁재산종류코드','음원','test','2023-11-30 09:04:08'),('0009','03','K','신탁재산종류코드','미술품','test','2023-11-30 09:04:08'),('0009','04','K','신탁재산종류코드','지식재산권','test','2023-11-30 09:04:08'),('0010','1','K','지급주기구분','월','test','2023-11-30 09:04:08'),('0010','2','K','지급주기구분','분기','test','2023-11-30 09:04:08'),('0010','3','K','지급주기구분','반기','test','2023-11-30 09:04:08'),('0011','1','K','휴무일지급방법구분','직후영업일','test','2023-11-30 09:04:08'),('0011','2','K','휴무일지급방법구분','직전영업일','test','2023-11-30 09:04:08'),('0012','01','K','기초자산유형코드','부동산','test','2023-11-30 09:04:08'),('0012','02','K','기초자산유형코드','음원','test','2023-11-30 09:04:08'),('0012','03','K','기초자산유형코드','미술품','test','2023-11-30 09:04:08'),('0012','04','K','기초자산유형코드','지식재산권','test','2023-11-30 09:04:08'),('0013','1','K','발행말소사유코드','신규발행','test','2023-11-30 09:04:08'),('0013','2','K','발행말소사유코드','추가발행','test','2023-11-30 09:04:08'),('0013','3','K','발행말소사유코드','조기상환','test','2023-11-30 09:04:08'),('0013','4','K','발행말소사유코드','만기상환','test','2023-11-30 09:04:08'),('0014','1','K','청구상태구분','청구완료','test','2023-11-30 09:04:08'),('0014','2','K','청구상태구분','텅구취소','test','2023-11-30 09:04:08'),('0014','3','K','청구상태구분','확정완료','test','2023-11-30 09:04:08'),('0015','11','K','증감사유코드1','등록','test','2023-11-30 09:04:08'),('0015','12','K','증감사유코드1','계좌대체 (매입)','test','2023-11-30 09:04:08'),('0015','21','K','증감사유코드1','말소','test','2023-11-30 09:04:08'),('0015','22','K','증감사유코드1','계좌대체 (인출)','test','2023-11-30 09:04:08'),('0016','111','K','증감사유코드2','등록 (예탁)','test','2023-11-30 09:04:08'),('0016','121','K','증감사유코드2','일반대체 (매입)','test','2023-11-30 09:04:08'),('0016','122','K','증감사유코드2','결제 (매입)','test','2023-11-30 09:04:08'),('0016','211','K','증감사유코드2','말소 (권리행사변동)','test','2023-11-30 09:04:08'),('0016','221','K','증감사유코드2','일반대체 (인출)','test','2023-11-30 09:04:08'),('0016','222','K','증감사유코드2','결제 (인출)','test','2023-11-30 09:04:08'),('0017','0','K','등록증명승인구분','미승인','test','2023-11-30 09:04:08'),('0017','1','K','등록증명승인구분','발급 숭인','test','2023-11-30 09:04:08'),('0017','2','K','등록증명승인구분','해지 승인','test','2023-11-30 09:04:08'),('0017','3','K','등록증명승인구분','재발급 숭인','test','2023-11-30 09:04:08'),('0018','1','K','종목등록구분','등록적격','yoo','2023-12-05 09:34:00'),('0018','2','K','종목등록구분','등록지정','yoo','2023-12-05 09:34:00'),('0019','1','K','메뉴 그룹1 코드','발행등록','yoo','2023-12-05 09:34:00'),('0019','2','K','메뉴 그룹1 코드','공모관리','yoo','2023-12-05 09:34:00'),('0019','3','K','메뉴 그룹1 코드','권리관리','yoo','2023-12-05 09:34:00'),('0019','4','K','메뉴 그룹1 코드','대체관리','yoo','2023-12-05 09:34:00'),('0019','5','K','메뉴 그룹1 코드','종목관리','yoo','2023-12-05 09:34:00'),('0019','6','K','메뉴 그룹1 코드','운용관리','yoo','2023-12-05 09:34:00'),('0020','11','K','메뉴 그룹2 코드','발행 및 말고','yoo','2023-12-05 09:34:00'),('0020','12','K','메뉴 그룹2 코드','권리행사','yoo','2023-12-05 09:34:00'),('0020','13','K','메뉴 그룹2 코드','심사 및 승인','yoo','2023-12-05 09:34:00'),('0020','14','K','메뉴 그룹2 코드','증명서','yoo','2023-12-05 09:34:00'),('0020','21','K','메뉴 그룹2 코드','청약정보관리','yoo','2023-12-05 09:34:00'),('0020','22','K','메뉴 그룹2 코드','청약관리','yoo','2023-12-05 09:34:00'),('0020','23','K','메뉴 그룹2 코드','배정관리','yoo','2023-12-05 09:34:00'),('0020','31','K','메뉴 그룹2 코드','권리정보관리','yoo','2023-12-05 09:34:00'),('0020','32','K','메뉴 그룹2 코드','배정관리','yoo','2023-12-05 09:34:00'),('0020','33','K','메뉴 그룹2 코드','지급관리','yoo','2023-12-05 09:34:00'),('0020','41','K','메뉴 그룹2 코드','대체','yoo','2023-12-05 09:34:00'),('0020','42','K','메뉴 그룹2 코드','입출고','yoo','2023-12-05 09:34:00'),('0020','51','K','메뉴 그룹2 코드','발행정보','yoo','2023-12-05 09:34:00'),('0020','61','K','메뉴 그룹2 코드','회원사 관리','yoo','2023-12-05 09:34:00'),('0020','62','K','메뉴 그룹2 코드','사용자 관리','yoo','2023-12-05 09:34:00'),('0020','63','K','메뉴 그룹2 코드','메뉴 관리','yoo','2023-12-05 09:34:00'),('0020','64','K','메뉴 그룹2 코드','알림 관리','yoo','2023-12-05 09:34:00'),('0020','65','K','메뉴 그룹2 코드','공통 관리','yoo','2023-12-05 09:34:00'),('0021','01636','K','발행사 코드','삼성증권','yoo','2023-12-05 09:34:00'),('0021','03949','K','발행사 코드','키움증권','yoo','2023-12-05 09:34:00'),('0021','41926','K','발행사 코드','뮤직카우','yoo','2023-12-05 09:34:00'),('0022','01','K','서류코드','신탁계약서','yoo','2023-12-05 09:34:00'),('0022','02','K','서류코드','투자설명서','yoo','2023-12-05 09:34:00'),('0022','03','K','서류코드','법인인감증명서','yoo','2023-12-05 09:34:00'),('0022','04','K','서류코드','법인등기사항증명서','yoo','2023-12-05 09:34:00'),('0022','05','K','서류코드','납입완료증명서','yoo','2023-12-05 09:34:00'),('0022','06','K','서류코드','법무법인의견서','yoo','2023-12-05 09:34:00'),('0022','07','K','서류코드','회계법인감사보고서','yoo','2023-12-05 09:34:00'),('0022','08','K','서류코드','감정평가액보고서','yoo','2023-12-05 09:34:00'),('0023','1','K','과세코드','배당소득세','test','2023-12-05 11:04:10'),('0023','2','K','과세코드','기타소득세','test','2023-12-05 11:04:10');
/*!40000 ALTER TABLE `STO_TBM_CMN_CODE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STO_TBM_ISU`
--

DROP TABLE IF EXISTS `STO_TBM_ISU`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STO_TBM_ISU` (
  `ISU_NO` char(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '종목번호',
  `ISU_NM` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '종목명',
  `ISU_TP` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '종목구분(1.신탁수익증권,2.투자계약증권)',
  `CHG_DTTM` datetime NOT NULL DEFAULT '0000-01-01 00:00:00' COMMENT '변경일시',
  `CHG_TERM_NO` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '변경단말번호',
  `CHG_USER_ID` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '변경사용자ID',
  `FIRM_NO` char(3) NOT NULL DEFAULT '' COMMENT '이용사번호',
  `SE_CODE` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '거래소코드(001:STO)',
  `CNTRY_NO` char(3) NOT NULL DEFAULT '' COMMENT '국가번호',
  `CRCY_CODE` char(3) NOT NULL DEFAULT '' COMMENT '통화코드',
  `ISU_TRD_TP` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '종목거래구분(0.정상,1.매매불가,2.출납불가)',
  `FLTN_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '발행일',
  `DUE_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '만기일',
  PRIMARY KEY (`ISU_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='STO 종목에 대한 정보를 관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STO_TBM_ISU`
--

LOCK TABLES `STO_TBM_ISU` WRITE;
/*!40000 ALTER TABLE `STO_TBM_ISU` DISABLE KEYS */;
INSERT INTO `STO_TBM_ISU` VALUES ('IBK000000011','IBK발행11','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01'),('IBK000000012','IBK발행12','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01'),('IBK000000013','IBK발행13','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01'),('IBK000000014','IBK발행14','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01'),('IBK000000015','IBK발행15','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01'),('KR0000000001','키움발행1','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01'),('KR0000000002','키움발행2','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01'),('KR0000000003','키움발행3','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01'),('KR0000000004','키움발행4','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01'),('KR0000000005','키움발행5','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01'),('KR0000000006','키움발행6','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01'),('KR0000000007','키움발행7','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01'),('KR0000000008','키움발행8','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01'),('KR0000000009','키움발행9','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01'),('KR0000000010','키움발행10','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01'),('KR0000000011','키움발행11','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01'),('KR0000000012','키움발행12','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01'),('KR0000000013','키움발행13','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01'),('KR0000000014','키움발행14','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01'),('KR0000000015','키움발행15','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01'),('KR0000000016','키움발행16','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01'),('KR0000000017','키움발행17','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01'),('KR0000000018','키움발행18','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01'),('KR0000000019','키움발행19','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01'),('KR3456789012','청약추가주식회사발행1','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01'),('KR3456789015','청약추가주식회사발행2','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01'),('KR3456789016','청약추가주식회사발행3','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01'),('KR3456789021','청약추가주식회사발행4','','0000-01-01 00:00:00','','','','','','','','0000-01-01','0000-01-01');
/*!40000 ALTER TABLE `STO_TBM_ISU` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STO_TBM_PUBOF`
--

DROP TABLE IF EXISTS `STO_TBM_PUBOF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STO_TBM_PUBOF` (
  `APPY_SRT_DT` date NOT NULL COMMENT '청약시작일',
  `APPY_ISU_NO` char(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '청약종목번호',
  `FIRM_NO` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '이용사번호',
  `ISU_NM` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '종목명',
  `DPSN_LEDG_CODE` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '000' COMMENT '분산원장코드',
  `OFR_PTN_CODE` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '모집유형코드',
  `PARPRC` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '액면가',
  `FLTN_PRC` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '발행가',
  `PUBOF_BF_CPTL_AMT` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '공모전자본금액',
  `PUBOF_AF_CPTL_AMT` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '공모후자본금액',
  `FLTN_AMT` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '발행금액',
  `SALES_AMT` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '매출금액',
  `THPRF` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당기순이익',
  `ASGN_PUBAN_NSPR_NM` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '배정공고신문명',
  `LMGR_NM` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '주간사명',
  `MJOR_UNDTKG_NM` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '주요사업명',
  `NMRWT_AGNCY_NM` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '명의개서대행기관명',
  `APPY_RESTRC_ACNT_OPN_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '청약제한계좌개설일',
  `SECOMP_ASGN_QTY` decimal(18,6) NOT NULL DEFAULT '0.000000' COMMENT '증권사배정수량',
  `LMGR_YN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '주간사여부',
  `WKLY_DPART_NO` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '주간부서번호',
  `DUP_APPY_ABLE_YN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '중복청약가능여부',
  `APPY_LMT_QTY` decimal(18,6) NOT NULL DEFAULT '0.000000' COMMENT '청약한도수량',
  `APPY_MGNRT` decimal(5,4) NOT NULL DEFAULT '0.0000' COMMENT '청약증거금율',
  `PRVLG_APPY_LMT_QTY` decimal(18,6) NOT NULL DEFAULT '0.000000' COMMENT '우대청약한도수량',
  `APPY_END_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '청약종료일',
  `ASGN_PUBAN_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '배정공고일',
  `REBAT_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '환불일',
  `PAY_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '납입일',
  `DLVR_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '교부일',
  `LSTD_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '상장일',
  `ASGN_TSK_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '배정작업일',
  `SECIN_PREARG_TSK_DT` date NOT NULL DEFAULT '0000-01-01' COMMENT '입고예정작업일',
  `LTERY_TRX_CODE` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '추첨처리코드',
  `LTERY_ASGN_QTY` decimal(18,6) NOT NULL DEFAULT '0.000000' COMMENT '추첨배정수량',
  `LTERY_OBJ_APPY_UNIT_QTY` decimal(18,6) NOT NULL DEFAULT '0.000000' COMMENT '추첨대상청약단위수량',
  `LTERY_ADD_QTY1` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '추첨가산수1',
  `LTERY_ADD_QTY2` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '추첨가산수2',
  `LTERY_ADD_QTY3` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '추첨가산수3',
  `GRDTN_ASGN_APP_YN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '차등배정적용여부',
  `INVST_DESCR_APP_YN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '투자설명서 적용여부',
  `CMSN_AMT_LEVY_YN` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '수수료징수구분',
  `APPY_FIN_TIME` time NOT NULL DEFAULT '00:00:00' COMMENT '청약마감시간',
  `ISU_INCLN_GRD` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '투자성향등급',
  `DCLSR_CNF` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '공시확인',
  `CHG_USER_ID` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '변경사용자ID',
  `CHG_TERM_NO` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '변경단말번호',
  `CHG_DTTM` datetime NOT NULL DEFAULT '0000-01-01 00:00:00' COMMENT '변경일시',
  `SEC_CLSS_CODE` char(2) NOT NULL DEFAULT '' COMMENT '증권종류(1.신탁수익중권 2.투자계약증권)',
  `FLTN_QTY` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '공모하여 발행할 총 수량',
  `TOT_EQLTY_ASGN_QTY` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '총 균등배정수량',
  `TOT_PRDSTB_ASGN_QTY` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '총 비례배정수량',
  `APPY_EQLTY_ASGN_QTY` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '청약자 균등배정수량',
  `PRDSTB_ASGN_CMPET_RAT` decimal(9,4) NOT NULL DEFAULT '0.0000' COMMENT '비례배정경쟁률',
  `EQLTY_ASGN_TRX_STEP` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '균등배정처리단계구분 (1.배정전 2.배정안 3.1차 4.추첨 5.2차)',
  `PRDSTB_ASGN_TRX_STEP` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '비례배정처리단계구분 (1.배정전 2.배정안 3.1차 4.추첨 5.2차)',
  `ASGN_BASE_RNK` char(1) NOT NULL DEFAULT '' COMMENT '배정기준순위',
  PRIMARY KEY (`APPY_SRT_DT`,`APPY_ISU_NO`),
  KEY `STO_TBM_PUBOF_IDX_2` (`APPY_END_DT`,`APPY_FIN_TIME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='STO공모의 경우 공모에 대한 정보사항 및 해당 물량 등을 관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STO_TBM_PUBOF`
--

LOCK TABLES `STO_TBM_PUBOF` WRITE;
/*!40000 ALTER TABLE `STO_TBM_PUBOF` DISABLE KEYS */;
INSERT INTO `STO_TBM_PUBOF` VALUES ('2023-11-14','A1234','200','키움증','000','1',500.00,1000.00,100000000,100000000,50000000,50000000,100000000,' ','키움증',' ',' ','2023-11-15',0.000000,'0','','0',1000.000000,1.0000,1000.000000,'2023-12-10','2023-12-11','2023-12-11','2023-12-11','2023-12-11','2023-12-11','2023-12-11','2023-12-11','1',100.000000,100.000000,100,100,100,'1','1','0','00:00:00','1','1','A','B','2023-11-14 09:11:31','1',0,0,0,0,0.0000,'','',''),('2023-11-16','IBK000000012','210','IBK발행12','000','1',1000.00,2000.00,1000000000,1100000000,200000000,200000000,200000000,'경향비즈','코스콤','STO발행','IBK증권','2023-11-16',5000.000000,'0','002','0',1000.000000,0.0000,2000.000000,'2023-11-16','2023-11-16','2023-11-16','2023-11-16','2023-11-16','2023-11-16','2023-11-16','2023-11-16','1',100.000000,100.000000,100,100,100,'1','1','0','23:59:59','1','1','kos','sys','2023-11-16 10:00:50','1',0,0,0,0,0.0000,'','',''),('2023-11-16','KR0000000002','200','키움발행2','000','1',1000.00,2000.00,1000000000,1100000000,200000000,200000000,200000000,'경향비즈','코스콤','STO발행','키움증권','2023-11-16',5000.000000,'0','002','0',1000.000000,0.0000,2000.000000,'2023-11-16','2023-11-16','2023-11-16','2023-11-16','2023-11-16','2023-11-16','2023-11-16','2023-11-16','1',100.000000,100.000000,100,100,100,'1','1','0','23:59:59','1','1','kos','sys','2023-11-16 09:15:31','1',0,0,0,0,0.0000,'','',''),('2023-11-16','KR0000000003','200','키움발행3','000','1',1000.00,3000.00,1000000000,1100000000,200000000,200000000,200000000,'경향비즈','코스콤','STO발행','키움증권','2023-11-16',5000.000000,'0','002','0',1000.000000,0.0000,2000.000000,'2023-11-16','2023-11-16','2023-11-16','2023-11-16','2023-11-16','2023-11-16','2023-11-16','2023-11-16','1',100.000000,100.000000,100,100,100,'1','1','0','23:59:59','1','1','Yoo','W','2023-12-04 17:40:26','1',100000,55,45,1,4.2200,'3','2',''),('2023-11-20','KR3456789015','999','상장종목명','000','1',500.00,1000.00,1000000000,1100000000,1000000,200000000,200000000,'청약일보','하이투자','','키움증권','2023-11-16',1000.000000,'0','DPN','0',1000.000000,1.0000,2000.000000,'2023-12-01','2023-12-01','2023-12-25','2023-12-10','2023-12-20','2023-12-27','2023-12-27','2023-12-27','1',100.000000,100.000000,100,100,100,'1','1','0','00:00:01','1','1','Yoo','W','2023-11-24 09:07:17','0',100,0,0,0,0.0000,'','',''),('2023-11-20','KR3456789016','999','청약추가주식회사발행3','000','1',500.00,1000.00,1000000000,1100000000,1000000,200000000,200000000,'청약일보','하이투자','','키움증권','0000-01-01',1000.000000,'0','DPN','0',1000.000000,1.0000,2000.000000,'2023-12-01','0000-01-01','2023-12-25','2023-12-10','2023-12-20','2023-12-27','0000-01-01','0000-01-01','1',100.000000,100.000000,100,100,100,'1','1','0','00:00:01','1','1','Yoo','W','2023-11-16 00:00:00','1',0,0,0,0,0.0000,'','',''),('2023-11-20','KR3456789020','999','청약추가주식회사발행4','000','1',500.00,1000.00,1000000000,1100000000,1000000,200000000,200000000,'청약일보','하이투자','','키움증권','0000-01-01',1000.000000,'0','DPN','0',1000.000000,1.0000,2000.000000,'2023-12-01','0000-01-01','2023-12-25','2023-12-10','2023-12-20','2023-12-27','0000-01-01','0000-01-01','1',100.000000,100.000000,100,100,100,'1','1','0','00:00:01','1','1','Yoo','W','2023-11-16 15:06:28','0',0,0,0,0,0.0000,'','',''),('2023-11-20','KR3456789099','','청약추가주식회사','000','1',0.00,1000.00,0,0,1000000,0,0,'청약일보','하이투자','','키움증권','0000-01-01',1000.000000,'0','DPN','0',1000.000000,1.0000,2000.000000,'2023-12-01','0000-01-01','2023-12-25','2023-12-10','2023-12-20','2023-12-27','0000-01-01','0000-01-01','1',0.000000,0.000000,0,0,0,'','1','','00:00:01','1','','Yoo','W','2023-11-23 17:58:19','0',0,0,0,0,0.0000,'','','');
/*!40000 ALTER TABLE `STO_TBM_PUBOF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STO_TBM_USER`
--

DROP TABLE IF EXISTS `STO_TBM_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STO_TBM_USER` (
  `USER_ID` char(16) COLLATE utf8mb4_bin NOT NULL COMMENT '사용자 ID',
  `PWD` char(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '비밀번호',
  `USER_NAME` char(40) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '사용자명',
  `DPART_NO` char(3) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '부서번호',
  `TEL_NO_1` char(4) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '전화번호1',
  `TEL_NO_2` char(4) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '전화번호2',
  `TEL_NO_3` char(4) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '전화번호3',
  `MENU_AUTH_CODE` char(4) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '메뉴권한코드',
  `FLTCO_CODE` char(5) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '발행사 코드',
  `PWD_CHG_CYCL` int NOT NULL DEFAULT '0' COMMENT '비밀번호변경주기',
  `PWD_CHG_DUP_PRHBT_CNT` int NOT NULL DEFAULT '0' COMMENT '비밀번호변경중복금지횟수',
  `PWD_DUP_PRHBT_TERM` int NOT NULL DEFAULT '0' COMMENT '비밀번호중복금지기간',
  `USE_XPIR_DTTM` datetime NOT NULL DEFAULT '0000-01-01 00:00:00' COMMENT '사용만료일시',
  `RETRY_CNT_CNF_YN` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '재시도횟수확인여부',
  `RETRY_CNT` int NOT NULL DEFAULT '0' COMMENT '재시도횟수',
  `LAST_LOGIN_DTTM` datetime NOT NULL DEFAULT '0000-01-01 00:00:00' COMMENT '최종로그인일시',
  `DEL_YN` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '삭제여부',
  `DEL_DTTM` datetime NOT NULL DEFAULT '0000-01-01 00:00:00' COMMENT '삭제일시',
  `CHG_USER_ID` char(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '변경사용자ID',
  `CHG_DTTM` datetime NOT NULL DEFAULT '0000-01-01 00:00:00' COMMENT '변경일시',
  `CONN_PRHBT_YN` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '접속금지여부',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='토큰증권 사용자 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STO_TBM_USER`
--

LOCK TABLES `STO_TBM_USER` WRITE;
/*!40000 ALTER TABLE `STO_TBM_USER` DISABLE KEYS */;
INSERT INTO `STO_TBM_USER` VALUES ('songhc','songhc','songhc','003','010','1234','5678','','03949',0,0,0,'0000-01-01 00:00:00','',0,'0000-01-01 00:00:00','N','0000-01-01 00:00:00','','0000-01-01 00:00:00','');
/*!40000 ALTER TABLE `STO_TBM_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STO_TBM_USERID_FLTCO_ACMGT_ITT`
--

DROP TABLE IF EXISTS `STO_TBM_USERID_FLTCO_ACMGT_ITT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STO_TBM_USERID_FLTCO_ACMGT_ITT` (
  `USER_ID` char(16) COLLATE utf8mb4_bin NOT NULL COMMENT '사용자 ID',
  `FIRM_TP` char(1) COLLATE utf8mb4_bin NOT NULL COMMENT '이용사 구분',
  `FLTCO_ACMGT_ITT_NO` char(8) COLLATE utf8mb4_bin NOT NULL COMMENT '발행사 계좌관리기관번호',
  PRIMARY KEY (`USER_ID`,`FIRM_TP`,`FLTCO_ACMGT_ITT_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='토큰증권 사용자별 발행사 계좌관리기관';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STO_TBM_USERID_FLTCO_ACMGT_ITT`
--

LOCK TABLES `STO_TBM_USERID_FLTCO_ACMGT_ITT` WRITE;
/*!40000 ALTER TABLE `STO_TBM_USERID_FLTCO_ACMGT_ITT` DISABLE KEYS */;
/*!40000 ALTER TABLE `STO_TBM_USERID_FLTCO_ACMGT_ITT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user`
--

DROP TABLE IF EXISTS `admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_user` (
  `mgr_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '관리자ID',
  `mgr_name` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리자명',
  `mgr_clsfi_cd` char(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리자분류코드',
  `pwd_ow` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비밀번호OW',
  `cphn_no` char(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '휴대폰번호',
  `emad` varchar(105) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일주소',
  `sys_last_prcss_yms` char(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시스템최종처리일시',
  `sys_last_uno` char(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시스템최종사용자번호',
  PRIMARY KEY (`mgr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='admin_user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user`
--

LOCK TABLES `admin_user` WRITE;
/*!40000 ALTER TABLE `admin_user` DISABLE KEYS */;
INSERT INTO `admin_user` VALUES ('manager','관리자','M','$2a$10$B9PlY0uVE8VdxPio/a2AKO3Ez2m5OvwzGFKZYUNSvBjlB3dix1fAC','010-1234-5678','manager@email.com','2023-11-01 10:20:57',NULL);
/*!40000 ALTER TABLE `admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_route`
--

DROP TABLE IF EXISTS `api_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_route` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '시퀀스',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'api 경로',
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '요청 메서드(POST, GET)',
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '라우팅 uri',
  `path_replace` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'path replace 사용(null이면 사용 안함)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='api 라우트';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_route`
--

LOCK TABLES `api_route` WRITE;
/*!40000 ALTER TABLE `api_route` DISABLE KEYS */;
INSERT INTO `api_route` VALUES (2,'/kiwoom/**','','http://localhost:28080','/'),(3,'/kb/**','','http://localhost:28082','/'),(4,'/miraeasset/**','','http://localhost:28083','/');
/*!40000 ALTER TABLE `api_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo1`
--

DROP TABLE IF EXISTS `demo1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demo1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `grp_code` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `comment` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='demo1';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo1`
--

LOCK TABLES `demo1` WRITE;
/*!40000 ALTER TABLE `demo1` DISABLE KEYS */;
INSERT INTO `demo1` VALUES (1,'cd-11','Code11','code11','코드명11'),(2,'cd-12','Code12','code11','코드명12'),(3,'cd-13','Code13','code11','코드명13'),(4,'cd-14','Code14','code11','코드명14'),(5,'cd-15','Code15','code11','코드명15'),(6,'cd-16','Code16','code11','코드명16'),(7,'cd-17','Code17','code11','코드명17'),(8,'cd-18','Code18','code11','코드명18'),(9,'cd-19','Code19','code11','코드명19'),(10,'cd-21','Code21','code21','코드명21'),(11,'cd-22','Code22','code21','코드명22'),(12,'cd-23','Code23','code21','코드명23'),(13,'cd-24','Code24','code21','코드명24'),(14,'cd-25','Code25','code21','코드명25'),(15,'cd-26','Code26','code21','코드명26'),(16,'cd-27','Code27','code21','코드명27'),(17,'cd-28','Code28','code21','코드명28'),(18,'cd-29','Code29','code21','코드명29'),(19,'cd-31','Code31','code31','코드명31'),(20,'cd-32','Code32','code31','코드명32'),(21,'cd-33','Code33','code31','코드명33'),(22,'cd-34','Code34','code31','코드명34'),(23,'cd-35','Code35','code31','코드명35'),(24,'cd-36','Code36','code31','코드명36'),(25,'cd-37','Code37','code31','코드명37'),(26,'cd-38','Code38','code31','코드명38'),(27,'cd-39','Code39','code31','코드명39'),(28,'cd-41','Code41','code41','코드명41'),(29,'cd-42','Code42','code41','코드명42'),(30,'cd-43','Code43','code41','코드명43'),(31,'cd-44','Code44','code41','코드명44'),(32,'cd-45','Code45','code41','코드명45'),(33,'cd-46','Code46','code41','코드명46'),(34,'cd-47','Code47','code41','코드명47'),(35,'cd-48','Code48','code41','코드명48'),(36,'cd-49','Code49','code41','코드명49'),(37,'cd-51','Code51','code51','코드명51'),(38,'cd-52','Code52','code51','코드명52'),(39,'cd-53','Code53','code51','코드명53'),(40,'cd-54','Code54','code51','코드명54'),(41,'cd-55','Code55','code51','코드명55'),(42,'cd-56','Code56','code51','코드명56'),(43,'cd-57','Code57','code51','코드명57'),(44,'cd-58','Code58','code51','코드명58'),(45,'cd-59','Code59','code51','코드명59'),(46,'cd-61','Code61','code61','코드명61'),(47,'cd-62','Code62','code61','코드명62'),(48,'cd-63','Code63','code61','코드명63'),(49,'cd-64','Code64','code61','코드명64'),(50,'cd-65','Code65','code61','코드명65'),(51,'cd-66','Code66','code61','코드명66'),(52,'cd-67','Code67','code61','코드명67'),(53,'cd-68','Code68','code61','코드명68'),(54,'cd-69','Code69','code61','코드명69');
/*!40000 ALTER TABLE `demo1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demobat`
--

DROP TABLE IF EXISTS `demobat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demobat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `age` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `birthday` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `comments` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='demobatch';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demobat`
--

LOCK TABLES `demobat` WRITE;
/*!40000 ALTER TABLE `demobat` DISABLE KEYS */;
/*!40000 ALTER TABLE `demobat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refresh_token`
--

DROP TABLE IF EXISTS `refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refresh_token` (
  `token_id` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `access_token` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `refresh_token` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `refresh_token_expiration_at` bigint DEFAULT NULL,
  `user_email` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='refresh token';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refresh_token`
--

LOCK TABLES `refresh_token` WRITE;
/*!40000 ALTER TABLE `refresh_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample_member`
--

DROP TABLE IF EXISTS `sample_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sample_member` (
  `member_no` int NOT NULL AUTO_INCREMENT,
  `member_id` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `member_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`member_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Sample Member';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_member`
--

LOCK TABLES `sample_member` WRITE;
/*!40000 ALTER TABLE `sample_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `sample_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `ci` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `role` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `school` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ci-test-1','user1','$2a$10$B9PlY0uVE8VdxPio/a2AKO3Ez2m5OvwzGFKZYUNSvBjlB3dix1fAC','user1@kbfg.com','USER',NULL,NULL,NULL),(2,'ci-test-7','student7',NULL,'student7@s1.com','USER','학생7','010-0007-0007','학교1'),(3,'ci-test-8','student8',NULL,'student8@s1.com','USER','학생8','010-0008-0008','학교1'),(4,'ci-test-9','student9',NULL,'student9@s1.com','USER','학생9','010-0009-0009','학교2'),(5,'ci-test-10','student10',NULL,'student10@s2.com','USER','학생10','010-0010-0010','학교2'),(6,'ci-test-11','student11',NULL,'student11@s2.com','USER','학생11','010-0011-0011','학교2'),(7,'ci-test-12','student12',NULL,'student12@s2.com','USER','학생12','010-0012-0012','학교2'),(8,'ci-test-13','student13',NULL,'student13@s3.com','USER','학생13','010-0013-0013','학교3'),(9,'ci-test-14','student14',NULL,'student14@s3.com','USER','학생14','010-0014-0014','학교3'),(10,'ci-test-15','student15',NULL,'student15@s3.com','USER','학생15','010-0015-0015','학교3'),(11,'ci-test-16','student16',NULL,'student16@s3.com','USER','학생16','010-0016-0016','학교3'),(12,'ci-test-17','student17',NULL,'student17@s4.com','USER','학생17','010-0017-0017','학교4'),(13,'ci-test-18','student18',NULL,'student18@s4.com','USER','학생18','010-0018-0018','학교4'),(14,'ci-test-19','student19',NULL,'student19@s4.com','USER','학생19','010-0019-0019','학교4'),(15,'ci-test-20','student20',NULL,'student20@s4.com','USER','학생20','010-0020-0020','학교4'),(16,'ci-test-21','student21',NULL,'student21@s4.com','USER','학생21','010-0021-0021','학교4'),(17,'ci-test-22','student22',NULL,'student22@s4.com','USER','학생22','010-0022-0022','학교4'),(18,'ci-test-23','student23',NULL,'student23@s4.com','USER','학생23','010-0023-0023','학교4'),(19,'ci-test-24','student24',NULL,'student24@s4.com','USER','학생24','010-0024-0024','학교4'),(20,'ci-test-25','student25',NULL,'student25@s4.com','USER','학생25','010-0025-0025','학교4'),(21,'ci-test-26','student26',NULL,'student26@s4.com','USER','학생26','010-0026-0026','학교4'),(22,'ci-test-27','student27',NULL,'student27@s4.com','USER','학생27','010-0027-0027','학교4'),(23,'ci-test-28','student28',NULL,'student28@s4.com','USER','학생28','010-0028-0028','학교4'),(24,'ci-test-29','student29',NULL,'student29@s4.com','USER','학생29','010-0029-0029','학교4'),(25,'ci-test-30','student30',NULL,'student30@s4.com','USER','학생30','010-0030-0030','학교4'),(26,'ci-test-31','student31',NULL,'student31@s4.com','USER','학생31','010-0031-0031','학교4');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'stoeco'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-07  9:11:46
