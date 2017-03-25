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
		String id = request.getParameter("id");
		String memberId = "Zin";	// 삭제 후 내코드 보기로 가기 위해 멤버아이디를 받아와야합니다.
		codeService.deleteCode(id);
		List<Code> myCodeList = codeService.searchCodesByMemberId(memberId);
		request.setAttribute("Codes", myCodeList);
		request.getRequestDispatcher("/views/myCodeList.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
