DROP DATABASE IF EXISTS `labRoomManager`;
CREATE DATABASE `labRoomManager` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `labRoomManager`;

/*����Ա��*/
CREATE TABLE `admin` (                  
          `id`   varchar(32)       NOT NULL,              /*����Ա���*/   
          `name` varchar(32)     default NULL,      
          `password` varchar(32) NOT NULL,  
		  `registerTime` datetime    default NULL,
          PRIMARY KEY  (`id`)                   
        );
	
insert into `admin`  values ('01', 'admin', 'admin', '2015-10-25 08:05:10');

/*ѧ����*/		
CREATE TABLE `student` (                  
           `id`           varchar(32) NOT NULL,      /*ѧ�����*/
           `name`         varchar(32) default NULL,        
           `password`     varchar(32) NOT NULL,    
           `departmentId` varchar(32) NOT NULL, 
		   `classes`      varchar(32) NOT NULL,       /*�༶*/
           `money`        decimal(10,2)     NOT NULL,                  
           `registerTime` datetime    default NULL,             
           PRIMARY KEY  (`id`)                     
         );
		 
insert into `student` values ('1001', 'stu', '123', '11006', '1', '100', '2015-10-25 08:05:10');
insert into `student` values ('1002', 'stu2', '123', '11006', '1', '200', '2015-10-25 09:05:10');
insert into `student` values ('1003', 'stu3', '123', '11004', '2', '100', '2015-10-26 10:05:10');

/*��ʦ��*/			 
CREATE TABLE `teacher` (                
           `id`       varchar(32) NOT NULL,          /*��ʦ���*/  
           `name`     varchar(32) default NULL,      /*����*/
           `password` varchar(32) NOT NULL,          /*����*/
		   `departmentId` varchar(32) NOT NULL,      /*Ժϵ���*/ 
		   `registerTime` datetime    default NULL,  /*ע��ʱ��*/
           PRIMARY KEY  (`id`)                   
         );

insert into `teacher` values('133', 'tea', '123','11006','2015-10-25 08:05:10');
insert into `teacher` values('134', 'tea2', '123','11006','2015-10-26 08:05:10');
		 
/*ʵ���ұ�*/		 
CREATE TABLE `labRoom` (                
           `id`          varchar(32) NOT NULL,        /*�������*/ 
		   `capacity`    varchar(32) NOT NULL,        /*���������ɵ�����*/
		   `computerNum` varchar(32) NOT NULL default '0',    /*ʵ�ʵ�������,��������*/
		   `peopleNum`   varchar(32) NOT NULL default '0',    /*��ǰ����*/
		   `cost`        decimal(10,2)     NOT NULL,           /*ÿ���Ӷ���Ԫ*/
           PRIMARY KEY  (`id`),
			check (`status` in ('0','1'))		   
         );	
		 
insert into `labRoom` values('A', '30', '30','1','0.2');

/*���Ա�*/				 
CREATE TABLE `computer` (                
           `roomId`  varchar(32) NOT NULL,       /*�������*/ 
		   `id`      varchar(32) NOT NULL,       /*���Ա��*/ 
		   `status`  varchar(2)  NOT NULL default '1',   /*����״̬ 0�������ã�1������*/
           PRIMARY KEY  (`roomId`,`id`),
		   FOREIGN KEY (`roomId`) REFERENCES `labRoom` (`id`),
		   check (`status` in ('0','1'))
         );
		 
insert into `computer` values('A', '2','1');
		
/*�ϻ���*/
CREATE TABLE `computerUse` (
		  `stuId`      varchar(32) NOT NULL, 			 /*ѧ�����*/
          `roomId`     varchar(32) NOT NULL,             /*ʵ���ұ��*/     
          `computerId` varchar(32) NOT NULL,             /*���Ա��*/
          `startTime`  datetime    NOT NULL, 
		  `endTime`    datetime    NOT NULL, 
		  `duration`   varchar(32) NOT NULL,             /*ʱ��*/
		  `cost`       decimal(10,2) NOT NULL,           /*����*/
		  FOREIGN KEY (`stuId`) REFERENCES `student` (`id`),
		  FOREIGN KEY (`roomId`,`computerId`) REFERENCES `computer` (`roomId`,`id`)
        );
	
insert into `computerUse` values('1001','A', '2', '2015-10-25 08:05:10','2015-10-25 08:07:10','2','0.4');
insert into `computerUse` values('1001','A', '2', '2015-10-26 08:05:10','2015-10-26 08:07:10','2','0.4');

/*��ֵ��*/	
CREATE TABLE `rechargeList` (                
          `stuId` varchar(32)        NOT NULL,               /*ѧ�����*/       
          `money` decimal(10,2)      NOT NULL,               /*��ֵ���*/
		  `rechargetime`  datetime   default NULL,			 /*��ֵʱ��*/
		  FOREIGN KEY (`stuId`) REFERENCES `student` (`id`)	  
        );

insert into `rechargeList` values('1001','100', '2015-10-25 08:05:10');
insert into `rechargeList` values('1001','100', '2015-10-25 08:05:11');
		
/*�γ̱�*/				 
CREATE TABLE `course` (
          `id` varchar(32)           NOT NULL,               /*�γ̱��*/       
          `name` varchar(32)         default NULL,           /*�γ�����*/
		  `departmentId` varchar(32) NOT NULL,               /*Ժϵ���*/
		  `credit` int      NOT NULL,                        /*ѧ��*/ 
		  `stuNumber`    varchar(32) NOT NULL,               /*�Ͽ����������������*/
          PRIMARY KEY  (`id`)	  
        );

insert into `course` values('1000100','�߼���·ʵ��','11006', '4','100');
insert into `course` values('1000102','�������','11006', '4','100');
insert into `course` values('1000103','java����','11006', '4','100');
insert into `course` values('1000104','c++����','11006', '4','100');		
/*�α�*/				 
CREATE TABLE `courseList` (
		  `teacherId`    varchar(32) NOT NULL,       /*��ʦ���*/        
          `courseId`     varchar(32) NOT NULL,       /*�γ̱��*/     
		  `roomId`       varchar(32) NOT NULL,       /*ʵ���ұ��*/     
		  `startTime`    varchar(32) NOT NULL,          /*�Ͽο�ʼʱ��*/
		  `endTime`      varchar(32) NOT NULL,           /*�Ͽν���ʱ��*/
		  PRIMARY KEY  (`teacherId`,`courseId`),
		  FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`id`),
		  FOREIGN KEY (`courseId`) REFERENCES `course` (`id`),
		  FOREIGN KEY (`roomId`) REFERENCES `labRoom` (`id`) 
        );
insert into `courseList` values('133','1000100','A', '08:00:00','10:00:00');
insert into `courseList` values('134','1000100','A', '10:00:00','12:00:00');
insert into `courseList` values('133','1000102','A', '14:00:00','16:00:00');		
		
		
		