<%@page language="java" contentType="text/html; charset=GBK"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<html>
	<head>
		<title>���пγ�</title>
	</head>
	<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">
	<f:view>
		<div align="center">
			<br><br><br><br><br><br><br><br><br>���пγ� 
			<p align="right">
				<a href="Addcourse.faces">�����γ�</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</p>
		</div>
		<h:form>
		<div align="center">
			<%--<table width="75%" border="1">
				<tr>
					<td>
						�γ̺�
					</td>
					<td>
						�γ���
					</td>
					<td>
						ѧ��
					</td>
					<td>
						Ԥ�޿�
					</td>
					<td>
						����ϵ
					</td>
					<td>
						ɾ��
					</td>
					<td>
						����
					</td>
				</tr>
				<%
				ListCourse courlist = new ListCourse();
			courlist.list(request, out);
		%>
			</table>

		--%>
		<h:dataTable value="#{courseBean.courses}" var="course" border="1" width="75%">
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
				    <h:outputText value="ѧ��"/>
				</f:facet>
            	<h:outputText value="#{course.mark}"/>
        	</h:column>
        	<h:column>
        	    <f:facet name="header">
				    <h:outputText value="Ԥ�޿�"/>
				</f:facet>
            	<h:outputText value="#{course.prepare}"/>
        	</h:column>
        	<h:column>
        	    <f:facet name="header">
				    <h:outputText value="����ϵ"/>
				</f:facet>
            	<h:outputText value="#{course.dep}"/>
        	</h:column>
        	<h:column>
			        <f:facet name="header">
				      <h:outputText value="ɾ��"/>
				    </f:facet>
				    <h:commandLink value="ɾ��" action="#{courseBean.deleteCourse}"/>
				  </h:column>
			    <h:column>
			        <f:facet name="header">
				      <h:outputText value="����"/>
				    </f:facet>
				    <h:commandLink value="����" action="#{courseBean.preEditCourse}"/>
				  </h:column>
    	</h:dataTable>
		
		
		</div>
		</h:form>
		<p align="left">
			<a href="admin.faces">&lt;&lt;����</a>
		</p>
		</f:view>
	</body>
</html>
