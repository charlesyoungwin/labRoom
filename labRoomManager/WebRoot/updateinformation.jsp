<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page import="java.sql.*,com.stuman.domain.Student,com.stuman.dao.StudentDAO,com.stuman.dao.DAOFactory"%>
<jsp:directive.page import="com.stuman.dao.imp.HibernateDAOFactory"/>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>


<html>
	<head>
		<title>�޸�ѧ����Ϣ</title>
		<link href="css/inner.css" rel="stylesheet" type="text/css"> 
	</head>
	<body>
	
	<div id="Header">

		









 

<div id="Logo"><a href="student/index.do#"><img src="image/student/Logo_Student.jpg" border="0"></a></div>

<div id="TopLink"><img src="image/Icon_Help.gif"><a href="student/index.do#">����</a>&nbsp;&nbsp;&nbsp;&nbsp;<img src="image/Icon_Exit.gif"><a href="exit.do?type=student">�˳�</a></div>

<div id="UserInfo">��ӭ����������&nbsp;&nbsp;&nbsp;&nbsp;��ǰ��ݣ�ѧ��</div>

		

<script type="text/javascript" language="javascript" src="js/prototype.js"></script>

<div id="Nav">

  <ul>

    <li id="homepage"><a href="student/index.do">��  ҳ</a></li>

    <li id="studentinfo"><a href="student/studentinfo/index.do">������Ϣ</a></li>

    <li id="teachinginfo"><a href="student/teachinginfo/index.do">��ѧ��Ϣ</a></li>

    <li id="teachinginfo"><a href="student/elective/index.do">ѧ��ѡ��</a></li>

    <li id="teachinginfo"><a href="student/signup/index.do">����ϵͳ</a></li>

    <li id="studentinfo"><a href="student/dissertation/index.do">������Ϣ</a></li>

    <li id="studentinfo"><a href="student/evalcourse/list.do">�γ�����</a></li>

    <li id="studentinfo"><a href="student/exchange/index.do">У�ʽ���</a></li>    	

  </ul>

</div>

	</div>

	









<div id="Function">

    <ul>

	  <li><a href="student/studentinfo/studentinfo.do?method=searchAllList"><img src="image/student/info/personal.png"><br />ѧ����Ϣ</a></li>

	  <li><a href="student/studentinfo/achievementinfo.do?method=searchTermList"><img src="image/student/info/achievement.png"><br />�ɼ��鿴</a></li>

	  <li><a href="student/studentinfo/achievementinfo.do?method=searchPayment"><img src="image/student/info/recondition.png"><br />ȷ�Ͻɷ�</a></li>

	  <li><a href="student/studentinfo/reconditioninfo.do?method=searchReconditionInfo"><img src="image/student/info/recondition.png"><br />��������</a></li>

	   <li><a href="student/studentinfo/achievementinfo.do?method=giveupCourseList"><img src="image/student/info/recondition.png"><br />�ɼ�ע��</a></li>

	  <!-- <li>

	  	<a href="student/studentinfo/complementinfo.do?method=searchComplementInfo"><img src="image/student/info/complement.png"><br />��������</a>

	  	</li> 

	  -->

	   

	   

	  	<li><a href="student/iotarget/ioTargetApply.do?method=getIOTargetList"><img src="image/student/elective/elective_gym.png"><br />רҵ����</a></li>

	  

	  <li><a href="student/studentinfo/modifyPassword.do"><img src="image/student/info/password.png"><br />�޸�����</a></li>

	</ul>

</div>

<div class="Line"></div>
	
	<f:view>
		<p align="center">
			<br><br><br><br><br><br><br><br>�޸���Ϣ
		</p>
		<%--<h:form method="post" action="editStudent2.do?student_id=<%=stu_id%>">
		--%>
		<h:form>
			<table width="49%" height="50" border="1" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td>
						����
					</td>
					<td>
						<h:inputSecret id="password" value="#{studentBean.student.password}" />
					</td>
				</tr>
				<tr>
					<td>
						ȷ������
					</td>
					<td>
						<h:inputSecret id="password1" value="#{studentBean.password}" />
					</td>
				</tr>
				<tr>
					<td>
						�绰
					</td>
					<td>
						<h:inputText id="tel" value="#{studentBean.student.tel}" />
					</td>
				</tr>
				<tr>
					<td>
						�ʼ���ַ
					</td>
					<td>
						<h:inputText id="email" value="#{studentBean.student.email}" />
					</td>
				</tr>
				
				
			</table>
			<p align="center">
				<h:commandButton action="#{studentBean.editStudentByAdmin}" id="Submit" value="�ύ"/>
			</p>
		</h:form>
		<p>
			<a href="student.faces">&lt;&lt;Back</a>
		</p>
		</f:view>
	</body>
</html>
