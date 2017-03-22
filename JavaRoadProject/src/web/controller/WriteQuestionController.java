package web.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.Question;
import service.facade.QnAService;
import service.logic.QnAServiceLogic;

@WebServlet("/WriteQuestion.do")
public class WriteQuestionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String id= request.getParameter("id");
		QnAService service = new QnAServiceLogic();
		
		Question q = service.searchQuestionById(id);
		request.setAttribute("question", q);
		
		request.getRequestDispatcher("/views/createQuestion.jsp").forward(request, response);
	}	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String contents= request.getParameter("contents");
		String tag= request.getParameter("tag");
		String member_id=request.getParameter("member_id");
		String member_nickname=request.getParameter("member_nickname");
		
		Question q = new Question();
		QnAService service = new QnAServiceLogic();
		service.writeQuestion(q);
		response.sendRedirect("QnAList.do");
		
		
		
	}

}
