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

@WebServlet("/quiz/quizLike.do")
public class QuizFactoryLikeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		QuizService qService = new QuizServiceLogic();
		Quiz quiz = new Quiz();
		if (request.getParameter("memberId") != null) {
			if (request.getParameter("uid") != null) {
				quiz = qService.searchQuizById(request.getParameter("uid"));
				int likesCount = quiz.getLikes();
				likesCount++;
				quiz.setLikes(likesCount);
				qService.modifyQuiz(quiz);
			} else if (request.getParameter("did") != null) {
				quiz = qService.searchQuizById(request.getParameter("did"));
				int likesCount = quiz.getLikes();
				likesCount--;
				quiz.setLikes(likesCount);
				qService.modifyQuiz(quiz);
			}
		}

		 String tag = request.getParameter("tag");
		 String memberId = request.getParameter("memberId");

		request.getRequestDispatcher("/quiz/quizFactory.do?tag=" + tag + "&memberId=" + memberId).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
