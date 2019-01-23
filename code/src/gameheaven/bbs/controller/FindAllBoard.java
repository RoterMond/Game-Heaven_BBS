package gameheaven.bbs.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
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
 * Servlet implementation class FindAllBoard
 */
@WebServlet("/findAllBoard")
public class FindAllBoard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindAllBoard() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		BoardService boardService = new BoardServiceImpl();
		List<Board> boardList = new ArrayList<Board>();
		TopicService topicService = new TopicServiceImpl();
		List<Integer> topicNumList = new ArrayList<Integer>();
		ReplyService replyService = new ReplyServiceImpl();
		List<Integer> boardReplyNumList = new ArrayList<Integer>();
		List<String> postTimeList = new ArrayList<String>();
		//调用业务
		boardList = boardService.findAllBoard();
		//根据版块id来查询有关topic数量
		for(Board board : boardList) {
			//查询到每一个版块对应的帖子列表数量
			List<Topic> topicList = new ArrayList<Topic>();
			topicList = topicService.findBoardTopic(board.getBoardId());
			int topicReplyNum = 0;
			//查询每一个帖子对应的回复数量
			for(Topic topic : topicList) {
				List<Reply> replyList = new ArrayList<Reply>();
				replyList = replyService.findAllReply(topic.getTopicId());
				topicReplyNum += replyList.size();
			}
			topicNumList.add(topicList.size());
			boardReplyNumList.add(topicReplyNum);
			postTimeList.add(topicList.get(0).getTime());
		}
		//传参跳转
		session.setAttribute("boardList", boardList);
		session.setAttribute("topicNumList", topicNumList);
		session.setAttribute("boardReplyNumList", boardReplyNumList);
		session.setAttribute("postTimeList", postTimeList);
		response.sendRedirect(request.getContextPath()+"/show/index.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
