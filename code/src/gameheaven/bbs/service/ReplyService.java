package gameheaven.bbs.service;

import java.util.List;

import gameheaven.bbs.entity.Reply;

public interface ReplyService {
	public List<Reply> findAllReply(Integer topicId);
	
	public int insertReply(Reply reply);
}
