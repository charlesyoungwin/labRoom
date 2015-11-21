package com.stuman.dao.imp;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.HibernateException;
import org.hibernate.Session;

import com.stuman.dao.CourselistDAO;
import com.stuman.dao.hibernate.HibernateUtil;
import com.stuman.domain.Course;

public class CourselistDAOImp implements CourselistDAO{
	private static Log log = LogFactory.getLog(CourseDAOImp.class);

	// ��ÿα��б�
	public List getCourseList() {
		try {
			// ���Session
			Session s = HibernateUtil.currentSession();
			// ��ʼ����
			HibernateUtil.beginTransaction();
			// ִ�в���
			List results = s.createQuery("from Courselist cour").list();
			// �ύ����
			HibernateUtil.commitTransaction();
			// �ر�Session
			HibernateUtil.closeSession();
			if (results != null && results.size() > 0) {
				return results;
			}
		} catch (HibernateException e) {
			log.fatal(e);
		}
		return null;
	}
/*
	// ͨ��ָ���Ŀγ̱��ɾ���γ���Ϣ
	public boolean deleteCourseListByID(String id) {
		try {
			Session s = HibernateUtil.currentSession();
			HibernateUtil.beginTransaction();
			Course cour = (Course) s.load(Course.class, id);
			System.out.println(cour.getId());
			s.delete(cour);
			HibernateUtil.commitTransaction();
			HibernateUtil.closeSession();
			return true;
		} catch (HibernateException e) {
			log.fatal(e);
		}
		return false;
	}
*/
	/*
	// ͨ���γ̱�Ż�ÿγ���Ϣ
	public Course getCourseByID(String id) {
		try {
			Session s = HibernateUtil.currentSession();
			HibernateUtil.beginTransaction();
			Course cour = (Course) s.load(Course.class, id);
			HibernateUtil.commitTransaction();
			HibernateUtil.closeSession();
			return cour;
		} catch (HibernateException e) {
			log.fatal(e);
		}
		return null;
	}
*/
	/*
	// ���¿γ���Ϣ
	public boolean updateCourse(Course cour) {
		try {
			Session s = HibernateUtil.currentSession();
			HibernateUtil.beginTransaction();
			s.update(cour);
			System.out.println("update Course id =" + cour.getId());
			HibernateUtil.commitTransaction();
			HibernateUtil.closeSession();
			return true;
		} catch (HibernateException e) {
			log.fatal(e);
		}
		return false;
	}
*/
	/*
	// ����γ���Ϣ
	public boolean saveCourse(Course cour) {
		try {
			Session s = HibernateUtil.currentSession();
			HibernateUtil.beginTransaction();
			s.saveOrUpdate(cour);
			System.out.println("save Course id =" + cour.getId());
			HibernateUtil.commitTransaction();
			HibernateUtil.closeSession();
			return true;
		} catch (HibernateException e) {
			log.fatal(e);
		}
		return false;
	}
*/
	/*
	public List getCourseForStu(String stuid) throws SQLException {
		// TODO Auto-generated method stub
		ArrayList results = new ArrayList();
		try {
			// ���Session
			Session s = HibernateUtil.currentSession();
			// ִ�в���
			Connection conn = s.connection();
			Statement sql = conn.createStatement();
			ResultSet rs = sql.executeQuery("select course.id, course.name, course.prepare, " +
					"course.dep, classes.id as classid, classes.room_id, cour_time, teacher.name " +
					"from course,classes,teacher  where teacher.id = classes.tea_id and " +
					"course.id=classes.cour_id and 	((prepare = '0' or prepare in ( " +
					"select course.id from enrol,classes,course where enrol.class_id = classes.id " +
					"and classes.cour_id = course.id and enrol.stu_id='"+stuid+"' and score > '60') ) " +
					"and course.id not in (select cour_id from classes,enrol where stu_id='"+stuid+"' " +
					"and class_id = classes.id and accept = '1'))");
			while (rs.next()) {
				//CourseForStu courForStu = new CourseForStu();
				//courForStu.setId(rs.getString(1));
				//courForStu.setName(rs.getString(2));
				//courForStu.setPrepare(rs.getString(3));
				//courForStu.setDep(rs.getString(4));
				//courForStu.setClassid(rs.getString(5));
				//courForStu.setRoomid(rs.getString(6));
				//courForStu.setTime(rs.getString(7));
				//courForStu.setTeacher(rs.getString(8));
				//results.add(courForStu);
			}
			rs.close();
			sql.close();
			
			// �ر�Session
			HibernateUtil.closeSession();
			if (results != null && results.size() > 0) {
				return results;
			}
		} catch (HibernateException e) {
			log.fatal(e);
		}
		return null;
	}
	*/
}
