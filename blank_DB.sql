/*
 * build script to create FAS system DB
 * 
 */

CREATE  TABLE `springfas`.`question_details` (
  `questn_ID` INT NOT NULL ,
  `questn_spec` VARCHAR(45) NULL ,
  `questn_type` VARCHAR(45) NULL ,
  `answer` VARCHAR(45) NULL ,
  PRIMARY KEY (`questn_ID`) ); ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1
  
ALTER TABLE `springfas`.`question_details` ADD COLUMN `question_detailscol` VARCHAR(45) NULL  AFTER `answer` ;

/******END OF question_details table CREATION******/

/*************************************************/

CREATE TABLE `question_type` (
  `questn_type_ID` int(11) NOT NULL AUTO_INCREMENT,
  `question_typecol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`questn_type_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1

INSERT INTO `springfas`.`question_type` (`questn_type_ID`, `question_typecol`) VALUES (1, 'Multi_choice');
INSERT INTO `springfas`.`question_type` (`questn_type_ID`, `question_typecol`) VALUES (2,'Text');

/******END OF question_type table CREATION******/


CREATE TABLE `USER` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `loginname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1

CREATE  TABLE `springfas`.`product_details` (
  `prod_ID` INT NOT NULL ,
  `prod_spec` VARCHAR(45) NULL ,
  `prod_type` VARCHAR(45) NULL ,
  `prod_status` VARCHAR(45) NULL ,
  PRIMARY KEY (`prod_ID`) );
  
  
  CREATE  TABLE `springfas`.`survey_details` (
  `surv_ID` INT NOT NULL ,
  `surv_spec` VARCHAR(45) NULL ,
  `surv_type` VARCHAR(45) NULL ,
  `surv_analy` VARCHAR(45) NULL ,
  PRIMARY KEY (`surv_ID`) );

  CREATE  TABLE `springfas`.`customer_details` (
  `cust_ID` INT NOT NULL ,
  `cust_name` VARCHAR(45) NULL ,
  `req_status` VARCHAR(45) NULL ,
  `cust_type` VARCHAR(45) NULL ,
  `cust_address` VARCHAR(45) NULL ,
  PRIMARY KEY (`cust_ID`) );

  CREATE  TABLE `springfas`.`employee_details` (
  `emp_ID` INT NOT NULL ,
  `emp_name` VARCHAR(45) NULL ,
  `emp_design` VARCHAR(45) NULL ,
  `emp_dept` VARCHAR(45) NULL ,
  PRIMARY KEY (`emp_ID`) );