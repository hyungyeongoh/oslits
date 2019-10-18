
/* ADM1000 테이블 생성 SQL */
CREATE TABLE ADM1000
(
LIC_GRP_ID VARCHAR2(23) NOT NULL  , 
MENU_ID VARCHAR2(12) NOT NULL  , 
UPPER_MENU_ID VARCHAR2(14) , 
MENU_NM VARCHAR2(200) NOT NULL  , 
MENU_TYPE_CD VARCHAR2(2) , 
MENU_DESC VARCHAR2(500) , 
MENU_URL VARCHAR2(500) , 
MENU_PATH VARCHAR2(500) , 
MENU_IMG_URL VARCHAR2(500) , 
LVL NUMBER , 
ORD NUMBER , 
USE_CD VARCHAR2(2) , 
PRJ_TYPE VARCHAR2(16) , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_ADM1000 PRIMARY KEY(LIC_GRP_ID , MENU_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;


/* ADM1100 테이블 생성 SQL */
CREATE TABLE ADM1100
(
LIC_GRP_ID VARCHAR2(23) NOT NULL  , 
PRJ_ID VARCHAR2(16) NOT NULL  , 
AUTH_GRP_ID VARCHAR2(16) NOT NULL  , 
AUTH_GRP_NM VARCHAR2(50) NOT NULL  , 
AUTH_GRP_DESC VARCHAR2(500) , 
CREATE_DT VARCHAR2(8) , 
USE_CD VARCHAR2(2) , 
ORD NUMBER , 
USR_TYP CHAR(2) , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_ADM1100 PRIMARY KEY(LIC_GRP_ID , PRJ_ID , AUTH_GRP_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* ADM1200 테이블 생성 SQL */
CREATE TABLE ADM1200
(
LIC_GRP_ID VARCHAR2(23) NOT NULL  , 
PRJ_ID VARCHAR2(16) NOT NULL  , 
AUTH_GRP_ID VARCHAR2(16) NOT NULL  , 
MENU_ID VARCHAR2(12) NOT NULL  , 
MAIN_YN CHAR(1) , 
ACCESS_YN CHAR(1) , 
SELECT_YN CHAR(1) , 
REG_YN CHAR(1) , 
MODIFY_YN CHAR(1) , 
DEL_YN CHAR(1) , 
EXCEL_YN CHAR(1) , 
PRINT_YN CHAR(1) , 
USE_CD VARCHAR2(2) , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_ADM1200 PRIMARY KEY(LIC_GRP_ID , PRJ_ID , AUTH_GRP_ID , MENU_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* ADM1300 테이블 생성 SQL */
CREATE TABLE ADM1300
(
PRJ_ID VARCHAR2(16) NOT NULL  , 
AUTH_GRP_ID VARCHAR2(16) NOT NULL  , 
USR_ID VARCHAR2(20) NOT NULL  , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_ADM1300 PRIMARY KEY(PRJ_ID , AUTH_GRP_ID , USR_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* ADM2000 테이블 생성 SQL */
CREATE TABLE ADM2000
(
USR_ID VARCHAR2(20) NOT NULL  , 
LIC_GRP_ID VARCHAR2(23) NOT NULL  , 
USR_PW VARCHAR2(200) NOT NULL  , 
USR_NM VARCHAR2(200) NOT NULL  , 
EMAIL VARCHAR2(50) , 
TELNO VARCHAR2(20) , 
DEPT_ID VARCHAR2(16) , 
ETC VARCHAR2(4000) , 
WK_ST_TM CHAR(4) , 
WK_ED_TM CHAR(4) , 
BK_ST_TM CHAR(4) , 
BK_ED_TM CHAR(4) , 
PW_FAIL_CNT NUMBER , 
BLOCK VARCHAR2(2) , 
ADM_YN CHAR(1) , 
PRJ_ID VARCHAR2(16) , 
USR_IMG_ID CHAR(20) , 
USE_CD VARCHAR2(2) , 
USR_POSITION_CD  VARCHAR2(2) , 
USR_DUTY_CD VARCHAR2(2) , 
REQ_MAIN_COLOR VARCHAR2(10) , 
REQ_FONT_COLOR VARCHAR2(10) , 
INI_YN CHAR(1) , 
INI_DTM DATE , 
REC_LOGIN_DTM DATE , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_ADM2000 PRIMARY KEY(USR_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* ADM2100 테이블 생성 SQL */
CREATE TABLE ADM2100
(
USR_ID VARCHAR2(20) NOT NULL  , 
LIC_GRP_ID VARCHAR2(23) NOT NULL  , 
SEQ NUMBER NOT NULL  , 
BLK_LOG VARCHAR2(1000) , 
REC_LOGIN_DTM DATE , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_ADM2100 PRIMARY KEY(USR_ID , LIC_GRP_ID , SEQ )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* ADM3000 테이블 생성 SQL */
CREATE TABLE ADM3000
(
LIC_GRP_ID VARCHAR2(23) NOT NULL  , 
LIC_NO VARCHAR2(20) NOT NULL  , 
LIC_NM VARCHAR2(500) NOT NULL  , 
LIC_START_DT CHAR(8) NOT NULL  , 
LIC_END_DT CHAR(8) NOT NULL  , 
LIC_GB_CD VARCHAR2(2) NOT NULL  , 
PERMIT_USR_CNT NUMBER NOT NULL  , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_ADM3000 PRIMARY KEY(LIC_GRP_ID , LIC_NO )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* ADM3100 테이블 생성 SQL */
CREATE TABLE ADM3100
(
LIC_GRP_ID VARCHAR2(23) NOT NULL  , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_ADM3100 PRIMARY KEY(LIC_GRP_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* ADM4000 테이블 생성 SQL */
CREATE TABLE ADM4000
(
LIC_GRP_ID VARCHAR2(23) NOT NULL  , 
MST_CD VARCHAR2(8) NOT NULL  , 
UPPER_MST_CD VARCHAR2(8) , 
MST_CD_NM VARCHAR2(50) NOT NULL  , 
MST_CD_ENG_NM VARCHAR2(50) , 
MST_CD_DESC VARCHAR2(200) , 
ABORT_DT CHAR(8) , 
LVL NUMBER , 
ORD NUMBER , 
USE_YN CHAR(1) , 
STM_USE_YN CHAR(1) , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_ADM4000 PRIMARY KEY(LIC_GRP_ID , MST_CD )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* ADM4100 테이블 생성 SQL */
CREATE TABLE ADM4100
(
LIC_GRP_ID VARCHAR2(23) NOT NULL  , 
MST_CD VARCHAR2(8) NOT NULL  , 
SUB_CD VARCHAR2(2) NOT NULL  , 
SUB_CD_NM VARCHAR2(50) NOT NULL  , 
ORD NUMBER , 
USE_YN CHAR(1) , 
SUB_CD_REF1 VARCHAR2(50) , 
SUB_CD_REF2 VARCHAR2(50) , 
SUB_CD_REF3 VARCHAR2(50) , 
SUB_CD_REF4 VARCHAR2(50) , 
SUB_CD_REF5 VARCHAR2(50) , 
SUB_CD_DESC VARCHAR2(200) , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_ADM4100 PRIMARY KEY(LIC_GRP_ID , MST_CD , SUB_CD )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* ADM5000 테이블 생성 SQL */
CREATE TABLE ADM5000
(
LIC_GRP_ID VARCHAR2(23) NOT NULL  , 
LOGIN_USR_ID VARCHAR2(20) NOT NULL  , 
LOGIN_TIME DATE NOT NULL  , 
LOGOUT_TIME DATE , 
LOGIN_IP VARCHAR2(39) , 
LOGIN_STATUS VARCHAR2(20) 
);

/* ADM5100 테이블 생성 SQL */
CREATE TABLE ADM5100
(
LIC_GRP_ID VARCHAR2(23) , 
LOG_TIME DATE , 
LOG_URL VARCHAR2(500) , 
LOG_USR_ID VARCHAR2(20) , 
LOG_IP VARCHAR2(39) , 
MENU_ID VARCHAR2(12) , 
MENU_NM VARCHAR2(200) , 
MENU_URL VARCHAR2(500) , 
MENU_CD VARCHAR2(2) 
);

/* ADM5200 테이블 생성 SQL */
CREATE TABLE ADM5200
(
LOG_TIME DATE , 
LOG_STATE VARCHAR2(1) , 
USR_ID VARCHAR2(20) , 
LIC_GRP_ID VARCHAR2(23) , 
USR_PW VARCHAR2(200) , 
USR_NM VARCHAR2(200) , 
EMAIL VARCHAR2(50) , 
TELNO VARCHAR2(20) , 
DEPT_ID VARCHAR2(16) , 
ETC VARCHAR2(4000) , 
WK_ST_TM CHAR(4) , 
WK_ED_TM CHAR(4) , 
BK_ST_TM CHAR(4) , 
BK_ED_TM CHAR(4) , 
PW_FAIL_CNT NUMBER , 
BLOCK VARCHAR2(2) , 
USR_IMG_ID CHAR(20) , 
USE_CD VARCHAR2(2) , 
USR_POSITION_CD  VARCHAR2(2) , 
USR_DUTY_CD VARCHAR2(2) , 
REQ_MAIN_COLOR VARCHAR2(10) , 
REQ_FONT_COLOR VARCHAR2(10) , 
REC_LOGIN_DTM DATE , 
PW_MODIFY_DTM DATE , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) 
);

/* ADM6000 테이블 생성 SQL */
CREATE TABLE ADM6000
(
LIC_GRP_ID VARCHAR2(23) NOT NULL  , 
HOLI_DATE VARCHAR2(8) NOT NULL  , 
DAY_WEEK CHAR(1) , 
HOLI_CD VARCHAR2(2) , 
HOLI_DESC VARCHAR2(100) , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_ADM6000 PRIMARY KEY(LIC_GRP_ID , HOLI_DATE )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* ADM7000 테이블 생성 SQL */
CREATE TABLE ADM7000
(
LIC_GRP_ID VARCHAR2(23) NOT NULL  , 
DEPT_ID VARCHAR2(16) NOT NULL  , 
UPPER_DEPT_ID VARCHAR2(16) , 
DEPT_NAME VARCHAR2(200) NOT NULL  , 
DEPT_ADMIN_USR_ID VARCHAR2(20) , 
ORD NUMBER , 
USE_CD VARCHAR2(2) , 
DEPT_ETC VARCHAR2(4000) , 
LVL NUMBER , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_ADM7000 PRIMARY KEY(LIC_GRP_ID , DEPT_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* API1000 테이블 생성 SQL */
CREATE TABLE API1000
(
LIC_GRP_ID VARCHAR2(23) NOT NULL  , 
API_ID VARCHAR2(16) NOT NULL  , 
API_NM VARCHAR2(500) , 
API_URL VARCHAR2(500) , 
API_TXT VARCHAR2(1000) , 
ATCH_FILE_ID VARCHAR2(20) , 
USE_CD VARCHAR2(2) , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_API1000 PRIMARY KEY(LIC_GRP_ID , API_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* API1100 테이블 생성 SQL */
CREATE TABLE API1100
(
LIC_GRP_ID VARCHAR2(23) NOT NULL  , 
PRJ_ID  VARCHAR2(16) NOT NULL  , 
API_ID VARCHAR2(16) NOT NULL  , 
API_TOK VARCHAR2(50) , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_API1100 PRIMARY KEY(LIC_GRP_ID , PRJ_ID  , API_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* ARM1000 테이블 생성 SQL */
CREATE TABLE ARM1000
(
ARM_ID VARCHAR2(16) NOT NULL  , 
USR_ID VARCHAR2(20) NOT NULL  , 
SEND_USR_ID VARCHAR2(20) , 
TITLE VARCHAR2(2000) , 
CONTENT VARCHAR2(4000) , 
VIEW_CHECK CHAR(1) , 
DEL_CHECK CHAR(1) , 
REQ_IDS VARCHAR2(4000) , 
REG_DTM DATE , 
CHECK_DTM DATE , 
DEL_DTM DATE , 

CONSTRAINT PK_ARM1000 PRIMARY KEY(ARM_ID , USR_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* COMTNCOPSEQ 테이블 생성 SQL */
CREATE TABLE COMTNCOPSEQ
(
TABLE_NAME VARCHAR2(20) NOT NULL  , 
NEXT_ID NUMBER(30) , 

CONSTRAINT PK_COMTNCOPSEQ PRIMARY KEY(TABLE_NAME )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* COMTNFILE 테이블 생성 SQL */
CREATE TABLE COMTNFILE
(
ATCH_FILE_ID CHAR(20) NOT NULL  , 
CREAT_DT DATE , 
USE_AT CHAR(1) , 

CONSTRAINT PK_COMTNFILE PRIMARY KEY(ATCH_FILE_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* COMTNFILEDETAIL 테이블 생성 SQL */
CREATE TABLE COMTNFILEDETAIL
(
ATCH_FILE_ID CHAR(20) NOT NULL  , 
FILE_SN NUMBER(10) NOT NULL  , 
FILE_STRE_COURS VARCHAR2(2000) , 
STRE_FILE_NM VARCHAR2(255) , 
ORIGNL_FILE_NM VARCHAR2(255) , 
FILE_EXTSN VARCHAR2(20) , 
FILE_CN CLOB , 
FILE_SIZE NUMBER(12) , 
REG_DTM DATE , 

CONSTRAINT PK_COMTNFILEDETAIL PRIMARY KEY(ATCH_FILE_ID , FILE_SN )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* DPL1000 테이블 생성 SQL */
CREATE TABLE DPL1000
(
PRJ_ID  VARCHAR2(16) NOT NULL  , 
DPL_ID VARCHAR2(16) NOT NULL  , 
DPL_NM VARCHAR2(200) NOT NULL  , 
DPL_VER VARCHAR2(100) , 
DPL_DT  VARCHAR2(8) , 
DPL_USR_ID VARCHAR2(20) , 
DPL_TXT VARCHAR2(1000) , 
DPL_STS_CD VARCHAR2(2) , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_DPL1000 PRIMARY KEY(PRJ_ID  , DPL_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* DPL1100 테이블 생성 SQL */
CREATE TABLE DPL1100
(
LIC_GRP_ID VARCHAR2(23) NOT NULL  , 
PRJ_ID  VARCHAR2(16) NOT NULL  , 
DPL_ID VARCHAR2(16) NOT NULL  , 
JEN_ID VARCHAR2(16) NOT NULL  , 
DPL_SEQ NUMBER NOT NULL  , 
BLD_NUM NUMBER , 
BLD_STS VARCHAR2(20) , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_DPL1100 PRIMARY KEY(LIC_GRP_ID , PRJ_ID  , DPL_ID , JEN_ID , DPL_SEQ )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* DPL1200 테이블 생성 SQL */
CREATE TABLE DPL1200
(
PRJ_ID  VARCHAR2(16) NOT NULL  , 
REQ_ID VARCHAR2(16) NOT NULL  , 
PROCESS_ID VARCHAR2(16) NOT NULL  , 
FLOW_ID VARCHAR2(16) NOT NULL  , 
DPL_ID VARCHAR2(16) NOT NULL  , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_DPL1200 PRIMARY KEY(PRJ_ID  , REQ_ID , PROCESS_ID , FLOW_ID , DPL_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* FLW1000 테이블 생성 SQL */
CREATE TABLE FLW1000
(
PRJ_ID VARCHAR2(16) NOT NULL  , 
PROCESS_ID VARCHAR2(16) NOT NULL  , 
PROCESS_NM VARCHAR2(100) NOT NULL  , 
PROCESS_DESC VARCHAR2(4000) , 
PROCESS_CONFIRM_CD VARCHAR2(2) , 
PROCESS_JSON_DATA CLOB , 
USE_CD VARCHAR2(2) , 
PROCESS_ORD NUMBER , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_FLW1000 PRIMARY KEY(PRJ_ID , PROCESS_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* FLW1100 테이블 생성 SQL */
CREATE TABLE FLW1100
(
PRJ_ID VARCHAR2(16) NOT NULL  , 
PROCESS_ID VARCHAR2(16) NOT NULL  , 
FLOW_ID VARCHAR2(16) NOT NULL  , 
FLOW_NEXT_ID VARCHAR2(16) , 
FLOW_NM VARCHAR2(100) NOT NULL  , 
FLOW_ESSENTIAL_CD VARCHAR2(2) , 
FLOW_SIGN_CD VARCHAR2(2) , 
FLOW_END_CD VARCHAR2(2) , 
FLOW_WORK_CD VARCHAR2(2) , 
FLOW_REVISION_CD VARCHAR2(2) , 
FLOW_DPL_CD VARCHAR2(2) , 
FLOW_AUTH_CD VARCHAR2(2) , 
FLOW_TITLE_BG_COLOR VARCHAR2(7) , 
FLOW_TITLE_COLOR VARCHAR2(7) , 
FLOW_CONTENT_BG_COLOR VARCHAR2(7) , 
FLOW_CONTENT_COLOR VARCHAR2(7) , 
USE_CD VARCHAR2(2) , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_FLW1100 PRIMARY KEY(PRJ_ID , PROCESS_ID , FLOW_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* FLW1200 테이블 생성 SQL */
CREATE TABLE FLW1200
(
PRJ_ID VARCHAR2(16) NOT NULL  , 
PROCESS_ID VARCHAR2(16) NOT NULL  , 
FLOW_ID VARCHAR2(16) NOT NULL  , 
ITEM_ID VARCHAR2(16) NOT NULL  , 
ITEM_NM VARCHAR2(100) , 
ITEM_CODE VARCHAR2(2) , 
ITEM_COMMON_CODE VARCHAR2(20) , 
ITEM_ROW_NUM VARCHAR2(2) , 
ITEM_TYPE VARCHAR2(10) , 
ITEM_LENGTH NUMBER , 
ITEM_ESSENTIAL_CD VARCHAR2(2) , 
ITEM_MODIFY_CD VARCHAR2(2) , 
ITEM_ORD NUMBER , 
USE_CD VARCHAR2(2) , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_FLW1200 PRIMARY KEY(PRJ_ID , PROCESS_ID , FLOW_ID , ITEM_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* FLW1300 테이블 생성 SQL */
CREATE TABLE FLW1300
(
PRJ_ID VARCHAR2(16) NOT NULL  , 
REQ_ID VARCHAR2(16) NOT NULL  , 
PROCESS_ID VARCHAR2(16) NOT NULL  , 
FLOW_ID VARCHAR2(16) NOT NULL  , 
ITEM_ID VARCHAR2(16) NOT NULL  , 
ITEM_VALUE VARCHAR2(4000) , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_FLW1300 PRIMARY KEY(PRJ_ID , REQ_ID , PROCESS_ID , FLOW_ID , ITEM_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* FLW1400 테이블 생성 SQL */
CREATE TABLE FLW1400
(
PRJ_ID VARCHAR2(16) NOT NULL  , 
REQ_ID VARCHAR2(16) NOT NULL  , 
PROCESS_ID VARCHAR2(16) NOT NULL  , 
FLOW_ID VARCHAR2(16) NOT NULL  , 
SVN_REP_ID VARCHAR2(16) NOT NULL  , 
REVISION_NUM VARCHAR2(40) NOT NULL  , 
REVISION_COMMENT VARCHAR2(4000) , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_FLW1400 PRIMARY KEY(PRJ_ID , REQ_ID , PROCESS_ID , FLOW_ID , SVN_REP_ID , REVISION_NUM )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* FLW1500 테이블 생성 SQL */
CREATE TABLE FLW1500
(
PRJ_ID VARCHAR2(16) NOT NULL  , 
PROCESS_ID VARCHAR2(16) NOT NULL  , 
FLOW_ID VARCHAR2(16) NOT NULL  , 
AUTH_GRP_ID VARCHAR2(16) NOT NULL  , 
AUTH_GRP_TARGET_CD VARCHAR2(2) NOT NULL  , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_FLW1500 PRIMARY KEY(PRJ_ID , PROCESS_ID , FLOW_ID , AUTH_GRP_ID , AUTH_GRP_TARGET_CD )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* JEN1000 테이블 생성 SQL */
CREATE TABLE JEN1000
(
LIC_GRP_ID VARCHAR2(23) NOT NULL  , 
JEN_ID VARCHAR2(16) NOT NULL  , 
JEN_NM VARCHAR2(500) NOT NULL  , 
JEN_TXT VARCHAR2(1000) , 
JEN_TOK VARCHAR2(200) , 
JEN_USR_ID VARCHAR2(20) , 
JEN_USR_TOK VARCHAR2(1000) , 
JEN_URL VARCHAR2(500) , 
USE_CD VARCHAR2(2) , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_JEN1000 PRIMARY KEY(LIC_GRP_ID , JEN_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* JEN1100 테이블 생성 SQL */
CREATE TABLE JEN1100
(
LIC_GRP_ID VARCHAR2(23) NOT NULL  , 
PRJ_ID VARCHAR2(16) NOT NULL  , 
JEN_ID VARCHAR2(16) NOT NULL  , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_JEN1100 PRIMARY KEY(LIC_GRP_ID , PRJ_ID , JEN_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* JEN1200 테이블 생성 SQL */
CREATE TABLE JEN1200
(
PRJ_ID VARCHAR2(16) NOT NULL  , 
JEN_ID VARCHAR2(16) NOT NULL  , 
AUTH_GRP_ID VARCHAR2(16) NOT NULL  , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_JEN1200 PRIMARY KEY(PRJ_ID , JEN_ID , AUTH_GRP_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* MIL1000 테이블 생성 SQL */
CREATE TABLE MIL1000
(
LIC_GRP_ID VARCHAR2(23) NOT NULL  , 
PRJ_ID VARCHAR2(16) NOT NULL  , 
MILESTONE_ID VARCHAR2(16) NOT NULL  , 
MEILSTONE_NAME VARCHAR2(200) NOT NULL  , 
START_DT DATE , 
END_DT DATE , 
CREATE_DT DATE , 
USE_CD DATE , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_MIL1000 PRIMARY KEY(LIC_GRP_ID , PRJ_ID , MILESTONE_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* PRJ1000 테이블 생성 SQL */
CREATE TABLE PRJ1000
(
PRJ_ID VARCHAR2(16) NOT NULL  , 
LIC_GRP_ID VARCHAR2(23) NOT NULL  , 
PRJ_GRP_ID VARCHAR2(16) , 
PRJ_NM VARCHAR2(200) NOT NULL  , 
START_DT CHAR(8) , 
END_DT CHAR(8) , 
ORD NUMBER , 
PRJ_DESC VARCHAR2(4000) , 
USE_CD CHAR(2) , 
PRJ_TYPE CHAR(2) , 
PRJ_ACRM VARCHAR2(10) , 
PRJ_GRP_CD CHAR(2) , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_PRJ1000 PRIMARY KEY(PRJ_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* PRJ3000 테이블 생성 SQL */
CREATE TABLE PRJ3000
(
PRJ_ID VARCHAR2(16) NOT NULL  , 
DOC_ID VARCHAR2(16) NOT NULL  , 
UPPER_DOC_ID VARCHAR2(16) , 
DOC_NM VARCHAR2(200) NOT NULL  , 
DOC_DESC VARCHAR2(500) , 
DOC_FORM_FILE_ID CHAR(20) , 
DOC_FORM_FILE_SN NUMBER(10) , 
DOC_ATCH_FILE_ID CHAR(20) , 
DOC_FILE_SN NUMBER(10) , 
DOC_CONF_DESC VARCHAR2(500) , 
LVL NUMBER , 
ORD NUMBER , 
DOC_ED_DTM DATE , 
USE_CD VARCHAR2(2) , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_PRJ3000 PRIMARY KEY(PRJ_ID , DOC_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* REQ4000 테이블 생성 SQL */
CREATE TABLE REQ4000
(
PRJ_ID VARCHAR2(16) NOT NULL  , 
REQ_CLS_ID VARCHAR2(16) NOT NULL  , 
UPPER_REQ_CLS_ID VARCHAR2(16) , 
REQ_CLS_NM VARCHAR2(200) NOT NULL  , 
LVL NUMBER , 
ORD NUMBER , 
USE_CD VARCHAR2(2) , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_REQ4000 PRIMARY KEY(PRJ_ID , REQ_CLS_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* REQ4100 테이블 생성 SQL */
CREATE TABLE REQ4100
(
PRJ_ID VARCHAR2(16) NOT NULL  , 
REQ_ID VARCHAR2(16) NOT NULL  , 
REQ_CLS_ID VARCHAR2(16) , 
REQ_NO VARCHAR2(100) , 
REQ_ORD VARCHAR2(100) , 
REQ_USR_ID VARCHAR2(20) , 
REQ_USR_NM VARCHAR2(200) , 
REQ_DTM DATE , 
REQ_USR_DEPT_NM VARCHAR2(500) , 
REQ_USR_EMAIL VARCHAR2(100) , 
REQ_USR_NUM VARCHAR2(11) , 
REQ_NM VARCHAR2(500) NOT NULL  , 
REQ_DESC VARCHAR2(4000) , 
REQ_CHARGER_ID VARCHAR2(20) , 
REQ_COMPLETE_RATIO NUMBER , 
REQ_FP NUMBER , 
REQ_EX_FP NUMBER , 
REQ_ST_DTM DATE , 
REQ_ED_DTM DATE , 
REQ_ST_DU_DTM DATE , 
REQ_ED_DU_DTM DATE , 
REQ_PRO_TYPE VARCHAR2(2) , 
REQ_NEW_TYPE VARCHAR2(2) , 
REQ_ACCEPT_TXT VARCHAR2(4000) , 
SCL_CD VARCHAR2(2) , 
REQ_TYPE_CD VARCHAR2(2) , 
PIA_CD VARCHAR2(2) , 
LAB_INP NUMBER , 
ATCH_FILE_ID VARCHAR2(20) , 
CB_ATCH_FILE_ID VARCHAR2(20) , 
MILESTONE_ID VARCHAR2(16) , 
PROCESS_ID VARCHAR2(16) , 
FLOW_ID VARCHAR2(16) , 
USE_CD VARCHAR2(2) , 
ORG_REQ_ID VARCHAR2(4000) , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_REQ4100 PRIMARY KEY(PRJ_ID , REQ_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* REQ4300 테이블 생성 SQL */
CREATE TABLE REQ4300
(
PRJ_ID VARCHAR2(16) NOT NULL  , 
REQ_ID VARCHAR2(16) NOT NULL  , 
REQ_CMNT_SEQ NUMBER NOT NULL  , 
REQ_CMNT VARCHAR2(4000) NOT NULL  , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_REQ4300 PRIMARY KEY(PRJ_ID , REQ_ID , REQ_CMNT_SEQ )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* REQ4400 테이블 생성 SQL */
CREATE TABLE REQ4400
(
PRJ_ID VARCHAR2(16) NOT NULL  , 
REQ_ID VARCHAR2(16) NOT NULL  , 
PROCESS_ID VARCHAR2(16) NOT NULL  , 
FLOW_ID VARCHAR2(16) NOT NULL  , 
WORK_ID VARCHAR2(16) NOT NULL  , 
WORK_STATUS_CD VARCHAR2(2) , 
WORK_ADM_CONTENT VARCHAR2(4000) , 
WORK_CHARGER_ID VARCHAR2(20) , 
WORK_ADM_ST_DTM DATE , 
WORK_ADM_ED_DTM DATE , 
WORK_CONTENT VARCHAR2(4000) , 
WORK_ST_DTM DATE , 
WORK_ED_DTM DATE , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_REQ4400 PRIMARY KEY(PRJ_ID , REQ_ID , PROCESS_ID , FLOW_ID , WORK_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* REQ4600 테이블 생성 SQL */
CREATE TABLE REQ4600
(
PRJ_ID VARCHAR2(16) NOT NULL  , 
REQ_ID VARCHAR2(16) NOT NULL  , 
REQ_CB_SEQ NUMBER NOT NULL  , 
CB_FILE_SN NUMBER(10) , 
CB_GB_CD VARCHAR2(2) , 
CB_CONTENT_TEXT CLOB , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_REQ4600 PRIMARY KEY(PRJ_ID , REQ_ID , REQ_CB_SEQ )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* REQ4700 테이블 생성 SQL */
CREATE TABLE REQ4700
(
PRJ_ID VARCHAR2(16) NOT NULL  , 
REQ_ID VARCHAR2(16) NOT NULL  , 
REQ_CHG_ID VARCHAR2(16) NOT NULL  , 
REQ_CHG_TYPE VARCHAR2(2) , 
CHG_USR_ID VARCHAR2(20) , 
CHG_DTM DATE , 
PROCESS_ID VARCHAR2(16) , 
PRE_FLOW_ID VARCHAR2(16) , 
CHG_FLOW_ID VARCHAR2(16) , 
PRE_CHARGER_ID VARCHAR2(20) , 
CHG_CHARGER_ID VARCHAR2(20) , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_REQ4700 PRIMARY KEY(PRJ_ID , REQ_ID , REQ_CHG_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* REQ4800 테이블 생성 SQL */
CREATE TABLE REQ4800
(
PRJ_ID VARCHAR2(16) NOT NULL  , 
REQ_ID VARCHAR2(16) NOT NULL  , 
CHG_DETAIL_ID VARCHAR2(16) NOT NULL  , 
CHG_DETAIL_NUM VARCHAR2(18) NOT NULL  , 
CHG_DETAIL_TYPE VARCHAR2(2) , 
CHG_DETAIL_NM VARCHAR2(200) , 
CHG_DETAIL_OPT_TYPE VARCHAR2(20) , 
CHG_DETAIL_COMMON_CD VARCHAR2(8) , 
PRE_DETAIL_VAL VARCHAR2(4000) , 
CHG_DETAIL_VAL VARCHAR2(4000) , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_REQ4800 PRIMARY KEY(PRJ_ID , REQ_ID , CHG_DETAIL_ID , CHG_DETAIL_NUM )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* REQ4900 테이블 생성 SQL */
CREATE TABLE REQ4900
(
PRJ_ID VARCHAR2(16) NOT NULL  , 
REQ_ID VARCHAR2(16) NOT NULL  , 
SIGN_ID VARCHAR2(16) NOT NULL  , 
PROCESS_ID VARCHAR2(16) , 
SIGN_FLOW_ID VARCHAR2(16) , 
SIGN_USR_ID VARCHAR2(20) , 
SIGN_CD VARCHAR2(2) , 
SIGN_REJECT_CMNT VARCHAR2(4000) , 
SIGN_DTM DATE , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_REQ4900 PRIMARY KEY(PRJ_ID , REQ_ID , SIGN_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* RPT1000 테이블 생성 SQL */
CREATE TABLE RPT1000
(
LIC_GRP_ID VARCHAR2(23) NOT NULL  , 
PRJ_ID VARCHAR2(16) NOT NULL  , 
REPORT_YEAR NUMBER NOT NULL  , 
REPORT_CD CHAR(2) NOT NULL  , 
REPORT_NM VARCHAR2(50) , 
CONF_YN CHAR(2) , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_RPT1000 PRIMARY KEY(LIC_GRP_ID , PRJ_ID , REPORT_YEAR , REPORT_CD )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* RPT1100 테이블 생성 SQL */
CREATE TABLE RPT1100
(
LIC_GRP_ID VARCHAR2(23) NOT NULL  , 
PRJ_ID VARCHAR2(16) NOT NULL  , 
REPORT_YEAR NUMBER NOT NULL  , 
REPORT_CD CHAR(2) NOT NULL  , 
ITEM_CD CHAR(2) NOT NULL  , 
INDEX_CD CHAR(2) , 
ITEM_NM VARCHAR2(50) , 
WEIGHT_VAL NUMBER , 
PERIOD_CD CHAR(2) , 
PERIOD_ORD NUMBER , 
PROCESS_ID VARCHAR2(16) , 
ITEM_TYPE_CD CHAR(2) , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_RPT1100 PRIMARY KEY(LIC_GRP_ID , PRJ_ID , REPORT_YEAR , REPORT_CD , ITEM_CD )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* RPT1200 테이블 생성 SQL */
CREATE TABLE RPT1200
(
LIC_GRP_ID VARCHAR2(23) NOT NULL  , 
PRJ_ID VARCHAR2(16) NOT NULL  , 
MEA_DTM NUMBER NOT NULL  , 
REPORT_CD CHAR(2) NOT NULL  , 
REPORT_NM VARCHAR2(50) , 
TM_NM VARCHAR2(50) , 
CHARGER_NM VARCHAR2(50) , 
PM_NM VARCHAR2(50) , 
CONF_YN CHAR(2) , 
WRITE_YN CHAR(2) , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_RPT1200 PRIMARY KEY(LIC_GRP_ID , PRJ_ID , MEA_DTM , REPORT_CD )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* RPT1300 테이블 생성 SQL */
CREATE TABLE RPT1300
(
LIC_GRP_ID VARCHAR2(23) NOT NULL  , 
PRJ_ID VARCHAR2(16) NOT NULL  , 
MEA_DTM NUMBER NOT NULL  , 
REPORT_CD CHAR(2) NOT NULL  , 
ITEM_CD CHAR(2) NOT NULL  , 
INDEX_CD CHAR(2) , 
ITEM_NM VARCHAR2(50) , 
INDEX_NM VARCHAR2(50) , 
WEIGHT_VAL NUMBER , 
PERIOD_CD CHAR(2) , 
PERIOD_NM VARCHAR2(50) , 
PERIOD_ORD NUMBER , 
PROCESS_ID VARCHAR2(16) , 
MEA_VAL VARCHAR2(50) , 
APPR_VAL VARCHAR2(50) , 
OPT_VAL VARCHAR2(50) , 
MODIFY_APPR_VAL VARCHAR2(50) , 
MODIFY_OPT_VAL VARCHAR2(50) , 
ITEM_TYPE_CD CHAR(2) , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_RPT1300 PRIMARY KEY(LIC_GRP_ID , PRJ_ID , MEA_DTM , REPORT_CD , ITEM_CD )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* SVN1000 테이블 생성 SQL */
CREATE TABLE SVN1000
(
LIC_GRP_ID VARCHAR2(23) NOT NULL  , 
SVN_REP_ID VARCHAR2(16) NOT NULL  , 
SVN_REP_NM VARCHAR2(500) NOT NULL  , 
SVN_REP_URL VARCHAR2(500) , 
SVN_TXT VARCHAR2(1000) , 
SVN_USR_ID VARCHAR2(30) , 
SVN_USR_PW VARCHAR2(1000) , 
USE_CD VARCHAR2(2) , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_SVN1000 PRIMARY KEY(LIC_GRP_ID , SVN_REP_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* SVN1100 테이블 생성 SQL */
CREATE TABLE SVN1100
(
LIC_GRP_ID VARCHAR2(23) NOT NULL  , 
SVN_REP_ID VARCHAR2(16) NOT NULL  , 
PRJ_ID VARCHAR2(16) NOT NULL  , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_SVN1100 PRIMARY KEY(LIC_GRP_ID , SVN_REP_ID , PRJ_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;

/* SVN1200 테이블 생성 SQL */
CREATE TABLE SVN1200
(
PRJ_ID VARCHAR2(16) NOT NULL  , 
SVN_REP_ID VARCHAR2(16) NOT NULL  , 
AUTH_GRP_ID VARCHAR2(16) NOT NULL  , 
REG_DTM DATE , 
REG_USR_ID VARCHAR2(20) , 
REG_USR_IP VARCHAR2(39) , 
MODIFY_DTM DATE , 
MODIFY_USR_ID VARCHAR2(20) , 
MODIFY_USR_IP VARCHAR2(39) , 

CONSTRAINT PK_SVN1200 PRIMARY KEY(PRJ_ID , SVN_REP_ID , AUTH_GRP_ID )
USING INDEX TABLESPACE TS_OSLITS_IDX01
)
TABLESPACE TS_OSLITS_DAT01;
