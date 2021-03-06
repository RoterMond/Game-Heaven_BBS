package gameheaven.bbs.service;

import java.util.List;
import gameheaven.bbs.entity.*;

public interface TopicService {
	
	public List<Topic> findBoardTopic(Integer boardId);
	
	public Topic findTopicById(Integer topicId);
	
	public int insertTopic(Topic topic);
}
