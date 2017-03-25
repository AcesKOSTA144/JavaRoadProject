package web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.Member;
import domain.Quiz;
import service.facade.MemberService;
import service.facade.QuizService;
import service.logic.MemberServiceLogic;
import service.logic.QuizServiceLogic;

@WebServlet("/quiz/newQuiz.do")
public class NewQuizController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		QuizService qService = new QuizServiceLogic();
		MemberService mService = new MemberServiceLogic();

		Quiz quiz = new Quiz();
		String title = request.getParameter("title");
		String question = request.getParameter("question");
		String answer = request.getParameter("option");
		String option1 = request.getParameter("option1");
		String option2 = request.getParameter("option2");
		String option3 = request.getParameter("option3");
		String tag = request.getParameter("tag");
		int likes = 0;

//		List<Quiz> list = qService.searchQuizesOrderByLikes();
//		String temp = null;
//		int count = 0;
//		for (Quiz m : list) {
//			count += 1;
//			temp = "q" + count + 1;	
//		}

//		int listSize = list.size();
//		String id = "quiz" + listSize + 1;
//		System.out.println(id);
//		quiz.setId(id);

		quiz.setTitle(title);
		quiz.setQuestion(question);
		quiz.setOption1(option1);
		quiz.setOption2(option2);
		quiz.setOption3(option3);
		quiz.setAnswer(answer);
		quiz.setTag(tag);
		quiz.setLikes(likes);

		Member member = mService.searchMemberById(request.getParameter("memberId"));

		member.getMemberId();
		member.getNickname();

		quiz.setMember(member);

		qService.wrtieQuiz(quiz);

		response.sendRedirect(
				request.getContextPath() + "/member/quizFactory.do?tag=" + tag + "&memberId=" + member.getMemberId());
	}

}
