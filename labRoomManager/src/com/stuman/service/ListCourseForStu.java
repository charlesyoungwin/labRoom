package com.stuman.service;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspWriter;

import com.stuman.dao.CourseDAO;
import com.stuman.dao.DAOFactory;
import com.stuman.domain.Course;
import com.stuman.domain.CourseForStu;

public class ListCourseForStu {

	private CourseDAO couDao;

	public CourseDAO getCourseDAO() {
		return DAOFactory.getInstance().createCourseDAO();
	}

	public void list(HttpServletRequest request, JspWriter out, String stuid)
			throws Exception {
		String tmp = (String) request.getParameter("page");

		if (tmp != null) {
			listpage(request, out, Integer.parseInt(tmp), stuid);
		} else {
			listpage(request, out, 1, stuid);
		}
	}

	public void listpage(HttpServletRequest request, JspWriter out, int page, String stuid)
			throws Exception {
		String id, name, prepare, dep, classid, roomid, time, teacher;
		couDao = this.getCourseDAO();
		List list = couDao.getCourseForStu(stuid);

		if (list == null) {
			out.print("�޿�ѡ�γ�");
			return;
		}

		int total = list.size();
		int count = 0;
		Iterator it = list.iterator();
		CourseForStu cour;

		while (count < (page - 1) * 5 && it.hasNext()) {
			it.next();
			count++;
		}

		count = 0;
		
		while (it.hasNext() && count < 5) {
			cour = (CourseForStu) it.next();

			id = cour.getId();
			name = cour.getName();
			if(cour.getPrepare().equals("0"))
				prepare = "�����޿�";
			else
				prepare = cour.getPrepare();
			dep = cour.getDep();
			classid = cour.getClassid();
			roomid = cour.getRoomid();
			time = cour.getTime();
			teacher = cour.getTeacher();
			
			out.print("<tr>" +
					"<td>" + id + "</td>" +
					"<td>" + name + "</td>" +
					"<td>" + prepare + "</td>" +
					"<td>" + dep + "</td>" +
					"<td>" + classid + "</td>" +
					"<td>" + roomid + "</td>" +
					"<td>" + time+ "</td>" +
					"<td>" + teacher + "</td>");
			out.print("<td><a href=regCourse.do?id="
					+ stuid + "&classid="+cour.getClassid()+">ע��</a></td><td>");
			count++;
		}
		out.print("<tr><td colspan=5 align=center>");
		out.print("<table width=50% border=0 cellspacing=0><tr>");
		if ((page - 1) > 0)
			out
					.print("<td width=50% colspan='5'> <a href=getcourse.jsp?page="
							+ (page - 1) + ">��һҳ</a>��&nbsp;&nbsp;&nbsp;&nbsp;");
		else
			out.print("<td width=50% colspan='5'>��һҳ</td>");
		if ((page - 1) < (total / 5))
			out.print("<td width=50% colspan='5'><a href=getcourse.jsp?page="
					+ (page + 1) + ">��һҳ</a></td>");
		else
			out.print("<td width=50%  colspan='5'>��һҳ</td>");
		out.print("</tr></table></td></tr>");
		out.print("</table>");
	}
}
