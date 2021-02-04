-- liquibase formatted sql
-- changeset
-- comment: CREATE OR REPLACE TABLEs for the Java Development Challenge

-- This table used to contains carrier network such as: vietnamobile, T-mobile, Viettel, Mobifone
CREATE OR REPLACE TABLE CARRIER_NETWORK
(
    CARRIER_NETWORK_ID                         INT AUTO_INCREMENT        NOT NULL,
    CARRIER_NAME                               VARCHAR(100)              NOT NULL,
    DESCRIPTION                                VARCHAR(255)              NULL,
    CONSTRAINT PK_CARRIER_NETWORK PRIMARY KEY (CARRIER_NETWORK_ID)
);

-- This table used to contains information about capacity data packages: 1GB-high, 500MB-low, 2GB-high, 5GB-low
CREATE OR REPLACE TABLE CAPACITY
(
    CAPACITY_ID                                INT AUTO_INCREMENT        NOT NULL,
    CAPACITY_NAME                              VARCHAR(100)              NOT NULL,
    BANDWIDTH                                  VARCHAR(100)              NOT NULL,
    DESCRIPTION                                VARCHAR(255)              NULL,
    CONSTRAINT PK_CAPACITY PRIMARY KEY (CAPACITY_ID)
);

-- This table used to contains data plan: 30 days data - 20$, 15 days data - 10$
CREATE OR REPLACE TABLE DATA_PLAN
(
    DATA_PLAN_ID                          INT AUTO_INCREMENT        NOT NULL,
    CARRIER_NETWORK_ID                    INT                       NOT NULL,
    CAPACITY_ID                           INT                       NOT NULL,
    DATA_PLAN_NAME                        VARCHAR(100)              NOT NULL,
    PRICE                                 DECIMAL(17,2)             NOT NULL,
    CONSTRAINT PK_DATA_PLAN PRIMARY KEY (DATA_PLAN_ID),
    CONSTRAINT FK_DATA_PLAN_CARRIER_NETWORK FOREIGN KEY (CARRIER_NETWORK_ID)
            REFERENCES CARRIER_NETWORK (CARRIER_NETWORK_ID),
    CONSTRAINT FK_DATA_PLAN_CAPACITY FOREIGN KEY (CAPACITY_ID)
            REFERENCES CAPACITY (CAPACITY_ID)
);
CREATE OR REPLACE INDEX IX_FK_DATA_PLAN_CARRIER_NETWORK on DATA_PLAN(DATA_PLAN_ID);
CREATE OR REPLACE INDEX IX_FK_DATA_PLAN_CAPACITY on DATA_PLAN(CAPACITY_ID);

-- This table used to contains order detail: 30 days data - 20$ - 1 - 0927096740 - Feb 02, 2021 - 1$
CREATE OR REPLACE TABLE ORDER_DETAIL
(
    ORDER_DETAIL_ID                       INT AUTO_INCREMENT        NOT NULL,
    DATA_PLAN_ID                          INT                       NOT NULL,
    QUANTITY                              TINYINT                   NOT NULL,
    MOBILE_NUMBER                         VARCHAR(20)               NOT NULL,
    ORDER_DATE                            DATETIME                  NOT NULL,
    TRANSACTION_COST                      DECIMAL(10,2)             NOT NULL,
    TOTAL                                 DECIMAL(17,2)             NOT NULL,
    CONSTRAINT PK_ORDER_DETAIL PRIMARY KEY (ORDER_DETAIL_ID),
    CONSTRAINT FK_ORDER_DETAIL_DATA_PLAN FOREIGN KEY (DATA_PLAN_ID)
            REFERENCES DATA_PLAN (DATA_PLAN_ID)
);
CREATE OR REPLACE INDEX IX_FK_ORDER_DETAIL_DATA_PLAN on ORDER_DETAIL(DATA_PLAN_ID);

-- This table used to contains information about voucher code
CREATE OR REPLACE TABLE VOUCHER_CODE
(
    VOUCHER_CODE_ID                       INT AUTO_INCREMENT        NOT NULL,
    ORDER_DETAIL_ID                       INT                       NOT NULL,
    VOUCHER_CODE                          VARCHAR(20)               NOT NULL,
    ISSUE_DATE                            DATETIME                  NOT NULL,
    STATUS                                VARCHAR(10)               NOT NULL,
        CONSTRAINT CKC_VOUCHER_CODE_STATUS CHECK(STATUS IN('SUCCESS','PENDING', 'FAILURE')),
    CONSTRAINT PK_VOUCHER_CODE PRIMARY KEY (VOUCHER_CODE_ID),
    CONSTRAINT FK_VOUCHER_CODE_ORDER_DETAIL FOREIGN KEY (ORDER_DETAIL_ID)
            REFERENCES ORDER_DETAIL (ORDER_DETAIL_ID)
);
