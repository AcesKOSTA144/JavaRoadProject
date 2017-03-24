package store.mapper;

import java.util.List;

import domain.Member;
import domain.Quiz;


public interface QuizMapper {
	Quiz selectQuizById(int id);
	List<Quiz> selectQuizByTag(String tag);
	List<Quiz> selectQuizesOrderByLikes();
	void updateQuiz(Quiz quiz);
	void createQuiz(Quiz quiz);
	void deleteQuiz(int id);
	
}
