package gameheaven.bbs.dao;
import java.util.List;
import gameheaven.bbs.entity.*;

public interface BoardDao {
	/**
	 * 根据boardId值来查询版块名称
	 * @param boardId
	 * @return 查询到的版块
	 */
	public Board findBoardById(Integer boardId);
	/**
	 * 查询board表所有内容
	 * @return boardList
	 */
	public List<Board> findAllBoard();
}
