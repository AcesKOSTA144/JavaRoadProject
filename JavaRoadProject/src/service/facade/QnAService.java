package service.facade;

import java.util.List;

import domain.Answer;
import domain.Question;

public interface QnAService {
	
	public void writeQuestion(Question question);
	public void writeAnswer(Answer answer);
	public void modifyQuestion(Question question);
	public void modifyAnswer(Answer answer);
	public Question searchQuestionById(String id); 
	public List<Question> searchQuestions();
	public Answer searchAnswerId(String id);
	public List<Question> searchQuestionsByTitle(String keyword); 
	public List<Question> searchQuestionsByContents(String keyword);
	public List<Question> searchQuestionsByTag(String tag);
	public List<Question> searchQuestionByNickname(String nickname); 
	public void removeQuestion(String id);
	public void removeAnswer(String id);

}
