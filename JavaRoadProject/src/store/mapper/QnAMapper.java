package store.mapper;

import java.util.List;

import domain.Answer;
import domain.Question;

public interface QnAMapper {

	public void insertQuestion(Question question);//

	public void insertAnswer(Answer answer);//

	public void updateQuestion(Question question);//

	public void updateAnswer(Answer answer);//

	public Question selectQuestionById(String id);//

	public List<Question> selectQuestions();//

	public Answer selectAnswerId(String id);//

	public List<Question> selectQuestionsByTitle(String keyword);//

	public List<Question> selectQuestionsByContents(String keyword);//

	public List<Question> selectQuestionsByTag(String tag);//

	public List<Question> selectQuestionByNickname(String nickname);

	public void deleteQuestion(String id);//

	public void deleteAnswer(String id);//

}
