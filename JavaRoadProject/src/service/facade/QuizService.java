package service.facade;

import java.util.List;

import domain.Quiz;

public interface QuizService {
	
	Quiz searchQuizById(int id);
	List<Quiz> searchQuizByTag(String tag);
	List<Quiz> searchQuizesOrderByLikes();
	
	void modifyQuiz(Quiz quiz);
	void wrtieQuiz(Quiz quiz);
	void deleteQuiz(int id);

}
