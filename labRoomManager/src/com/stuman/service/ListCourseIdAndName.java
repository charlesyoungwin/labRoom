package com.stuman.service;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspWriter;

import com.stuman.dao.DAOFactory;
import com.stuman.dao.CourseDAO;
import com.stuman.domain.Course;

public class ListCourseIdAndName {

	private CourseDAO couDao;

	public CourseDAO getCourseDAO() {
		return DAOFactory.getInstance().createCourseDAO();
	}

	// �쳣��û�д���

	public void list(HttpServletRequest request, JspWriter out)
			throws Exception {

		String name = "", id = "";
		couDao = this.getCourseDAO();
		List list = couDao.getCourse();

		if (list == null) {
			out.print("�������޿���Ϣ");
			return;
		}

		int count = 0;
		Iterator it = list.iterator();
		Course cour;

		out.println("<select name='department' size='3'>");
		out.println("<option value='0' selected='selected'>�����޿�</option>");
		while (it.hasNext() && count < 5) {
			cour = (Course) it.next();

			id = cour.getId();
			name = cour.getName();

			out.println("<html:option value=" + id + ">" +  name+"</html:option>");

			out.println("<option value=" + id + ">" +  name+"</option>");
		}
		out.println("</select>");
	}
}
