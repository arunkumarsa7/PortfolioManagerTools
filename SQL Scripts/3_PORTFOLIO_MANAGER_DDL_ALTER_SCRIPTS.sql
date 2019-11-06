ALTER TABLE `COUNTRY` ADD CONSTRAINT UN_COUNTRY_CODE_NAME UNIQUE (CODE, NAME);

ALTER TABLE `USER` ADD CONSTRAINT UN_USER_FIRST_USER_NAME UNIQUE (FIRST_NAME, USER_NAME);

ALTER TABLE `USER_ROLE_MAP` ADD CONSTRAINT UN_USER_ROLE_MAP_USER_ROLE UNIQUE (USER_ID, USER_ROLE_ID);

ALTER TABLE `ORGANIZATION` ADD CONSTRAINT FK_ORGANIZATION_COUNTRY_ID FOREIGN KEY (`OPERATING_ENTITY_ID`) REFERENCES `OPERATING_ENTITY` (`ID`);

ALTER TABLE `OPERATING_ENTITY` ADD CONSTRAINT FK_OPERATING_ENTITY_COUNTRY_ID FOREIGN KEY (`COUNTRY_ID`) REFERENCES `COUNTRY` (`ID`);

ALTER TABLE `SERVICE_OFFERING` ADD CONSTRAINT FK_SERVICE_OFFERING_OPERATING_ENTITY_ID FOREIGN KEY (`OPERATING_ENTITY_ID`) REFERENCES `OPERATING_ENTITY` (`ID`);

ALTER TABLE `PORTFOLIO` ADD CONSTRAINT FK_PORTFOLIO_SERVICE_OFFERING_ID FOREIGN KEY (`SERVICE_OFFERING_ID`) REFERENCES `SERVICE_OFFERING` (`ID`);

ALTER TABLE `PROJECT` ADD CONSTRAINT FK_PROJECT_PORTFOLIO_ID FOREIGN KEY (`PORTFOLIO_ID`) REFERENCES `PORTFOLIO` (`ID`);
ALTER TABLE `PROJECT` ADD CONSTRAINT FK_PROJECT_SERVIVE_OWNER_IT_ID FOREIGN KEY (`SERVIVE_OWNER_IT_ID`) REFERENCES `USER_CONTACT` (`ID`);
ALTER TABLE `PROJECT` ADD CONSTRAINT FK_PROJECT_SERVIVE_OWNER_BUSINESS_ID FOREIGN KEY (`SERVIVE_OWNER_BUSINESS_ID`) REFERENCES `USER_CONTACT` (`ID`);
ALTER TABLE `PROJECT` ADD CONSTRAINT FK_PROJECT_SERVIVE_MANAGER_ID FOREIGN KEY (`SERVIVE_MANAGER_ID`) REFERENCES `USER_CONTACT` (`ID`);

ALTER TABLE `KPI` ADD CONSTRAINT FK_KPI_KPI_MASTER_ID FOREIGN KEY (`KPI_MASTER_ID`) REFERENCES `KPI_MASTER` (`ID`);
ALTER TABLE `KPI` ADD CONSTRAINT FK_KPI_PROJECT_ID FOREIGN KEY (`PROJECT_ID`) REFERENCES `PROJECT` (`ID`);

ALTER TABLE `KPI_DATA` ADD CONSTRAINT FK_KPI_DATA_KPI_ID FOREIGN KEY (`KPI_ID`) REFERENCES `KPI` (`ID`);

ALTER TABLE `USER_CONTACT` ADD CONSTRAINT FK_USER_CONTACT_USR_ID FOREIGN KEY (`USER_ID`) REFERENCES `USER` (`ID`);

ALTER TABLE `USER_ROLE_MAP` ADD CONSTRAINT FK_USER_ROLE_MAP_USR_ID FOREIGN KEY (`USER_ID`) REFERENCES `USER` (`ID`);
ALTER TABLE `USER_ROLE_MAP` ADD CONSTRAINT FK_USER_ROLE_MAP_USER_ROLE_ID FOREIGN KEY (`USER_ROLE_ID`) REFERENCES `USER_ROLE` (`ID`);