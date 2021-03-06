package gameheaven.bbs.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import gameheaven.bbs.entity.Reply;
import gameheaven.bbs.entity.User;
import gameheaven.bbs.service.ReplyService;
import gameheaven.bbs.serviceImpl.ReplyServiceImpl;

/**
 * Servlet implementation class SaveReply
 */
@WebServlet("/saveReply")
public class SaveReply extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveReply() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String message = null;
		HttpSession session = request.getSession();
		//判断非空,获取请求
		String content = request.getParameter("content");
		Integer topicId = Integer.parseInt(request.getParameter("topicId"));
		User user = (User) session.getAttribute("user");
		if(session.getAttribute("user") == null) {
			message = "请先登录过后再回复!";
			session.setAttribute("message", message);
			response.sendRedirect("input/login.jsp");
		}else {
			//处理参数
			Reply reply = new Reply();
			Date date = new Date();
			//调用业务
			ReplyService replyService = new ReplyServiceImpl();
			reply.setTopicId(topicId);
			reply.setUserId(user.getUserId());
			reply.setReplyTime(date.toString());
			reply.setContent(content);
			replyService.insertReply(reply);
			//跳转
			session.setAttribute("topicId", topicId);
			response.sendRedirect("findTopicById");
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
