package web.controller;

import java.io.IOException;
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


@WebServlet("/quiz/modifyQuiz.do")
public class ModifyQuizController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QuizService qService = new QuizServiceLogic();
		MemberService mService = new MemberServiceLogic();
		String id = request.getParameter("quizId");
		
		Quiz quiz = qService.searchQuizById(id);
		String title = request.getParameter("title");
		String question = request.getParameter("question");
		String option1= request.getParameter("option1");
		String option2 = request.getParameter("option2");
		String option3 = request.getParameter("option3");
		String answer = request.getParameter("options");
		String tag = request.getParameter("tag");
//		int likes = Integer.parseInt(request.getParameter("likes"));
		
		quiz.setTitle(title);
		quiz.setQuestion(question);
		quiz.setOption1(option1);
		quiz.setOption2(option2);
		quiz.setOption3(option3);
		quiz.setAnswer(answer);
		quiz.setTag(tag);
//		quiz.setTimeStemp();
		quiz.setLikes(quiz.getLikes());
		Member member = mService.searchMemberById(request.getParameter("memberId"));

		member.setMemberId(member.getMemberId());
		member.setNickname(member.getNickname());
		
		quiz.setMember(member);
		
		qService.modifyQuiz(quiz);
		response.sendRedirect(request.getContextPath() + "/quiz/quizFactory.do?tag=" + tag + "&memberId=" + member.getMemberId());
	}

}
