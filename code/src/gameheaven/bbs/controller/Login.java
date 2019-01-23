package gameheaven.bbs.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import gameheaven.bbs.entity.*;
import gameheaven.bbs.entity.User;
import gameheaven.bbs.service.*;
import gameheaven.bbs.serviceImpl.UserServiceImpl;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userPhone = request.getParameter("phone");
		String userPassword = request.getParameter("password");
		
		String message = null;
		HttpSession session = request.getSession();
		if(userPhone == "") {
			message = "手机号为空！";
			session.setAttribute("message", message);
			response.sendRedirect("input/login.jsp");
		}else if (userPassword == "") {
			message = "密码为空！";
			session.setAttribute("message", message);
			response.sendRedirect("input/login.jsp");
		}else {
			long phone = Long.parseLong(userPhone);
			UserService userService = new UserServiceImpl();
			User user = new User();
			user = userService.findUserByPhone(phone);
			if (user != null) {
				if (user.getPassword().equals(userPassword)) {
					message = "登陆成功！";
					session.setAttribute("message", message);
					session.setAttribute("user", user);
					response.sendRedirect(request.getContextPath()+"/findAllBoard");
				}else {
					message = "密码错误，请重新输入！";
					session.setAttribute("message", message);
					RequestDispatcher rd = request.getRequestDispatcher("input/login.jsp");
					rd.forward(request, response);
				}
			}else {
				message = "手机号错误，请重新输入！";
				session.setAttribute("message", message);
				RequestDispatcher rd = request.getRequestDispatcher("input/login.jsp");
				rd.forward(request, response);
			}
		}
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
