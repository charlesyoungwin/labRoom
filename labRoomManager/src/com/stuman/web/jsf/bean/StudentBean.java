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
import com.stuman.dao.hibernate.HibernateUtil;
import com.stuman.domain.Course;
import com.stuman.domain.Student;
import com.stuman.dto.CourseDto;


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
		if (stuDao.saveStudent(getStudent())) {
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
	 * Ԥѡ�޿γ��б�
	 * @return
	 */
	public DataModel getCourses(){		
		CourseDAO courseDao = DAOFactory.getInstance().createCourseDAO();
		CourseDto dto = new CourseDto();
		List<CourseDto> dtolist = new ArrayList<CourseDto>();
		dto.convert(courseDao.getCourse(), dtolist);
		dataModel.setWrappedData(dtolist);
		return dataModel;
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
