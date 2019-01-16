package gameheaven.bbs.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import gameheaven.bbs.entity.*;
import gameheaven.bbs.service.*;
import gameheaven.bbs.serviceImpl.*;

/**
 * Servlet implementation class FindTopicById
 */
@WebServlet("/findTopicById")
public class FindTopicById extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindTopicById() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//接受请求，处理参数
		String IdStr = request.getParameter("topicId");
		HttpSession session = request.getSession();
		if(IdStr == null) {
			Integer topicId = (Integer) session.getAttribute("topicId");
			Topic topic = new Topic();
			User author = new User();
			TopicService topicService = new TopicServiceImpl();
			UserService userService = new UserServiceImpl();
			ReplyService replyService = new ReplyServiceImpl();
			List<Reply> replyList = new ArrayList<Reply>();
			List<User> userList = new ArrayList<User>();
			//HttpSession session = request.getSession();
			//调用业务查询帖子和帖子回复
			topic = topicService.findTopicById(topicId);
			author = userService.findUserById(topic.getUserId());
			replyList = replyService.findAllReply(topicId);
			for(Reply reply : replyList) {
				User user = new User();
				user = userService.findUserById(reply.getUserId());
				userList.add(user);
			}
			request.setAttribute("topic", topic);
			request.setAttribute("user", author);
			request.setAttribute("replyList", replyList);
			request.setAttribute("userList", userList);
		}else {
			Integer topicId = Integer.parseInt(IdStr);
			Topic topic = new Topic();
			User author = new User();
			TopicService topicService = new TopicServiceImpl();
			UserService userService = new UserServiceImpl();
			ReplyService replyService = new ReplyServiceImpl();
			List<Reply> replyList = new ArrayList<Reply>();
			List<User> userList = new ArrayList<User>();
			//HttpSession session = request.getSession();
			//调用业务查询帖子和帖子回复
			topic = topicService.findTopicById(topicId);
			author = userService.findUserById(topic.getUserId());
			replyList = replyService.findAllReply(topicId);
			for(Reply reply : replyList) {
				User user = new User();
				user = userService.findUserById(reply.getUserId());
				userList.add(user);
			}
			request.setAttribute("topic", topic);
			request.setAttribute("user", author);
			request.setAttribute("replyList", replyList);
			request.setAttribute("userList", userList);
		}
	
		
		//跳转，重定向到该帖子页面
		
		RequestDispatcher rd = request.getRequestDispatcher("show/Topic.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
