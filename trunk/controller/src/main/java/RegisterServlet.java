package com.medicalinformation.servlet;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.medicalinformation.dao.GenericDao;
import com.medicalinformation.factory.GenericDaoFactory;
import com.medicalinformation.util.MD5Code;
import com.medicalinformation.vo.ResidentRecord;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String identity = "患者";		// 用于识别要注册的角色类型
		Integer user = null;			// 标识新建的用户
		String rememberUrl = "/jsp/usercenter.jsp";
		if("患者".equals(identity)) {
			ResidentRecord rr = new ResidentRecord();
			rr.setBirthday(Date.valueOf(request.getParameter("birthday")));
			rr.setCompany(request.getParameter("company"));
			rr.setCompanytel(request.getParameter("companytel"));
			rr.setGender(request.getParameter("gender"));
			rr.setHomeaddress(request.getParameter("homeaddress"));
			rr.setJob(request.getParameter("job"));
			rr.setMaritalstatus(request.getParameter("maritalStatus"));
			rr.setNational(request.getParameter("national"));
			rr.setPermanentaddr(request.getParameter("permanentaddr"));
			rr.setResidentidcard(request.getParameter("residentidcard"));
			rr.setResidentname(request.getParameter("residentname"));
			rr.setResidentpwd(new MD5Code().getMD5ofStr(request.getParameter("residentpwd")));
			rr.setTelphone(request.getParameter("telphone"));
			rr.setZipcode(request.getParameter("zipcode"));
			GenericDao<ResidentRecord, Integer> dao = (GenericDao<ResidentRecord, Integer>) GenericDaoFactory.newDaoInstance(ResidentRecord.class);
			user = dao.create(rr);
			request.getSession().setAttribute("user", user);
			request.getSession().setAttribute("identity", "admin");
			request.getRequestDispatcher(rememberUrl).forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(request, response);
	}

}
