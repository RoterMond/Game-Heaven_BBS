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

public class TopicServiceImpl implements TopicService{
	TopicDao dao = new TopicDaoImpl();
	@Override
	public List<Topic> findBoardTopic(Integer boardId) {
		// TODO Auto-generated method stub
		return dao.findBoardTopic(boardId);
	}
	@Override
	public Topic findTopicById(Integer topicId) {
		// TODO Auto-generated method stub
		return dao.findTopicById(topicId);
	}
	@Override
	public int insertTopic(Topic topic) {
		// TODO Auto-generated method stub
		return dao.insertTopic(topic);
	}
	

	
}

