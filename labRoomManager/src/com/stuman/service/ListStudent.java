package com.stuman.service;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspWriter;

import com.stuman.dao.DAOFactory;
import com.stuman.dao.StudentDAO;
import com.stuman.domain.Student;
import com.sun.faces.taglib.html_basic.CommandButtonTag;

public class ListStudent {

	private StudentDAO stuDao;

	public StudentDAO getStudentDAO() {
		return DAOFactory.getInstance().createStudentDAO();
	}

	// �쳣��û�д���
	public void list(HttpServletRequest request, JspWriter out)
			throws Exception {
		String tmp = (String) request.getParameter("page");

		if (tmp != null) {
			listpage(request, out, Integer.parseInt(tmp));
		} else {
			listpage(request, out, 1);
		}
	}

	public void listpage(HttpServletRequest request, JspWriter out, int page)
			throws Exception {

		//String name = "", id = "", password = "", jiguan = "", dep = "", sex = "", tel = "", mail = "", mark = "";
		String id="",name="",password="",departmentId="",classes="",money="",registerTime="";
		stuDao = this.getStudentDAO();
		List list = stuDao.getStudent();

		if (list == null) {
			out.print("����ѧ����Ϣ");
			return;
		}

		int total = list.size();
		int count = 0;
		Iterator it = list.iterator();
		Student stu;
		// User user;
		// OrderItem item;
		// Flight flight;

		while (count < (page - 1) * 5 && it.hasNext()) {
			it.next();
			count++;
		}

		count = 0;
		
		while (it.hasNext() && count < 5) {
			stu = (Student) it.next();

			id = stu.getId();
			name = stu.getName();
			password = stu.getPassword();
			departmentId = stu.getDepartmentId();
			classes = stu.getClasses();
			money = stu.getMoney().toString();
			if( stu.getRegisterTime() != null )
				registerTime = stu.getRegisterTime().toString();
			

			out.print("<tr><td>" + id + "</td><td>" + name + "</td><td>"
					+ password + "</td><td>" + departmentId + "</td><td>" 
					+ classes + "</td><td>" + money + "</td><td>"
					+ registerTime + "</td>");
			out.print("<td><a href=deleteStudent.do?student_id="
					+ stu.getId() + ">ɾ��</a></td><td>");
			CommandButtonTag cbuttonTag = new CommandButtonTag();
			cbuttonTag.setAction("#{studentBean.preUpdateStudent}");
			cbuttonTag.doStartTag();
			out.print("�޸�");
			cbuttonTag.doEndTag();
			out.print("<a href=updatestu.faces?student_id="
					+ stu.getId() + ">�༭</a></td></tr>");

			count++;
		}
		out.print("<tr><td colspan=5 align=center>");
		out.print("<table width=50% border=0 cellspacing=0><tr>");
		if ((page - 1) > 0)
			out
					.print("<td width=50% colspan='5'> <a href=getStudent.jsp?page="
							+ (page - 1) + ">��һҳ</a>��&nbsp;&nbsp;&nbsp;&nbsp;");
		else
			out.print("<td width=50% colspan='5'>��һҳ</td>");
		if ((page - 1) < (total / 5))
			out.print("<td width=50% colspan='5'><a href=getStudent.jsp?page="
					+ (page + 1) + ">��һҳ</a></td>");
		else
			out.print("<td width=50%  colspan='5'>��һҳ</td>");
		out.print("</tr></table></td></tr>");
		out.print("</table>");
	}

}
