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

@WebServlet("/member/register.do")
public class NewMemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		resp.sendRedirect("newMember.jsp");
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String memberId = req.getParameter("memberId");
		String password = req.getParameter("password");
		String nickname = req.getParameter("nickname");
		int point = 0;
		int currentProgress = 0;
		int goalProgress = 0;
		
		Member member = new Member();
		
		member.setMemberId(memberId);
		member.setPassword(password);
		member.setNickname(nickname);
		member.setPoint(point);
		member.setCurrentProgress(currentProgress);
		member.setGoalProgress(goalProgress);
		
		MemberService service = new MemberServiceLogic();
		
		service.registerMember(member);
		
		resp.sendRedirect(req.getContextPath() + "/views/index.jsp");
	}

}
