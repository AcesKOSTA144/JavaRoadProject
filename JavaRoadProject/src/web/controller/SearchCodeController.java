package web.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.Code;
import service.facade.CodeService;
import service.logic.CodeServiceLogic;

@WebServlet("/searchCode.do")
public class SearchCodeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CodeService codeService = new CodeServiceLogic();
		String memberNickname = request.getParameter("name");
		List<Code> codeList = new ArrayList<>();
		if(memberNickname != null || memberNickname != ""){
			codeList = codeService.searchCodesByMemberNickname(memberNickname);
		}
		request.setAttribute("Codes", codeList);
		request.getRequestDispatcher("/views/codeList.jsp").forward(request, response);
	}
}
