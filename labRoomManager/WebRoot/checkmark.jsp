<%@page language="java" contentType="text/html; charset=GBK"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%> 
<html>
	<head>
		<title>�鿴�ɼ�</title>
	</head>
	<%
	String stuid = (String)session.getAttribute("stuid");
			%>
	<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">
		<br><br><br><br><br><br><br><p align="center">
			�����еĳɼ�
		</p>
		<!-- <table border="1" align="center" width='85%'>
			<tr>
				<td width="40%">
					�γ�����
				</td>
				<td width="30%">
					ѧ��
				</td>
				<td width="30%">
					�ɼ�
				</td>
			</tr>
			<p>
		</table> -->
		<f:view>
		<h:form>
		<h:dataTable value="#{enrolBean.enrols}" var="enrol" border="1" width="75%">
        	<h:column>
        	    <f:facet name="header">
				      <h:outputText value="�γ�����"/>
				 </f:facet>
            	<h:outputText value="#{enrol.id}"/>
        	</h:column>
        	<h:column>
                <f:facet name="header">
				      <h:outputText value="ѧ��"/>
				</f:facet>
            	<h:outputText value="#{enrol.classes}"/>
        	</h:column>
        	<h:column>
        	     <f:facet name="header">
				      <h:outputText value="�ɼ�"/>
				 </f:facet>
            	<h:outputText value="#{enrol.score}"/>
        	</h:column>
        	
    	</h:dataTable>
		</h:form>
		</f:view>
		<p>
			<a href="student.faces">&lt;&lt;Back </a>
		</p>
	</body>
</html>
