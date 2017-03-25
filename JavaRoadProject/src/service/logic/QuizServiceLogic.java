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
	public Quiz searchQuizById(String id) {
		return store.selectQuizById(id);
	}

	@Override
	public List<Quiz> searchQuizByTag(String tag) {
		return store.selectQuizByTag(tag);
	}

	@Override
	public List<Quiz> searchQuizesOrderByLikes() {
		return store.selectQuizesOrderByLikes();
	}

	@Override
	public void modifyQuiz(Quiz quiz) {
		store.updateQuiz(quiz);
	}

	@Override
	public void wrtieQuiz(Quiz quiz) {
		store.createQuiz(quiz);
	}

	@Override
	public void deleteQuiz(String id) {
		store.deleteQuiz(id);
		
	}

}
