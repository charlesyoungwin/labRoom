<%@page language="java" contentType="text/html; charset=GBK"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<html>
	<head>
		<title>���а༶</title>
	</head>
	<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">
	<f:view>
		<%//String id = "", tea_id = "", cour_id = "", room_id = "", cour_time = "", cour_name = "", tea_name = "";

			%>
			<h:form>
		<div align="center">
			<br><br><br><br><br><p>
				���а༶ 
			</p>
			<p align="right">
				<a href="AddClass.faces">�����༶</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</p>
			<%--<table width="75%" border="1">
				<tr>
					<td>
						�༶��
					</td>
					<td>
						��ʦ
					</td>
					<td>
						��ʦ��
					</td>
					<td>
						�γ�
					</td>
					<td>
						�γ̺�
					</td>
					<td>
						����ID
					</td>
					<td>
						�Ͽ�ʱ��
					</td>
					<td>
						ɾ��
					</td>
					<td>
						����
					</td>
				</tr>
				<%ListClasses clalist = new ListClasses();
			clalist.list(request, out);
		%>
			</table>
			--%>
			
			<h:dataTable value="#{classesBean.classess}" var="classes" border="1" width="75%">
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
				      <h:outputText value="ɾ��"/>
				    </f:facet>
				    <h:commandLink value="ɾ��" action="#{classesBean.deleteClasses}"/>
				  </h:column>
			    <h:column>
			        <f:facet name="header">
				      <h:outputText value="����"/>
				    </f:facet>
				    <h:commandLink value="����" action="#{classesBean.preEditClasses}"/>
				  </h:column>
    	</h:dataTable>
    	
			<p align="left">
				<a href="admin.faces">&lt;&lt;����</a>
			</p>
		</div>
		</h:form>
		</f:view>
	</body>
</html>
