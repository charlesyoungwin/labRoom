<%@page language="java" contentType="text/html; charset=GBK"%>
<%@page import="java.sql.*,stuman.*" errorPage="errorpage.faces" %>
<html>
<head>
<title>ȷ�ϸ���</title>
</head>
<jsp:useBean id="student" scope="page" class="stuman.student">
<jsp:setProperty name="student" id="*"/>
</jsp:useBean>
<body  background="images/image-top2.jpg" style="background-repeat:no-repeat">
<p align="center"> 
  <%
  try{
String id=(String )session.getAttribute("id");
student.setId(id);
String a = student.getSex();
String c=student.getName();
String d=student.getJiguan();
String e = student.getDep();
String f=student.getPassword();
if(c==null || c.equals("")) throw new Exception("����ѧ����������Ϊ�գ�");
if(f==null || f.equals("")) throw new Exception("����ѧ�����벻��Ϊ�գ�");
out.print("    Id Ϊ"+id+"��ѧ��<br>");
out.print("�����Ա�Ϊ�� "+a+"<br>");
out.print("��������Ϊ"+c+"<br>");
out.print("���ļ���Ϊ "+d);
student.updateStudent();
} catch(Exception e){out.print(e.toString());}
%>
</p>
<p>&nbsp;</p>
<p><a href="admin.faces"><br></a></p><p><a href="admin.faces"><br></a></p><p><a href="admin.faces">&lt;&lt;Back</a></p>
</body>
</html>
