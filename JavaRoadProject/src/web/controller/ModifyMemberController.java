package web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.Member;
import service.facade.MemberService;
import service.logic.MemberServiceLogic;


@WebServlet("/member/ModifyMember.do")
public class ModifyMemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private MemberService service;
	public ModifyMemberController(){
		service = new MemberServiceLogic();
	}
       
 

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String memberId = request.getParameter("memberId");
		Member member = service.searchMemberById(memberId);
		
		request.setAttribute("member", member);
		request.getRequestDispatcher("/views/modifyMember.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Member member = service.searchMemberById(request.getParameter("memberId"));
	
		member.setMemberId(member.getMemberId());
		member.setPassword(request.getParameter("password"));
		member.setNickname(request.getParameter("nickname"));
		member.setPoint(member.getPoint());
		member.setTimeLimit(request.getParameter("timeLimit"));
		member.setCurrentProgress(member.getCurrentProgress());
		member.setGoalProgress(Integer.parseInt(request.getParameter("goalProgress")));
		
		service.modifyMember(member);
		response.sendRedirect(request.getContextPath() + "/views/myPage.jsp");
		
		
	}

}
