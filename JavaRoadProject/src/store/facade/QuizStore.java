package store.facade;

import java.util.List;

import domain.Quiz;

public interface QuizStore {
	
	Quiz selectQuizById(String id);
	List<Quiz> selectQuizByTag(String tag);
	List<Quiz> selectQuizesOrderByLikes();
	void updateQuiz(Quiz quiz);
	void createQuiz(Quiz quiz);
	void deleteQuiz(String id);

}
