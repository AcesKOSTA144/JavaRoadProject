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


@WebServlet("/quiz/quizFactoryOrderByLike.do")
public class QuizFactoryControllerOrderByLike extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberService mService = new MemberServiceLogic();
		QuizService qService = new QuizServiceLogic();
//		String tag = request.getParameter("tag");
//		List<Quiz> list = qService.searchQuizByTag(request.getParameter("tag"));
		Member member = mService.searchMemberById(request.getParameter("memberId"));
		List<Quiz> listOrserByLike = qService.searchQuizesOrderByLikes(); 
		
		
		
		request.setAttribute("member", member);
//		request.setAttribute("tag", tag);
		request.setAttribute("quizs", listOrserByLike);
		request.getRequestDispatcher("/views/quizFactory.jsp").forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
