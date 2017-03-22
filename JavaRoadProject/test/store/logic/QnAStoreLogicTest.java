package store.logic;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Test;

import domain.Answer;
import domain.Question;
import oracle.net.aso.q;

public class QnAStoreLogicTest {
	private QnAStoreLogic store;
	
	
	@Before
	public void setUp(){
		store = new QnAStoreLogic();
		
	}

//	@Test
//	public void testInsertQuestion() {
//		Question question = new Question();
//		question.setId("aaaa");
//		question.setMember_id("aaaa");
//		question.setContents("aaaa");
//		question.setTitle("aaaa");
//		question.setTag("aaa");
//		question.setMember_nickname("add");
//						
//		assertEquals(1, store.insertQuestion(question));
//	}
//	
//	@Test
//	public void testInsertAnswer(){
//		Answer answer = new Answer();
//		answer.setId("aaa");
//		answer.setContents("asd");
//		answer.setMember_id("asd");
//		answer.setQuestion_id("asd");
//		answer.setMember_nickname("asd");
//		
//		assertEquals(1, store.insertAnswer(answer));
//	}
//	
//	@Test
//	public void testupdateQuestion(){
//		Question q = new Question();
//		
//	}
	
	@Test
	public void testSelectQuestionById(){
		Question q = store.selectQuestionById("aaaa");
		
		
		assertNotNull(q);
		assertEquals("aaaa",q.getId());
		
	}
	
//	@Test
//	public void testSelectQuestions(){
//		List<Question> list = new ArrayList<>();
//		list = store.selectQuestions();
//		assertEquals("aaaa", list.get(0).getId());
//		
//		
//	}
//	@Test
//	public void testSelectAnswerId(){
//		
//		Answer a = store.selectAnswerId("asd");
//		assertNotNull(a);
//		assertEquals("asd",a.getQuestion_id());
//	}
//	@Test
//	public void testSelectQuestionsByTitle(){
//		List<Question> list = new ArrayList<>();
//		list = store.selectQuestionsByTitle("aaaa");
//		assertEquals("aaaa", list.get(0).getTitle());
//	}
//	@Test
//	public void testSelectQuestionsByContents(){
//		List<Question> list = new ArrayList<>();
//		list = store.selectQuestionsByContents("aaaa");
//		assertEquals("aaaa",list.get(0).getContents());
//	}
//	
//	@Test
//	public void testSelectQuestionsByTag(){
//		List<Question> list = new ArrayList<>();
//		list= store.selectQuestionsByTag("aaa");
//		assertEquals("aaa", list.get(0).getTag());
//	}
//	@Test
//	public void testSelectQuestionByNickname(){
//		List<Question> list = new ArrayList<>();
//		list = store.selectQuestionByNickname("add");
//		assertEquals("add", list.get(0).getMember_nickname());
//	}

}
