package store.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import domain.Answer;
import domain.Question;
import oracle.net.aso.q;
import store.facade.QnAStore;
import store.mapper.QnAMapper;

public class QnAStoreLogic implements QnAStore {
	private SqlSessionFactory factory;
	
	public QnAStoreLogic() {
		factory = SqlSessionFactoryProvider.getSqlSessionFactory();
	}

	@Override
	public int insertQuestion(Question question) {
		
		SqlSession session = factory.openSession();
		
	try{
		int result = session.insert("insertQuestion",question);
		if(result>0){
			session.commit();
		}else{
			session.rollback();
		}
		
		return result;
	}finally{
			session.close();
		}
	
		
	}

	@Override
	public int insertAnswer(Answer answer){
		SqlSession session = factory.openSession();
		
	try{	
		int result = session.insert("insertAnswer",answer);
		
		if(result>0){
			session.commit();
		}else{
			session.rollback();
		}
		
		return result;
		
	}finally{
		session.close();
	}
	}

	@Override
	public int updateQuestion(Question question) {
		SqlSession session = factory.openSession();
		
		try{
			int result = session.update("updateQuestion",question);
			if(result>0){
				session.commit();
			}else{
				session.rollback();
			}
			return result;
		}finally{
			session.close();
		}
		
	}

	@Override
	public int updateAnswer(Answer answer) {
		SqlSession session = factory.openSession();
		
		try{
			int result = session.update("updateAnswer",answer);
			if(result>0){
				session.commit();
			}else{
				session.rollback();
			}
			
			return result;
		}finally{
			session.close();
		}
		
	}

	@Override
	public Question selectQuestionById(String id) {
		
		SqlSession session = factory.openSession();
		
		Question question = null;
		
		try{
			QnAMapper mapper = session.getMapper(QnAMapper.class);
			question = mapper.selectQuestionById(id);
		}finally{
			session.close();
		}
		return question;
	}

	@Override
	public List<Question> selectQuestions() {
		SqlSession session = factory.openSession();
		List<Question> list = null;
		
		try{
			QnAMapper mapper = session.getMapper(QnAMapper.class);
			list = mapper.selectQuestions();
		}finally{
			session.close();
		}
		
		return list;
	}

	@Override
	public Answer selectAnswerId(String id) {
		
		SqlSession session = factory.openSession();
		Answer answer = null;
		
		try{
			QnAMapper mapper = session.getMapper(QnAMapper.class);
			answer = mapper.selectAnswerId(id);
		}finally{
			session.close();
		}
		
		return answer;
	}

	@Override
	public List<Question> selectQuestionsByTitle(String keyword) {
		SqlSession session = factory.openSession();
		List<Question> list = null;
		
		try{
			QnAMapper mapper = session.getMapper(QnAMapper.class);
			list = mapper.selectQuestionsByTitle(keyword);
		}finally{
			session.close();
		}
		return list;
	}

	@Override
	public List<Question> selectQuestionsByContents(String keyword) {
		SqlSession session = factory.openSession();
		List<Question> list = null;
		try{
			QnAMapper mapper = session.getMapper(QnAMapper.class);
			list = mapper.selectQuestionsByContents(keyword);
			
		}finally{
			session.close();
		}
		return list;
	}

	@Override
	public List<Question> selectQuestionsByTag(String tag) {
		SqlSession session = factory.openSession();
		List<Question> list = null;
		
		try{
			QnAMapper mapper = session.getMapper(QnAMapper.class);
			list = mapper.selectQuestionsByTag(tag);
		}finally{
			session.close();
		}
		return list;
	}

	@Override
	public List<Question> selectQuestionByNickname(String nickname) {
		SqlSession session = factory.openSession();
		List<Question> list = null;
		
		try{
			QnAMapper mapper = session.getMapper(QnAMapper.class);
			list = mapper.selectQuestionByNickname(nickname);
		}finally{
			session.close();
		}
		return list;
	}

	@Override
	public int deleteQuestion(String id) {
		SqlSession session = factory.openSession();
		
		try{
			int result = session.delete("deleteQuestion",id);
			if(result>0){
				session.commit();
			}else{
				session.rollback();
			}
			return result;
		}finally{
			session.close();
		}
		
	}

	@Override
	public int deleteAnswer(String id) {
		SqlSession session = factory.openSession();
		
		try{
			int result = session.delete("deleteAnswer",id);
			if(result>0){
				session.commit();
			}else{
				session.rollback();
			}
			return result;
		}finally{
			session.close();
		}
		
	}

}
