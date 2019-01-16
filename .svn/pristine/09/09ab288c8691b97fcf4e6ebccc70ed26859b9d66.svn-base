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
 * Servlet implementation class FindBoardTopic
 */
@WebServlet("/findBoardTopic")
public class FindBoardTopic extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindBoardTopic() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String IdStr = request.getParameter("boardId");
		List<Topic> topicList = new ArrayList<Topic>();
		BoardService boardService = new BoardServiceImpl();
		TopicService topicService = new TopicServiceImpl();
		if(IdStr == null) {
			Board board = (Board) session.getAttribute("board");
			topicList = topicService.findBoardTopic(board.getBoardId());
			board = boardService.findBoardById(board.getBoardId());
			session.setAttribute("topicList", topicList);
			session.setAttribute("board", board);
		}else {
			Integer boardId = Integer.parseInt(IdStr);
			Board board = new Board();
			//调用业务
			topicList = topicService.findBoardTopic(boardId);
			board = boardService.findBoardById(boardId);
			session.setAttribute("topicList", topicList);
			session.setAttribute("board", board);
		}
		//跳转
		response.sendRedirect("show/Topicindex.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
