package web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.Code;
import service.facade.CodeService;
import service.logic.CodeServiceLogic;

@WebServlet("/deleteCode.do")
public class DeleteCodeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CodeService codeService = new CodeServiceLogic();
		int id = Integer.parseInt(request.getParameter("id"));
		String memberId = "JangDG";
		codeService.deleteCode(id);
		List<Code> myCodeList = codeService.searchCodesByMemberId(memberId);
		request.setAttribute("Codes", myCodeList);
		request.getRequestDispatcher("/views/myCodeList.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
