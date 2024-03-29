INSERT INTO COUNTRY(ID, CODE, NAME) VALUES (1, 'DE', 'Germany');
INSERT INTO COUNTRY(ID, CODE, NAME) VALUES (2, 'GB', 'United Kingdom');
INSERT INTO COUNTRY(ID, CODE, NAME) VALUES (3, 'US', 'United States of America');
INSERT INTO COUNTRY(ID, CODE, NAME) VALUES (4, 'AU', 'Australia');
INSERT INTO COUNTRY(ID, CODE, NAME) VALUES (5, 'ZA', 'South Africa');
INSERT INTO COUNTRY(ID, CODE, NAME) VALUES (6, 'LK', 'Sri Lanka');
INSERT INTO COUNTRY(ID, CODE, NAME) VALUES (7, 'IN', 'India');

INSERT INTO USER_ROLE(ID, NAME, DESCRIPTION, PRIORITY, ACTIVE) VALUES (1, 'ADMIN', 'ADMIN', 1, True);
INSERT INTO USER_ROLE(ID, NAME, DESCRIPTION, PRIORITY, ACTIVE) VALUES (2, 'MANAGER', 'MANAGER', 2, True);
INSERT INTO USER_ROLE(ID, NAME, DESCRIPTION, PRIORITY, ACTIVE) VALUES (3, 'USER', 'USER', 3, True);
INSERT INTO USER_ROLE(ID, NAME, DESCRIPTION, PRIORITY, ACTIVE) VALUES (4, 'TESTER', 'TESTER', 4, True);
INSERT INTO USER_ROLE(ID, NAME, DESCRIPTION, PRIORITY, ACTIVE) VALUES (5, 'TESTER22', 'TESTER22', 4, True);

INSERT INTO USER(ID, FIRST_NAME, LAST_NAME, USER_NAME, PASSWORD) VALUES (1, 'Christian', 'Blaim', 'christianblaim', '$2a$10$vAkBEz7Svydi2PjMLUzDQuTFlps5relS0jUNG9D4amSe3d28gstgS');
INSERT INTO USER(ID, FIRST_NAME, LAST_NAME, USER_NAME, PASSWORD) VALUES (2, 'Claudia', 'Santacroce', 'claudiasantacroce', '$2a$10$SqK0EcXNcHuoSxDihwU5HuMn55Sdwvh7zx5OIYDNtpvKZWhsrm7RS');
INSERT INTO USER(ID, FIRST_NAME, LAST_NAME, USER_NAME, PASSWORD) VALUES (3, 'Reinhold', 'Bauer', 'reinholdbauer', '$2a$10$D61Ydz78tdeM38ZcteYxi.BPgeptSwjtAMrKpql5k6l3x/SCL8Ety');
INSERT INTO USER(ID, FIRST_NAME, LAST_NAME, USER_NAME, PASSWORD) VALUES (4, 'Thomas', 'Motsch', 'thomasmotsch', '$2a$10$yPjuK/YdwqZKtqkP/TGoNewVp2Xqj5JUsQxl3IdiB.rwsX26ZRrmO');
INSERT INTO USER(ID, FIRST_NAME, LAST_NAME, USER_NAME, PASSWORD) VALUES (5, 'Viktor', 'Mueller', 'viktormueller', '$2a$10$3GG3fwFEow9sAGe91LoxAeE9UxvT2BUOs3hCt4t5s01B1Y.b5WcFK');
INSERT INTO USER(ID, FIRST_NAME, LAST_NAME, USER_NAME, PASSWORD) VALUES (6, 'Stefan', 'Von Fumetti', 'stefanfumetti', '$2a$10$Rzi/wxps/BJK2gwfPBxJEuyWfzRnVNQ7GfKXnbYoGkXg7/pgUi/ES');
INSERT INTO USER(ID, FIRST_NAME, LAST_NAME, USER_NAME, PASSWORD) VALUES (7, 'Admin', 'Admin', 'admin', '$2a$10$wlxjLKgbGM59kmxk76V9ZeKWXkOUM/r2SpqCm7rIFNZ.OZtHokEHO');

INSERT INTO USER_ROLE_MAP(ID, USER_ID, USER_ROLE_ID) VALUES (1, 1, 2);
INSERT INTO USER_ROLE_MAP(ID, USER_ID, USER_ROLE_ID) VALUES (2, 2, 2);
INSERT INTO USER_ROLE_MAP(ID, USER_ID, USER_ROLE_ID) VALUES (3, 3, 2);
INSERT INTO USER_ROLE_MAP(ID, USER_ID, USER_ROLE_ID) VALUES (4, 4, 2);
INSERT INTO USER_ROLE_MAP(ID, USER_ID, USER_ROLE_ID) VALUES (5, 5, 2);
INSERT INTO USER_ROLE_MAP(ID, USER_ID, USER_ROLE_ID) VALUES (6, 6, 2);
INSERT INTO USER_ROLE_MAP(ID, USER_ID, USER_ROLE_ID) VALUES (7, 7, 1);

INSERT INTO USER_CONTACT(ID, EMAIL, PHONE_NUMBER, USER_ID) VALUES (1, 'user1@test.com', '00123456789', 1);
INSERT INTO USER_CONTACT(ID, EMAIL, PHONE_NUMBER, USER_ID) VALUES (2, 'user2@test.com', '00123456789', 2);
INSERT INTO USER_CONTACT(ID, EMAIL, PHONE_NUMBER, USER_ID) VALUES (3, 'user3@test.com', '00123456789', 3);
INSERT INTO USER_CONTACT(ID, EMAIL, PHONE_NUMBER, USER_ID) VALUES (4, 'user4@test.com', '00123456789', 4);
INSERT INTO USER_CONTACT(ID, EMAIL, PHONE_NUMBER, USER_ID) VALUES (5, 'user5@test.com', '00123456789', 5);
INSERT INTO USER_CONTACT(ID, EMAIL, PHONE_NUMBER, USER_ID) VALUES (6, 'user7@test.com', '00123456789', 6);
INSERT INTO USER_CONTACT(ID, EMAIL, PHONE_NUMBER, USER_ID) VALUES (7, 'admin@test.com', '00123456789', 7);

INSERT INTO OPERATING_ENTITY(ID, NAME, COUNTRY_ID) VALUES (1, 'Allianc Technology DE', 1);
INSERT INTO OPERATING_ENTITY(ID, NAME, COUNTRY_ID) VALUES (2, 'Allianc Technology UK', 2);
INSERT INTO OPERATING_ENTITY(ID, NAME, COUNTRY_ID) VALUES (3, 'Allianc Technology US', 3);
INSERT INTO OPERATING_ENTITY(ID, NAME, COUNTRY_ID) VALUES (4, 'Allianc Technology AU', 4);
INSERT INTO OPERATING_ENTITY(ID, NAME, COUNTRY_ID) VALUES (5, 'Allianc Technology ZA', 5);
INSERT INTO OPERATING_ENTITY(ID, NAME, COUNTRY_ID) VALUES (6, 'Allianc Technology SL', 6);
INSERT INTO OPERATING_ENTITY(ID, NAME, COUNTRY_ID) VALUES (7, 'Allianc Technology IN', 7);

INSERT INTO ORGANIZATION(ID, NAME, DESCRIPTION, OPERATING_ENTITY_ID) VALUES (1, 'Allianc Technology SE', 'Az Tech', 1);

INSERT INTO SERVICE_OFFERING(ID, NAME, DESCRIPTION, BUSINESS_WEIGHTAGE, OPERATING_ENTITY_ID) VALUES (1, 'AD&M', 'Application Development and Maintenance', 40, 1);
INSERT INTO SERVICE_OFFERING(ID, NAME, DESCRIPTION, BUSINESS_WEIGHTAGE, OPERATING_ENTITY_ID) VALUES (2, 'Service Offering 2', 'Test Service Offering', 50, 1);
INSERT INTO SERVICE_OFFERING(ID, NAME, DESCRIPTION, BUSINESS_WEIGHTAGE, OPERATING_ENTITY_ID) VALUES (3, 'Service Offering 3', 'Test Service Offering', 60, 1);
INSERT INTO SERVICE_OFFERING(ID, NAME, DESCRIPTION, BUSINESS_WEIGHTAGE, OPERATING_ENTITY_ID) VALUES (4, 'Service Offering 4', 'Test Service Offering', 70, 1);

INSERT INTO PORTFOLIO(ID, NAME, DESCRIPTION, SOLUTION, PORTFOLIO_MODEL, BUSINESS_WEIGHTAGE, SERVICE_OFFERING_ID) VALUES (1, 'ABBS', 'ABBS for Deu', 'ABS', 'Staff Augumentation', 70, 1);
INSERT INTO PORTFOLIO(ID, NAME, DESCRIPTION, SOLUTION, PORTFOLIO_MODEL, BUSINESS_WEIGHTAGE, SERVICE_OFFERING_ID) VALUES (2, 'Project 2', 'ABBS for Deu', 'ABS', 'Staff Augumentation', 80, 1);
INSERT INTO PORTFOLIO(ID, NAME, DESCRIPTION, SOLUTION, PORTFOLIO_MODEL, BUSINESS_WEIGHTAGE, SERVICE_OFFERING_ID) VALUES (3, 'Project 3', 'ABBS for Deu', 'ABS', 'Staff Augumentation', 90, 1);
INSERT INTO PORTFOLIO(ID, NAME, DESCRIPTION, SOLUTION, PORTFOLIO_MODEL, BUSINESS_WEIGHTAGE, SERVICE_OFFERING_ID) VALUES (4, 'Project 4', 'ABBS for Deu', 'ABS', 'Staff Augumentation', 60, 1);

INSERT INTO PROJECT(ID, NAME, DEPARTMENT, HEAD_COUNT, BUSINESS_WEIGHTAGE, DEVELOPMENT_METHODOLOGY, DESCRIPTION, SERVIVE_OWNER_IT_ID, SERVIVE_MANAGER_ID, PORTFOLIO_ID) VALUES (1, 'Kraft', 'CP05PAC', 10, 60, 'Scrum', 'Kraft team enhances the functionality of ABS to accommodate new motor-products, as well as maintain existing products. It is a staff augmentation project, where team works on the code developed by Allianc Deutschland team.Team is not involved in any of the Business requirement and Software Design discussions as project decisions like design, infrastructure, execution methodology, training and resource hiring are defined by Deutschland.', 1, 2, 1);
INSERT INTO PROJECT(ID, NAME, DEPARTMENT, HEAD_COUNT, BUSINESS_WEIGHTAGE, DEVELOPMENT_METHODOLOGY, DESCRIPTION, SERVIVE_OWNER_IT_ID, SERVIVE_MANAGER_ID, PORTFOLIO_ID) VALUES (2, 'Life', 'CP05PLM', 7, 30, 'Scrum', 'Leben team enhances the functionality of ABS to accommodate new life insurance products, as well as maintain existing products. It is a staff augmentation project, where team works on the code developed by Allianc Deutschland team.Team is not involved in any of the Business requirement and Software Design discussions as project decisions like design, infrastructure, execution methodology, training and resource hiring are defined by Deutschland.', 3, 4, 1);
INSERT INTO PROJECT(ID, NAME, DEPARTMENT, HEAD_COUNT, BUSINESS_WEIGHTAGE, DEVELOPMENT_METHODOLOGY, DESCRIPTION, SERVIVE_OWNER_IT_ID, SERVIVE_MANAGER_ID, PORTFOLIO_ID) VALUES (3, 'CFS', 'CP05IOWC1', 1, 10, 'Waterfall', 'CFS team enhances the JUnit coverage and functionality of ABS to accommodate new products, as well as maintain existing products. It is a staff augmentation project, where team works on the code developed by Allianc Deutschland team.Team is not involved in any of the Business requirement and Software Design discussions as project decisions like design, infrastructure, execution methodology, training and resource hiring are defined by Deutschland.', 5, 2, 1);
INSERT INTO PROJECT(ID, NAME, DEPARTMENT, HEAD_COUNT, BUSINESS_WEIGHTAGE, DEVELOPMENT_METHODOLOGY, DESCRIPTION, SERVIVE_OWNER_IT_ID, SERVIVE_MANAGER_ID, PORTFOLIO_ID) VALUES (4, 'PMS', 'CP05PMSP2', 2, 20, 'Scrum', 'Program management Migrations and Services recently started under ABBS portfolio.  PMS deals with batch support in the area of Contract (Policy processing ) and Claims (Post processing) of ABS Deutschland.Team has started delivering from India which focuses in the area of ABS policies and claims batch development.', 6, 2, 1);

INSERT INTO KPI_MASTER(ID, NAME, DESCRIPTION) VALUES (1, 'OnTimeDeliveryIndex', 'Delivering within the release plan');
INSERT INTO KPI_MASTER(ID, NAME, DESCRIPTION) VALUES (2, 'Defect Count', 'Delivering defects within the expected quantity');
INSERT INTO KPI_MASTER(ID, NAME, DESCRIPTION) VALUES (3, 'JUNIT Coverage', 'JUNIT Coverage 75%');

INSERT INTO KPI(ID, THRESHOLD_MAX, THRESHOLD_MIN, KPI_MASTER_ID, BUSINESS_WEIGHTAGE, PROJECT_ID) VALUES (1, 90, 70, 1, 80, 1);
INSERT INTO KPI(ID, THRESHOLD_MAX, THRESHOLD_MIN, KPI_MASTER_ID, BUSINESS_WEIGHTAGE, PROJECT_ID) VALUES (2, 10, 8, 2, 10, 1);
INSERT INTO KPI(ID, THRESHOLD_MAX, THRESHOLD_MIN, KPI_MASTER_ID, BUSINESS_WEIGHTAGE, PROJECT_ID) VALUES (3, 80, 70, 3, 10, 1);
INSERT INTO KPI(ID, THRESHOLD_MAX, THRESHOLD_MIN, KPI_MASTER_ID, BUSINESS_WEIGHTAGE, PROJECT_ID) VALUES (4, 90, 70, 1, 70, 2);
INSERT INTO KPI(ID, THRESHOLD_MAX, THRESHOLD_MIN, KPI_MASTER_ID, BUSINESS_WEIGHTAGE, PROJECT_ID) VALUES (5, 75, 70, 3, 100, 2);
INSERT INTO KPI(ID, THRESHOLD_MAX, THRESHOLD_MIN, KPI_MASTER_ID, BUSINESS_WEIGHTAGE, PROJECT_ID) VALUES (6, 90, 70, 1, 60, 3);
INSERT INTO KPI(ID, THRESHOLD_MAX, THRESHOLD_MIN, KPI_MASTER_ID, BUSINESS_WEIGHTAGE, PROJECT_ID) VALUES (7, 10, 8, 2, 40, 3);
INSERT INTO KPI(ID, THRESHOLD_MAX, THRESHOLD_MIN, KPI_MASTER_ID, BUSINESS_WEIGHTAGE, PROJECT_ID) VALUES (8, 90, 70, 1, 80, 4);

INSERT INTO KPI_DATA(ID, VALUE, COMMENTS, REPORTING_PERIOD, KPI_ID) VALUES (1, 70, 'Network outage', CURDATE(), 1);
INSERT INTO KPI_DATA(ID, VALUE, COMMENTS, REPORTING_PERIOD, KPI_ID) VALUES (2, 6, 'Low defect count Network outage', '2019-07-01 17:18:55', 2);
INSERT INTO KPI_DATA(ID, VALUE, COMMENTS, REPORTING_PERIOD, KPI_ID) VALUES (3, 60, 'Less coverage Network outage ', '2019-08-01 17:18:55', 3);
INSERT INTO KPI_DATA(ID, VALUE, COMMENTS, REPORTING_PERIOD, KPI_ID) VALUES (4, 70, 'Network outage', '2019-10-01 17:18:55', 4);
INSERT INTO KPI_DATA(ID, VALUE, COMMENTS, REPORTING_PERIOD, KPI_ID) VALUES (5, 6, 'Network outage', CURDATE(), 5);
INSERT INTO KPI_DATA(ID, VALUE, COMMENTS, REPORTING_PERIOD, KPI_ID) VALUES (6, 72, 'Workspace Issue', CURDATE(), 6);
INSERT INTO KPI_DATA(ID, VALUE, COMMENTS, REPORTING_PERIOD, KPI_ID) VALUES (7, 70, 'Network outage', CURDATE(), 7);
INSERT INTO KPI_DATA(ID, VALUE, COMMENTS, REPORTING_PERIOD, KPI_ID) VALUES (8, 6, 'Network outage', CURDATE(), 8);
