package com.stuman.web.jsf.bean;

import java.util.HashSet;
import java.util.Set;

import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;
import javax.servlet.http.HttpSession;

import com.stuman.dao.DAOFactory;
import com.stuman.dao.TeacherDAO;
import com.stuman.domain.Student;
import com.stuman.domain.Teacher;

public class TeacherBean {
	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 8781453346180822209L;

	private String id;

	private String name;

	private String password;
	
	private java.util.Date registerTime;
	
	private DataModel dataModel=new ListDataModel();
	
	private TeacherDAO teaDao;
	
	private Teacher teacher;

	public TeacherDAO getTeacherDAO() {
		return DAOFactory.getInstance().createTeacherDAO();
	}
	
	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
	
	
	/**
	 * ������ʦ
	 * @return
	 */
	public String addTeacher(){
		teaDao = this.getTeacherDAO();
		Teacher tea = new Teacher();
		
		tea.setId(getId());
		tea.setName(getName());
		tea.setPassword( getPassword());
		tea.setRegisterTime( getRegisterTime());

		if (teaDao.saveTeacher(tea)) {
			return "success";
		}
		return null;
	}
	
	/**
	 * ��ʦ�б�
	 * @return
	 */
	public DataModel getTeachers(){
		teaDao = this.getTeacherDAO();
		dataModel.setWrappedData(teaDao.getTeacher());
		return dataModel;
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
		teaDao = this.getTeacherDAO();
		if(this.password == "" || this.teacher.getPassword() == "" || !this.password.equals(this.teacher.getPassword()))
		{
			session.setAttribute("msg", "����Ϊ�գ������������벻һ����");
			return null;
		}
		if(teaDao.updateTeacher(getTeacher())){
			session.setAttribute("msg", "�����޸ĳɹ���");
			return null;
		}	
		
		return null;
	}
	
	/**
	 * Ԥ�༭��ʦ
	 * @return
	 */
	public String preEditTeacher(){
		Teacher teacher=(Teacher) dataModel.getRowData();
		teaDao = this.getTeacherDAO();
		setTeacher(teaDao.getTeacherByID(teacher.getId()));
		return "edit";
	}
	
	/**
	 * �༭��ʦ
	 * @return
	 */
	public String editTeacher(){
		teaDao = this.getTeacherDAO();
		if(teaDao.updateTeacher(getTeacher())){
			return "success";
		}
		return null;
	}
	
	/**
	 * ɾ����ʦ
	 * @return
	 */
	public String deleteTeacher(){
//		���DAOʵ��
		teaDao = this.getTeacherDAO();
		this.teacher = (Teacher) dataModel.getRowData();
		if(teaDao.deleteTeacherByID(teacher.getId())){
			return "success";
		}	
		return null;
	}
	

	// Constructors

	/** default constructor */
	public TeacherBean() {
	}

	/** full constructor */
	public TeacherBean(String name, String password, java.util.Date registerTime) {
		this.name = name;
		this.password = password;
		this.registerTime = registerTime;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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
