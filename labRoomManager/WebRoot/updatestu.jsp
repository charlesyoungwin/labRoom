<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>


<html>
	<head>
		<title>�޸�ѧ����Ϣ</title>
	</head>
	<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">
	<f:view>
		<p align="center">
			<br><br><br><br><br><br><br><br>����ѧ��
		</p>
		<h:form >
		
        <h:inputHidden id="id" value="#{studentBean.student.id}" />
			<table width="49%" height="50" border="1" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td width="48%">
						ѧ������
					</td>
					<td width="52%">
						<h:inputText id="name" value="#{studentBean.student.name}"/>
					</td>
				</tr>
				<tr>
					<td>
						����
					</td>
					<td>
						<h:inputSecret id="password" value="#{studentBean.student.password}"/>
					</td>
				</tr>
				<tr>
					<td>
						ѧ������ϵ
					</td>
					<td>
						<h:selectOneListbox id="department" size="3" value="#{studentBean.student.department}" >
							<f:selectItem itemLabel="�����" itemValue="�����"/>
							<f:selectItem itemLabel="��еϵ" itemValue="��еϵ"/>
							<f:selectItem itemLabel="����ϵ" itemValue="����ϵ"/>
							<f:selectItem itemLabel="��ѧϵ" itemValue="��ѧϵ"/>
							<f:selectItem itemLabel="����ѧԺ" itemValue="����ѧԺ"/>
							<f:selectItem itemLabel="����ѧԺ" itemValue="����ѧԺ"/>
						</h:selectOneListbox>
					</td>
				</tr>
				<tr>
					<td>
						�Ա�
					</td>
					<td>
						<h:selectOneListbox id="sex" size="1" value="#{studentBean.student.sex}">
							<f:selectItem itemLabel="��" itemValue="��"/>
							<f:selectItem itemLabel="Ů" itemValue="Ů"/>
						</h:selectOneListbox>
					</td>
				</tr>
				<tr>
					<td>
						����
					</td>
					<td>
						<h:selectOneListbox id="jiguan" size="2" value="#{studentBean.student.jiguan}">
						    <f:selectItem itemLabel="����" itemValue="����"/>
							<f:selectItem itemLabel="�Ϻ�" itemValue="�Ϻ�"/>
							<f:selectItem itemLabel="����" itemValue="����"/>
							<f:selectItem itemLabel="����" itemValue="����"/>
							<f:selectItem itemLabel="ɽ��" itemValue="ɽ��"/>
							<f:selectItem itemLabel="���ɹ�" itemValue="���ɹ�"/>
							<f:selectItem itemLabel="�ӱ�" itemValue="�ӱ�"/>
							<f:selectItem itemLabel="����" itemValue="����"/>
							<f:selectItem itemLabel="�㽭" itemValue="�㽭"/>
						</h:selectOneListbox>
					</td>
				</tr>
			</table>
			<p align="center">
				<h:commandButton action="#{studentBean.editStudentByAdmin}" id="Submit" value="�ύ"/>
			</p>
		</h:form>
		<p>
			<a href="getStudent.faces">&lt;&lt;Back</a>
		</p>
		</f:view>
	</body>
</html>
