package web.controller;

import java.io.IOException;
import java.util.ArrayList;
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

@WebServlet("/quiz/quizFactoryMyList.do")
public class QuizFactoryMyListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberService mService = new MemberServiceLogic();
		QuizService qService = new QuizServiceLogic();
		Member member = mService.searchMemberById(request.getParameter("memberId"));
		List<Quiz> listOrderByLike = qService.searchQuizesOrderByLikes(); 
		List<Quiz> myList = new ArrayList<>();
		for(Quiz my : listOrderByLike ){
			if(my.getMember().getMemberId().equals(member.getMemberId())){
				
				myList.add(my);
			}
			
		}
		
		request.setAttribute("member", member);
		request.setAttribute("quizs", myList);
		request.getRequestDispatcher("/views/quizFactory.jsp").forward(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
