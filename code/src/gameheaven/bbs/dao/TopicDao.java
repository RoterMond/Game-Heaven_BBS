package gameheaven.bbs.dao;
import java.util.List;
import gameheaven.bbs.entity.*;

public interface TopicDao {
	/**
	 * 根据版块的id来查询该版块保存的帖子集
	 * @param boardId
	 * @return 查询到的帖子集
	 */
	public List<Topic> findBoardTopic(Integer boardId);
	/**
	 * 根据帖子id来查询帖子内容
	 * @param topicId
	 * @return 查询到的帖子
	 */
	public Topic findTopicById(Integer topicId);
	/**
	 * 创建一个新的帖子
	 * @param topic
	 * @return
	 */
	public int insertTopic(Topic topic);
}
