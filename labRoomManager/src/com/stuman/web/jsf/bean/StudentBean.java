package com.stuman.web.jsf.bean;

import java.util.ArrayList;
import java.util.List;

import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;
import org.hibernate.Session;

import com.stuman.dao.CourseDAO;
import com.stuman.dao.DAOFactory;
import com.stuman.dao.StudentDAO;
import com.stuman.dao.ComputeruseDAO;
import com.stuman.dao.RechargeListDAO;
import com.stuman.dao.hibernate.HibernateUtil;
import com.stuman.domain.Course;
import com.stuman.domain.Student;



public class StudentBean  {

	private StudentDAO stuDao;

	public StudentDAO getStudentDAO() {
		return DAOFactory.getInstance().createStudentDAO();
	}
	
	private DataModel dataModel = new ListDataModel();
	
	/**
	 * ����ѧ��ҵ���߼�
	 * @return
	 * @throws Exception
	 */
	public String adminAddStudent() throws Exception{
		//���DAOʵ��
		stuDao = this.getStudentDAO();

		Student stu = new Student();
		BeanUtils.copyProperties(stu, this);
		
		//����DAO�����������ݿ�
		if (stuDao.saveStudent(stu)) {
			return "success";
		}
		
		return null;
	}
	
	/**
	 * ����Ա����ѧ��ǰ��ȡ����
	 * @return
	 */
	public String adminPreUpdateStudent(){
        this.student = (Student) dataModel.getRowData();
        StudentDAO stuDao = DAOFactory.getInstance().createStudentDAO();
		Student stu = stuDao.getStudentByID(student.getId());
		setStudent(stu);
		return "success";
	}
	
	public String getInLabroom(){
		return "success";
	}
	
	/**
	 * ����Ա����ѧ��
	 * @return
	 */
	public String adminEditStudent(){
		stuDao = this.getStudentDAO();
		if(stuDao.updateStudent(getStudent())){
			//session.setAttribute("msg", "�����޸ĳɹ���");
			return "success";
		}
        return null;
	}
	
	/**
	 * �޸�����
	 * @return
	 */
	public String editPassword(){

        //JSF��ȡsession
		FacesContext context = FacesContext.getCurrentInstance(); 
		ExternalContext ec = context.getExternalContext(); 
		HttpSession session = (HttpSession) ec.getSession(true); 
		//���DAOʵ��
		stuDao = this.getStudentDAO();
		if(this.password == "" || this.student.getPassword() == "" || !this.password.equals(this.student.getPassword()))
		{
			session.setAttribute("msg", "����Ϊ�գ������������벻һ����");
			return null;
		}
		if(stuDao.updateStudent(getStudent())){
			session.setAttribute("msg", "�����޸ĳɹ���");
			return null;
		}	
		
		return null;
	}
	/**
	 * ɾ��ѧ��
	 * @return
	 */
	public String adminDelStudent(){
		//���DAOʵ��
		stuDao = this.getStudentDAO();
		this.student = (Student) dataModel.getRowData();
		 
		if(stuDao.deleteStudentByID(student.getId())){
			return "success";
		}	
		
		return null;
	}
	/**
	 * ����ѧ���б�
	 * @return
	 */
    public DataModel getStudents() {
   		//���DAOʵ��
   		stuDao = this.getStudentDAO();
   		List list = stuDao.getStudent();
   		dataModel.setWrappedData(list);
        return dataModel;
    }
    
    public DataModel getStudentById() {
//    	JSF��ȡsession
		FacesContext context = FacesContext.getCurrentInstance(); 
		ExternalContext ec = context.getExternalContext(); 
		HttpSession session = (HttpSession) ec.getSession(true); 
		
   		//���DAOʵ��
   		stuDao = this.getStudentDAO();
   		//List list = stuDao.getOneStudent();
   		String stu_id = (String)session.getAttribute("stuid");
		System.out.println("Student_id = " + stu_id);
		Student stu = stuDao.getStudentByID(stu_id);
		
		List<Student> list = new ArrayList<Student>();
		list.add(stu);
   		dataModel.setWrappedData(list);
        return dataModel;
    }
    
    /**
	 * ���س�ֵ��Ϣ
	 * @return
	 */
    public DataModel getOneRechargeLists() {
//    	JSF��ȡsession
		FacesContext context = FacesContext.getCurrentInstance(); 
		ExternalContext ec = context.getExternalContext(); 
		HttpSession session = (HttpSession) ec.getSession(true); 
		
   		//���DAOʵ��
    	RechargeListDAO rechalistDao = DAOFactory.getInstance().createRechargeListDAO();
    	
    	String stu_id = (String)session.getAttribute("stuid");
		System.out.println("Student_id = " + stu_id);
		
   		List list = rechalistDao.getRechargeListById(stu_id);
   		dataModel.setWrappedData(list);
        return dataModel;
    }
    
    /**
	 * �����ϻ�����б�
	 * @return
	 */
    public DataModel getOnlineComputeruses() {
//    	JSF��ȡsession
		FacesContext context = FacesContext.getCurrentInstance(); 
		ExternalContext ec = context.getExternalContext(); 
		HttpSession session = (HttpSession) ec.getSession(true); 
		
   		//���DAOʵ��
    	ComputeruseDAO comUseDao = DAOFactory.getInstance().createComputeruseDAO();
    	String stu_id = (String)session.getAttribute("stuid");
		System.out.println("Student_id = " + stu_id);
		
   		List list = comUseDao.getOnlineComputerUseById(stu_id);
   		dataModel.setWrappedData(list);
        return dataModel;
    }
    
    public DataModel getHistoryComputeruses() {
//    	JSF��ȡsession
		FacesContext context = FacesContext.getCurrentInstance(); 
		ExternalContext ec = context.getExternalContext(); 
		HttpSession session = (HttpSession) ec.getSession(true); 
		
   		//���DAOʵ��
    	ComputeruseDAO comUseDao = DAOFactory.getInstance().createComputeruseDAO();
    	String stu_id = (String)session.getAttribute("stuid");
		System.out.println("Student_id = " + stu_id);
		
   		List list = comUseDao.getHistoryComputerUseById(stu_id);
   		dataModel.setWrappedData(list);
        return dataModel;
    }
    
    /**
	 * Ԥ�鿴�ɼ�
	 * @return
	 */
	public String preCheckMark(){

		//JSF��ȡsession
		FacesContext context = FacesContext.getCurrentInstance(); 
		ExternalContext ec = context.getExternalContext(); 
		HttpSession session = (HttpSession) ec.getSession(true); 
		
		String stu_id = (String)session.getAttribute("stuid");
		System.out.println("Student_id = " + stu_id);
		StudentDAO stuDao = DAOFactory.getInstance().createStudentDAO();
		Student stu = stuDao.getStudentByID(stu_id);
		setStudent(stu);
		return "success";
	}
	
	
	
	
	
	 /**
	 * ѧ��������Ϣǰ��ȡ����
	 * @return
	 */
	public String preModifyStudent(){

		//JSF��ȡsession
		FacesContext context = FacesContext.getCurrentInstance(); 
		ExternalContext ec = context.getExternalContext(); 
		HttpSession session = (HttpSession) ec.getSession(true); 
		
		String stu_id = (String)session.getAttribute("stuid");
		System.out.println("Student_id = " + stu_id);
		StudentDAO stuDao = DAOFactory.getInstance().createStudentDAO();
		Student stu = stuDao.getStudentByID(stu_id);
		setStudent(stu);
		return "success";
	}
	
	
	
	private static final long serialVersionUID = 6563998465524859573L;

	private String id;

	private String name;

	private String password;

	private String departmentId;

	private String classes;

	private double money;

	private java.util.Date registerTime;
	
	private Student student;

	
	//�ڸ���ѧ��ҳ��ʹ��
	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public String getClasses() {
		return classes;
	}

	public void setClasses(String classes) {
		this.classes = classes;
	}

	public String getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public double getMoney() {
		return money;
	}

	public void setMoney(double money) {
		this.money = money;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public java.util.Date getRegisterTime() {
		return registerTime;
	}

	public void setRegisterTime(java.util.Date registerTime) {
		this.registerTime = registerTime;
	}

	

}
