<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="errorpage.jsp" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%> 
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"> 
<title>��ѡ����ѧ��</title> 
</head> 
<body bgcolor="#0099FF" text="#FFFFFF" link="#00FF00"> 
<% 
String tea_id=(String)session.getAttribute("id"); 
%> 
<div align="center"> 
<p><font color="#00FF00" size="+3" face="��������">�������İ༶��ѧ�� </font></p> 
<p>  </p> 
<!--  <table width="75%" border="1"> 
<tr> 
<td>�༶��</td> 
<td>�γ���</td> 
<td>ѡ��</td> 
</tr> 
</table>--> 
<f:view>
		<h:form>
		<h:dataTable value="#{classesBean.courses}" var="classes" border="1" width="75%">
        	<h:column>
            	<h:outputText value="#{classes.id}"/>
        	</h:column>
        	<h:column>
            	<h:outputText value="#{classes.teacher.name}"/>
        	</h:column>
        	<h:column>
            	<h:outputText value="#{classes.teacher.id}"/>
        	</h:column>
        	<h:column>
            	<h:outputText value="#{classes.course.name}"/>
        	</h:column>
        	<h:column>
            	<h:outputText value="#{classes.course.id}"/>
        	</h:column>
        	<h:column>
            	<h:outputText value="#{classes.roomId}"/>
        	</h:column>
        	<h:column>
            	<h:outputText value="#{classes.courTime}"/>
        	</h:column>
        	<h:column>
			        <f:facet name="header">
				      <h:outputText value="ѡ��"/>
				    </f:facet>
				    <h:outputLink value="chooseStudent.faces">
                       <h:outputText value="ѡ��"/>
                       <f:param name="classid" value="#{classes.id}"/>
                    </h:outputLink>
			</h:column>		   
    	</h:dataTable>
		</h:form>
		</f:view>
<p> </p><p align="left"><a href="teacher.jsp">Back</a></p> 
</div> 
</body> 
</html>
