<%@page language="java" contentType="text/html; charset=GBK"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<html>
	<head>
		<title>�ɼ�</title>
	</head>

	<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">
		<p align="center">
			<br><br><br><br><br><br><br><br><br>�ɼ�
		</p>
		<f:view>
		<h:form>
		<h:inputHidden id="id" value="#{enrolBean.enrol}" />
		<table border="1" align="center" width='85%'>
			<tr>
				<td width="30%">
					ѧ��
				</td>
				<td width="30%">
					�ɼ�
				</td>
			</tr>
			<tr>
			    <td><h:inputText id="student" value="#{enrolBean.enrol.student.id}" /></td>
			    <td><h:inputText id="accept" value="#{enrolBean.accept}" /></td>			
			</tr>
			<tr>
			    <td colspan="2" align="center"><h:commandButton action="#{enrolBean.updateEnrol}" value="ȷ��"/></td>
			</tr>
		</table>
		</h:form>
		</f:view>
		<p>
			&nbsp;
		</p>
		<p>
			<a href="teacher.jsp">&lt;&lt;Back </a>
		</p>
	</body>
</html>
