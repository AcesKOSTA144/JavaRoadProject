package store.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import domain.Quiz;
import store.facade.QuizStore;
import store.mapper.QuizMapper;

public class QuizStoreLogic implements QuizStore {
	
	private SqlSessionFactory factory;

	public QuizStoreLogic() {
		factory = SqlSessionFactoryProvider.getSqlSessionFactory();
	}
	

	@Override
	public Quiz selectQuizById(int id) {
		SqlSession session = factory.openSession();
		Quiz quiz = null;
		try {
			QuizMapper mapper = session.getMapper(QuizMapper.class);
			quiz = mapper.selectQuizById(id);
			
		} finally {
			session.close();

		}
		return quiz;
	}

	@Override
	public List<Quiz> selectQuizByTag(String tag) {
		SqlSession session = factory.openSession();
		List<Quiz> list = null;
		try {
			QuizMapper mapper = session.getMapper(QuizMapper.class);
			list = mapper.selectQuizByTag(tag);
		} finally {
			session.close();

		}
		return list;
	}

	@Override
	public List<Quiz> selectQuizesOrderByLikes() {
		SqlSession session = factory.openSession();
		List<Quiz> list = null;
		try {
			QuizMapper mapper = session.getMapper(QuizMapper.class);
			list = mapper.selectQuizesOrderByLikes();
		} finally {
			session.close();

		}
		return list;

	
	}

	@Override
	public void updateQuiz(Quiz quiz) {
		SqlSession session = factory.openSession();
		try {
			QuizMapper mapper = session.getMapper(QuizMapper.class);
			mapper.updateQuiz(quiz);
			session.commit();
		} finally {
			session.close();
		}
	}

	@Override
	public void createQuiz(Quiz quiz) {
		SqlSession session = factory.openSession();
		try {
			QuizMapper mapper = session.getMapper(QuizMapper.class);
			mapper.createQuiz(quiz);
			session.commit();
		} finally {
			session.close();
		}
	}

	@Override
	public void deleteQuiz(int id) {
		SqlSession session = factory.openSession();
		try {
			QuizMapper mapper = session.getMapper(QuizMapper.class);
			mapper.deleteQuiz(id);
			
			session.commit();
			
		} finally {
			session.close();
		}
	}


	
}
