<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>


<html>
	<head>
		<title>�޸�ѧ����Ϣ</title>
	</head>
	<body>
	<f:view>
		<p align="center">
			����ѧ��
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
						����Ժϵ
					</td>
					<td>
						<h:selectOneListbox id="department" size="3" value="#{studentBean.student.departmentId}" >
							<f:selectItem itemLabel="�����" itemValue="11001"/>
							<f:selectItem itemLabel="��еϵ" itemValue="11002"/>
							<f:selectItem itemLabel="����ϵ" itemValue="11003"/>
							<f:selectItem itemLabel="��ѧϵ" itemValue="11004"/>
							<f:selectItem itemLabel="����ѧԺ" itemValue="11005"/>
							<f:selectItem itemLabel="����ѧԺ" itemValue="11006"/>
						</h:selectOneListbox>
					</td>
				</tr>
				<tr>
					<td width="48%">
						�༶
					</td>
					<td width="52%">
						<h:inputText id="name" value="#{studentBean.student.classes}" />
					</td>
				</tr>
				<tr>
					<td width="48%">
						��ֵ���
					</td>
					<td width="52%">
						<h:inputText id="name" value="#{studentBean.student.money}" />
					</td>
				</tr>
			</table>
			<p align="center">
				<h:commandButton action="#{studentBean.adminEditStudent}" id="Submit" value="�ύ"/>
			</p>
		</h:form>
		<p>
			<a href="getStudent.faces">&lt;&lt;Back</a>
		</p>
		</f:view>
	</body>
</html>
