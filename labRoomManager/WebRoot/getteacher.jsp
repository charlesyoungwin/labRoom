<%@page language="java" contentType="text/html; charset=GBK"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<html>
	<head>
		<title>��ʦ</title>
	</head>
	<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">
	<f:view>
		<p align="center"><br><br><br><br><br><br><br><br>���н�ʦ</p>
		<p align=right>
			<a href="addteacher.faces">������ʦ</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</p>
		<h:form>
		<h:dataTable value="#{teacherBean.teachers}" var="teacher" border="1" width="75%">
        	<h:column>
            	<h:outputText value="#{teacher.id}"/>
        	</h:column>
        	<h:column>
            	<h:outputText value="#{teacher.name}"/>
        	</h:column>
        	<h:column>
            	<h:outputText value="#{teacher.password}"/>
        	</h:column>
        	<h:column>
            	<h:outputText value="#{teacher.title}"/>
        	</h:column>
        	<h:column>
			        <f:facet name="header">
				      <h:outputText value="ɾ��"/>
				    </f:facet>
				    <h:commandLink value="ɾ��" action="#{teacherBean.deleteTeacher}"/>
				  </h:column>
			    <h:column>
			        <f:facet name="header">
				      <h:outputText value="����"/>
				    </f:facet>
				    <h:commandLink value="����" action="#{teacherBean.preEditTeacher}"/>
				  </h:column>
    	</h:dataTable>
    	</h:form>
		<p>
			<a href="admin.faces">&lt;&lt;����</a>
		</p>
		</f:view>
	</body>
</html>
