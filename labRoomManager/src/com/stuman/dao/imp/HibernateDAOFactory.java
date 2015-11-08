package com.stuman.dao.imp;

import com.stuman.dao.AdminDAO;
import com.stuman.dao.ComputerDAO;
import com.stuman.dao.ComputeruseDAO;
import com.stuman.dao.CourseDAO;
import com.stuman.dao.CourselistDAO;
import com.stuman.dao.LabroomDAO;
import com.stuman.dao.DAOFactory;
import com.stuman.dao.StudentDAO;
import com.stuman.dao.TeacherDAO;
import com.stuman.dao.RechargeListDAO;

public class HibernateDAOFactory extends DAOFactory {

	public AdminDAO createAdminDAO() {				//����һ��admin�����ݷ��ʶ���
		// TODO Auto-generated method stub
		return new AdminDAOImp();
	}
	
	public ComputerDAO createComputerDAO() {				//����һ��computer�����ݷ��ʶ���
		// TODO Auto-generated method stub
		return new ComputerDAOImp();
	}
	
	public ComputeruseDAO createComputeruseDAO() {				//����һ��computeruse�����ݷ��ʶ���
		// TODO Auto-generated method stub
		return new ComputeruseDAOImp();
	}
	
	public CourseDAO createCourseDAO() {					//����һ��course�����ݷ��ʶ���
		// TODO Auto-generated method stub
		return new CourseDAOImp();
	}
	
	public CourselistDAO createCourselistDAO() {			//����һ��courselist�����ݷ��ʶ���
		// TODO Auto-generated method stub
		return new CourselistDAOImp();
	}
	
	public LabroomDAO createLabroomDAO() {					//����һ��labroom�����ݷ��ʶ���
		// TODO Auto-generated method stub
		return new LabroomDAOImp();
	}
	
	public StudentDAO createStudentDAO() {					//����һ��student�����ݷ��ʶ���
		// TODO Auto-generated method stub
		return new StudentDAOImp();
	}

	public TeacherDAO createTeacherDAO() {					//����һ��teacher�����ݷ��ʶ���
		// TODO Auto-generated method stub
		return new TeacherDAOImp();
	}
	                       
	public RechargeListDAO createRechargeListDAO() {				//����һ��rechargelist�����ݷ��ʶ���
		// TODO Auto-generated method stub
		return new RechargeListDAOImp();
	}
}
