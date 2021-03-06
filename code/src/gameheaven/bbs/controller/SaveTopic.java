package gameheaven.bbs.controller;

import gameheaven.bbs.serviceImpl.*;
import gameheaven.bbs.entity.*;
import gameheaven.bbs.service.*;
import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SaveTopic
 */
@WebServlet("/saveTopic")
public class SaveTopic extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveTopic() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//定义标记值
		String message = null;
		//定义服务
		TopicService topicService = new TopicServiceImpl();
		HttpSession session = request.getSession();
		//页面传值
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		Board board = (Board) session.getAttribute("board");
		User user = (User) session.getAttribute("user");
		Date date = new Date();
		if(session.getAttribute("user") == null) {
			message = "请先登录过后再发帖!";
			session.setAttribute("message", message);
			response.sendRedirect("input/login.jsp");
		}else if (title == ""){
			message = "请输入帖子标题!";
			session.setAttribute("message", message);
			response.sendRedirect("show/Topicindex.jsp");
		}else if (content == "") {
			message = "请输入帖子内容!";
			session.setAttribute("message", message);
			response.sendRedirect("show/Topicindex.jsp");
		}else {
			//定义新帖子
			Topic topic = new Topic();
			topic.setBoardId(board.getBoardId());
			topic.setUserId(user.getUserId());
			topic.setTime(date.toString());
			//调用业务
			topic.setTitle(title);
			topic.setContent(content);
			topicService.insertTopic(topic);
			//跳转
			response.sendRedirect("findBoardTopic");
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
