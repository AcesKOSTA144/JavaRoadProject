package store.facade;

import java.util.List;

import domain.Answer;
import domain.Question;

public interface QnAStore {
	
	public int insertQuestion(Question question);
	public int insertAnswer(Answer answer);
	public int updateQuestion(Question question);
	public int updateAnswer(Answer answer);
	public Question selectQuestionById(String id); 
	public List<Question> selectQuestions();
	public Answer selectAnswerId(String id);
	public List<Question> selectQuestionsByTitle(String keyword); 
	public List<Question> selectQuestionsByContents(String keyword);
	public List<Question> selectQuestionsByTag(String tag);
	public List<Question> selectQuestionByNickname(String nickname); 
	public int deleteQuestion(String id);
	public int deleteAnswer(String id);

}
