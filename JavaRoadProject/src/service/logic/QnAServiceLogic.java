package service.logic;

import java.util.List;

import domain.Answer;
import domain.Question;
import service.facade.QnAService;
import store.facade.QnAStore;
import store.logic.QnAStoreLogic;

public class QnAServiceLogic implements QnAService {

	private QnAStore store;
	
	public QnAServiceLogic() {
		store = new QnAStoreLogic();
	}
	
	
	@Override
	public void writeQuestion(Question question) {
		store.insertQuestion(question);
	}

	@Override
	public void writeAnswer(Answer answer) {
		store.insertAnswer(answer);
	}

	@Override
	public void modifyQuestion(Question question) {
		store.updateQuestion(question);
	}

	@Override
	public void modifyAnswer(Answer answer) {
		store.updateAnswer(answer);
	}

	@Override
	public Question searchQuestionById(String id) {
		return store.selectQuestionById(id);
	}

	@Override
	public List<Question> searchQuestions() {
		return store.selectQuestions();
	}

	@Override
	public Answer searchAnswerId(String id) {
		return store.selectAnswerId(id);
	}

	@Override
	public List<Question> searchQuestionsByTitle(String keyword) {
		return store.selectQuestionsByTitle(keyword);
	}

	@Override
	public List<Question> searchQuestionsByContents(String keyword) {
		return store.selectQuestionsByContents(keyword);
	}

	@Override
	public List<Question> searchQuestionsByTag(String tag) {
		return store.selectQuestionsByTag(tag);
	}

	@Override
	public List<Question> searchQuestionByNickname(String nickname) {
		return store.selectQuestionByNickname(nickname);
	}

	@Override
	public void removeQuestion(String id) {
		store.deleteQuestion(id);
	}

	@Override
	public void removeAnswer(String id) {
		store.deleteAnswer(id);
	}

	

}
