<%@page language="java" contentType="text/html; charset=GBK"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>



<html>
	<head>
		<title>���ӿγ�</title>

	</head>
	<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">
	<f:view>
		<p>
		</p>
		<p align="center">
			<br><br><br><br><br><br><br>�����γ�
		</p>
		<h:form>
			<div align="center"></div>
			<table width="37%" border="1" align="center">
				<tr>
					<td>
						�γ̺�
					</td>
					<td>
						<h:inputText id="id" value="#{courseBean.id}" />
					</td>
				</tr>
				<tr>
					<td width="37%">
						�γ���
					</td>
					<td width="63%">
						<h:inputText id="name" value="#{courseBean.name}" />
					</td>
				</tr>
				<tr>
					<td>
						ѧ��
					</td>
					<td>
						<h:selectOneListbox id="mark" size="3" value="#{courseBean.mark}">
							<f:selectItem itemLabel="1" itemValue="1"/>
							<f:selectItem itemLabel="2" itemValue="2"/>
							<f:selectItem itemLabel="3" itemValue="3"/>
							<f:selectItem itemLabel="4" itemValue="4"/>
						</h:selectOneListbox>
					</td>
				</tr>
				<tr>
					<td>
						ϵ��
					</td>
					<td>
						<h:selectOneListbox id="department" size="3" value="#{courseBean.dep}">
							<f:selectItem itemLabel="�����" itemValue="�����"/>
							<f:selectItem itemLabel="��еϵ" itemValue="��еϵ"/>
							<f:selectItem itemLabel="����ϵ" itemValue="����ϵ"/>
							<f:selectItem itemLabel="��ѧϵ" itemValue="��ѧϵ"/>
						</h:selectOneListbox>
					</td>
				</tr>
				<tr>
					<td>
						Ԥ�޿�
					</td>
					<td>

						<h:selectOneListbox id="department" size="3" value="#{courseBean.prepare}">
							<f:selectItem itemLabel="����" itemValue="����"/>
							<f:selectItem itemLabel="��ѧ" itemValue="��ѧ"/>
							<f:selectItem itemLabel="Ӣ��" itemValue="Ӣ��"/>
							<f:selectItem itemLabel="����" itemValue="����"/>
						</h:selectOneListbox>

					</td>
				</tr>
			</table>
			<p align="center">
				<h:commandButton action="#{courseBean.addCourse}" id="Submit2" value="ȷ��"/>
			</p>
			<p>
				&nbsp;
			</p>
		</h:form>
		<p>
			<a href="getcourse.faces">&lt;&lt;Back </a>
		</p>
		</f:view>
	</body>
</html>
