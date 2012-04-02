package com.medicalinformation.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.medicalinformation.dao.GenericDao;
import com.medicalinformation.factory.GenericDaoFactory;
import com.medicalinformation.vo.Admin;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String sucforwardPage = "/jsp/usercenter.jsp";	//登录成功的界面
		String userid = request.getParameter("residentidcard");
		String userpwd = request.getParameter("password");
		String identity = request.getParameter("identity");
		if("患者".equals(identity)) {
			
		} else if("医务人员".equals(identity)) {
			
		} else if("管理人员".equals(identity)) {
			Admin admin = null;
			@SuppressWarnings("unchecked")
			GenericDao<Admin, Integer> dao = (GenericDao<Admin, Integer>) GenericDaoFactory.newDaoInstance(Admin.class);
			admin = (Admin) dao.read(Integer.parseInt(userid));
			if(admin != null && admin.getAdminpwd().equals(userpwd)) {
				request.getSession().setAttribute("user", userid);
				request.getSession().setAttribute("identity", "admin");
//				response.sendRedirect(sucforwardPage);
				request.getRequestDispatcher(sucforwardPage).forward(request, response);
			}
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
