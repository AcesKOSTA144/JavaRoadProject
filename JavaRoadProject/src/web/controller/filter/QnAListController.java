package web.controller.filter;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.Question;
import service.facade.QnAService;
import service.logic.QnAServiceLogic;

@WebServlet("/QnAList.do")
public class QnAListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		
		QnAService service = new QnAServiceLogic();
		
		List<Question> list = service.searchQuestions();
		request.setAttribute("questions", list);
		
		request.getRequestDispatcher("/views/qnaList.jsp").forward(request, response);
	}


}
