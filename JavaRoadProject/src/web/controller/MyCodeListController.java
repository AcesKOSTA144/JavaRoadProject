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

@WebServlet("/myCodeList.do")
public class MyCodeListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CodeService codeService = new CodeServiceLogic();
		String memberId = "Emma";	// 내 코드 보기 기능으로 세션에서 멤버아이디를 가져와야 합니다.
		List<Code> myCodeList = new ArrayList<>();
		if(memberId == null || memberId == ""){
			 
		}else{
			myCodeList = codeService.searchCodesByMemberId(memberId);
		}
		request.setAttribute("Codes", myCodeList);
		request.getRequestDispatcher("/views/myCodeList.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
