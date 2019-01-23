/**
 * 
 */
/**
 * @author PQX
 *
 */
package gameheaven.bbs.serviceImpl;
import gameheaven.bbs.entity.*;
import gameheaven.bbs.service.*;
import java.util.List;
import gameheaven.bbs.dao.*;
import gameheaven.bbs.daoImpl.*;

public class BoardServiceImpl implements BoardService{
	BoardDao dao = new BoardDaoImpl();

	@Override
	public Board findBoardById(Integer boardId) {
		// TODO Auto-generated method stub
		return dao.findBoardById(boardId);
	}

	@Override
	public List<Board> findAllBoard() {
		// TODO Auto-generated method stub
		return dao.findAllBoard();
	}
	

	
}

