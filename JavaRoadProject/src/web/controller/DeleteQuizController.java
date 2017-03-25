package web.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.Quiz;
import service.facade.QuizService;
import service.logic.QuizServiceLogic;


@WebServlet("/quiz/deleteQuiz.do")
public class DeleteQuizController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QuizService service = new QuizServiceLogic();
		String id = request.getParameter("id");
		String tag = request.getParameter("tag");
		String memberId = request.getParameter("memberId");
		
		service.deleteQuiz(id);
		
		response.sendRedirect(request.getContextPath() + "/member/quizFactory.do?tag=" + tag + "&memberId=" + memberId);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
