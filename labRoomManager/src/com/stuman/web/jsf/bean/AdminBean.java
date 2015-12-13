package com.stuman.web.jsf.bean;

import java.util.ArrayList;
import java.util.List;

import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import com.stuman.dao.CourseDAO;
import com.stuman.dao.DAOFactory;
import com.stuman.dao.AdminDAO;
import com.stuman.dao.StudentDAO;
import com.stuman.domain.Course;
import com.stuman.domain.Admin;
import com.stuman.domain.Student;



public class AdminBean  {

	private AdminDAO admDao;

	public AdminDAO getAdminDAO() {
		return DAOFactory.getInstance().createAdminDAO();
	}
	
	private DataModel dataModel = new ListDataModel();
	
	/**
	 * ���ع���Ա�б�
	 * @return
	 */
    public DataModel getAdmins() {
   		//���DAOʵ��
    	admDao = this.getAdminDAO();
   		List list = admDao.getAdmin();
   		dataModel.setWrappedData(list);
        return dataModel;
    }

    /**
	 * ѧ��������Ϣǰ��ȡ����
	 * @return
	 */
	public String preModifyAdmin(){

		//JSF��ȡsession
		FacesContext context = FacesContext.getCurrentInstance(); 
		ExternalContext ec = context.getExternalContext(); 
		HttpSession session = (HttpSession) ec.getSession(true); 
		
		String adm_id = (String)session.getAttribute("adminid");
		System.out.println("admin_id = " + adm_id);
		AdminDAO admDao = DAOFactory.getInstance().createAdminDAO();
		Admin adm = admDao.getAdminByID(adm_id);
		setAdmin(adm);
		return "success";
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
		admDao = this.getAdminDAO();
		if(this.password == "" || this.admin.getPassword() == "" || !this.password.equals(this.admin.getPassword()))
		{
			session.setAttribute("msg", "����Ϊ�գ������������벻һ����");
			return null;
		}
		if(admDao.updateAdmin(getAdmin())){
			session.setAttribute("msg", "�����޸ĳɹ���");
			return null;
		}	
		
		return null;
	}
	
	private String id;

	private String name;

	private String password;

	private java.util.Date registerTime;

	private Admin admin;
	
	
	//�ڸ���ѧ��ҳ��ʹ��
	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
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
