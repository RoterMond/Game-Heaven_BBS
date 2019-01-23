package gameheaven.bbs.service;

import java.util.List;

import gameheaven.bbs.entity.Board;

public interface BoardService {
	public Board findBoardById(Integer boardId);
	
	public List<Board> findAllBoard();
}
