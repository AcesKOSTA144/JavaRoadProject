package service.logic;

import java.util.List;

import domain.Quiz;
import service.facade.QuizService;
import store.facade.QuizStore;
import store.logic.QuizStoreLogic;

public class QuizServiceLogic implements QuizService{
	
private QuizStore store;
	
	public QuizServiceLogic() {
		store = new QuizStoreLogic();
	}

	@Override
	public Quiz searchQuizById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Quiz> searchQuizByTag(String tag) {
		return store.selectQuizByTag(tag);
	}

	@Override
	public List<Quiz> searchQuizesOrderByLikes() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void modifyQuiz(Quiz quiz) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void wrtieQuiz(Quiz quiz) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteQuiz(String id) {
		// TODO Auto-generated method stub
		
	}

}
