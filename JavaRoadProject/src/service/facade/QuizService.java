package service.facade;

import java.util.List;

import domain.Quiz;

public interface QuizService {
	
	public List<Quiz> searchQuizById(int id);
	public List<Quiz> searchQuizByTag(String tag);
	public List<Quiz> searchQuizesOrderByLikes();
	public void modifyQuiz(Quiz quiz);
	public void wrtieQuiz(Quiz quiz);
	public void deleteQuiz(String id);

}
