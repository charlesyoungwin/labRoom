<%@page language="java" contentType="text/html; charset=GBK"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<html>
	<head>
		<title>��Ӱ༶</title>
		<style type="text/css">

</style>
	</head>
	<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">
	<f:view>
	<p>
		<%
		//String admin_id = (String) session.getAttribute("id");
		//	if (admin_id == null) {
		//		response.sendRedirect("login.faces");
		//	}
		//	String name = "";
		//	String id = "";
			%>
	</p>
	<br><br><br><p align="center">
		�����༶
	</p>
	<h:form>
		
		<table width="38%" border="1" align="center" class="Edit">
			<tr>
				<td width="29%">
					�༶��
				</td>
				<td width="71%">
					<%--<input name="id" type="text" id="id2">
				--%>
				<h:inputText id="id" value="#{classesBean.id}" />
				</td>
			</tr>
			<tr>
				<td>
					��ʦ
				</td>
				<td>
					<%--<select name="tea_id" size="1" id="tea_id">
						<option value="����">����	</option>
						<option value="����">����</option>
						<option value="����">����</option>
					</select>
				--%>
				
				<h:selectOneListbox id="sex" size="��" value="#{classesBean.teacher.id}">
							<f:selectItem itemLabel="����" itemValue="1"/>
							<f:selectItem itemLabel="����" itemValue="1"/>
							<f:selectItem itemLabel="����" itemValue="1"/>
				</h:selectOneListbox>
				
				
				</td>
			</tr>
			<tr>
				<td>
					�γ�
				</td>
				<td>
					<%--<select name="cour_id" id="cour_id">
						
						<option value="1">��ѧ����</option>
						<option value="1">C</option>
						<option value="1">C++</option>
						
					</select>
				--%>
				
				<h:selectOneListbox id="sex" size="��" value="#{classesBean.course.id}">
							<f:selectItem itemLabel="��ѧ����" itemValue="1"/>
							<f:selectItem itemLabel="C" itemValue="1"/>
							<f:selectItem itemLabel="C++" itemValue="1"/>
						</h:selectOneListbox>
				
				</td>
			</tr>
			<tr>
				<td>
					����ID
				</td>
				<td>
					<%--<select name="room_id" size="1" id="room_id">
						<option>
							10-1
						</option>
						<option>
							10-2
						</option>
						<option>
							10-3
						</option>
						<option>
							10-4
						</option>
						<option>
							10-5
						</option>
						<option>
							20-1
						</option>
						<option>
							20-2
						</option>
						<option>
							20-3
						</option>
						<option>
							20-4
						</option>
						<option>
							20-5
						</option>
						<option>
							30-1
						</option>
						<option>
							30-2
						</option>
						<option>
							30-3
						</option>
						<option>
							30-4
						</option>
						<option>
							30-5
						</option>
						<option>
							30-6
						</option>
					</select>
				--%>
				
				<h:selectOneListbox id="sex" size="��" value="#{classesBean.roomId}">
							<f:selectItem itemLabel="10-1" itemValue="10-1"/>
							<f:selectItem itemLabel="10-2" itemValue="10-2"/>
							<f:selectItem itemLabel="10-3" itemValue="10-3"/>
							<f:selectItem itemLabel="10-4" itemValue="10-4"/>
							<f:selectItem itemLabel="10-5" itemValue="10-5"/>
							<f:selectItem itemLabel="10-6" itemValue="10-6"/>
			    </h:selectOneListbox>
				
				</td>
			</tr>
			<tr>
				<td>
					�Ͽ�ʱ��
				</td>
				<td>
					<%--<select name="cour_time" size="1" id="cour_time">
						<option value="Mon_1">
							����һ/һ��
						</option>
						<option value="Mon_2">
							����һ/����
						</option>
						<option value="Mon_3">
							����һ/����
						</option>
						<option value="Tues_1">
							���ڶ�/һ��
						</option>
						<option value="Tues_2">
							���ڶ�/����
						</option>
						<option value="Tues_3">
							���ڶ�/����
						</option>
						<option value="Wed_1">
							������/һ��
						</option>
						<option value="Wed_2">
							������/����
						</option>
						<option value="Wed_3">
							������/����
						</option>
						<option value="Thurs_1">
							������/һ��
						</option>
						<option value="Thurs_2">
							������/����
						</option>
						<option value="Thurs_3">
							������/����
						</option>
						<option value="Fri_1">
							������/һ��
						</option>
						<option value="Fri_2">
							������/����
						</option>
						<option value="Fri_3">
							������/����
						</option>
					</select>
				--%>
				
				<h:selectOneListbox id="sex" size="��" value="#{classesBean.courTime}">
							<f:selectItem itemLabel="����һ/һ��" itemValue="����һ/һ��"/>
							<f:selectItem itemLabel="����һ/����" itemValue="����һ/����"/>
							<f:selectItem itemLabel="����һ/����" itemValue="����һ/����"/>
							<f:selectItem itemLabel="���ڶ�/һ��" itemValue="���ڶ�/һ��"/>
							<f:selectItem itemLabel="���ڶ�/����" itemValue="���ڶ�/����"/>
							<f:selectItem itemLabel="���ڶ�/����" itemValue="���ڶ�/����"/>
				</h:selectOneListbox>
				
				</td>
			</tr>
		</table>
		<p align="center">
			 <h:commandButton action="#{classesBean.addClasses}" id="Submit" value="�ύ" />
		</p>
		<p>
			&nbsp;
		</p>
	</h:form>
	<a href="getClass.faces">&lt;&lt;Back </a>
	</f:view>
	</body>
</html>
