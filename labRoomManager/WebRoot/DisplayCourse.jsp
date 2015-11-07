<%@page language="java" contentType="text/html; charset=GBK"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<html>
	<head>
	    <meta http-equiv="cache-control" content="no-cache">
		<title>ѡ���γ�</title>
	    <link href="choose_course_images/inner.css" rel="stylesheet" type="text/css">  
	</head>
	
	<body>
<div id="Header">

<div id="Logo"><a href="student/index.do#"><img src="choose_course_images/Logo_Student.jpg" border="0"></a></div>
<div id="TopLink"><img src="choose_course_images/Icon_Help.gif"><a href="student/index.do#">����</a>&nbsp;&nbsp;&nbsp;&nbsp;<img src="choose_course_images/Icon_Exit.gif"><a href="exit.do?type=student">�˳�</a></div>
<div id="UserInfo">��ӭ����������&nbsp;&nbsp;&nbsp;&nbsp;��ǰ��ݣ�ѧ��</div>
<script type="text/javascript" language="javascript" src="js/prototype.js"></script>
<div id="Nav">
  <ul>
    <li id="homepage"><a href="student.faces">��  ҳ</a></li>
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
		<li><a href="student/elective/specialityCourseList.do"><img src="choose_course_images/elective_speciality.png"><br />רҵѡ��</a></li>
		<li><a href="student/elective/gymClassList.do"><img src="choose_course_images/elective_gym.png"><br />����ѡ��</a></li>
		<li><a href="student/select/index.do"><img src="choose_course_images/elective_public.png"><br />����ѡ��</a></li>
		<li><a href="student/elective/courseList.do?method=publicRenewCourseList"><img src="choose_course_images/elective_public_renew.png"><br />��ѡ�β�ѡ</a></li>
		<li><a href="student/elective/courseList.do?method=discussRenewCourseList"><img src="choose_course_images/recondition.png"><br />ͨʶ�β�ѡ</a></li>
		<li><a href="student/elective/courseList.do?method=openRenewCourseList"><img src="choose_course_images/elective_public_renew.png"><br />��רҵ��ѡ</a></li>
		<li><a href="student/elective/courseList.do?method=getElectiveResult"><img src="choose_course_images/elective_result.png"><br />�γ���ѡ</a></li>
	</ul>
</div>






<div class="Line"></div>
		<p align="center">
			<br><br><br><br><br><br><br><br><br>������ѡ���Ŀγ�Ϊ
		</p>
		<!--  <table border="1" align="center">
			<tr>
				<td width="54">
					�γ̺�
				</td>
				<td width="54">
					�γ���
				</td>
				<td width="57">
					Ԥ�޿�
				</td>
				<td width="58">
					ϵ��
				</td>
				<td width="59">
					�༶��
				</td>
				<td width="69">
					���Һ�
				</td>
				<td width="88">
					�Ͽ�ʱ��
				</td>
				<td width="88">
					��ʦ
				</td>
				<td width="83">
					ѡ��
				</td>
			</tr>
			<p>
			
		</table>-->
		<f:view>
		<h:form>
		<h:dataTable value="#{studentBean.courses}" var="course" border="1" width="75%">
        	<h:column>
        	    <f:facet name="header">
				    <h:outputText value="�κ�"/>
			    </f:facet>
            	<h:outputText value="#{course.id}"/>
        	</h:column>
        	<h:column>
        	    <f:facet name="header">
				    <h:outputText value="����"/>
				</f:facet>
            	<h:outputText value="#{course.name}"/>
        	</h:column>
        	<h:column>
        	    <f:facet name="header">
				    <h:outputText value="�༶��"/>
				</f:facet>
            	<h:outputText value="#{course.classes.id}"/>
        	</h:column>
        	<h:column>
        	    <f:facet name="header">
				    <h:outputText value="���Һ�"/>
				</f:facet>
            	<h:outputText value="#{course.classes.roomId}"/>
        	</h:column>
        	<h:column>
        	    <f:facet name="header">
				    <h:outputText value="�Ͽ�ʱ��"/>
				</f:facet>
            	<h:outputText value="#{course.classes.courTime}"/>
        	</h:column>
			<h:column>
			       <f:facet name="header">
				      <h:outputText value="ѡ��"/>
				   </f:facet>
				   <h:commandLink value="ע��" action="#{enrolBean.saveEnrol}"/>
		     </h:column>
    	</h:dataTable>
		</h:form>
		</f:view>
		<p>
			&nbsp;
		</p>
		<p>
			<a href="student.faces">&lt;&lt;Back </a>
		</p>
	</body>
</html>
