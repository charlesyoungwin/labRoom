<%@page language="java" contentType="text/html; charset=GBK"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<html>
	<head>
	    <meta http-equiv="cache-control" content="no-cache">
		<title>ѡ���γ�</title>
	    <link href="css/inner.css" rel="stylesheet" type="text/css">  
	</head>
	
	<body>
<div id="Header">

<div id="Logo"><a href="student.faces"><img src="images/Logo_Student.jpg" border="0"></a></div>
<div id="TopLink"><img src="images/Icon_Help.gif"><a href="student/index.do#">����</a>&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/Icon_Exit.gif"><a href="login.faces">�˳�</a></div>
<div id="UserInfo">~~��ӭ��~~</div>
<script type="text/javascript" language="javascript" src="js/prototype.js"></script>
<div id="Nav">
  <ul>
    <li id="homepage"><a href="student.faces">��  ҳ</a></li>
    <li id="studentinfo"><a href="stu_information.faces">������Ϣ</a></li>
    <li id="teachinginfo"><a href="stu_gradelook.faces">�ɼ��鿴</a></li>
    <li id="teachinginfo"><a href="stu_courseplan.faces">ѧ��ѡ��</a></li>  	
  </ul>
</div>
	</div>
<div id="Function">
	<ul>
		<li><a href="stu_3choosecourse.faces"><img src="images/elective_speciality.png"><br />ѡ��</a></li>
		<li><a href="stu_3coursechoosed.faces"><img src="images/elective_gym.png"><br />�鿴��ѡ�γ�</a></li>
		<li><a href="stu_3dropcourse.faces"><img src="images/elective_result.png"><br />�γ���ѡ</a></li>
	</ul>
</div>
	</body>
</html>
