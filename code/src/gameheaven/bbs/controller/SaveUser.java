package gameheaven.bbs.controller;
import gameheaven.bbs.serviceImpl.*;
import gameheaven.bbs.entity.*;
import gameheaven.bbs.service.UserService;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SaveStudent
 */
@WebServlet("/saveUser.do")
public class SaveUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//接受请求，处理参数
		HttpSession session = request.getSession();
		String message = null;
		
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String age = request.getParameter("age");
		
		if ((userName == "") || (password == "") || (phone == "") || (email == "") || age == "") {
			message = "有未填选项！";
			session.setAttribute("message", message);
			response.sendRedirect("input/register.jsp");
		}else {
			User user = new User();
			UserService userService = new UserServiceImpl();
			user.setUserName(userName);
			user.setPassword(password);
			user.setPhone(Long.parseLong(phone));
			user.setEmail(email);
			user.setType(1);
			user.setAge(Integer.parseInt(age));
			user.setSex(Integer.parseInt(request.getParameter("sex")));
			
			if(userService.findUserByPhone(user.getPhone()) != null) {
				message = "手机号已被注册！";
				session.setAttribute("message", message);
				response.sendRedirect("input/register.jsp");
			}else if(String.valueOf(user.getPhone()).length() != 11){
				message = "手机号不为11或为空！";
				session.setAttribute("message", message);
				response.sendRedirect("input/register.jsp");
			}else if(!request.getParameter("repassword").equals(user.getPassword())){
				message = "两次密码输入不同！";
				session.setAttribute("message", message);
				response.sendRedirect("input/register.jsp");
			}else {
				//调用业务
				userService.insertUser(user);
				message = "注册一位用户成功！";
				session.setAttribute("message", message);
				response.sendRedirect("show/index.jsp");
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
