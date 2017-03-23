package web.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.exception.YzRuntimeException;
import domain.Member;
import service.facade.MemberService;
import service.logic.MemberServiceLogic;



@WebServlet("/member/login.do")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Cookie[] cookies = req.getCookies();
		if(cookies !=null){
			for(Cookie cookie : cookies){
				if("memberId".equals(cookie.getName())){
					req.setAttribute("memberId", cookie.getValue());
				}
			}
		}
		req.getRequestDispatcher("/views/login.jsp").forward(req, resp);
		
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		MemberService service = new MemberServiceLogic();
		String memberId = req.getParameter("memberId");
		String password = req.getParameter("password");
		String saveIdYn = req.getParameter("saveIdYn");
		
		if("Y".equals(saveIdYn)){
			Cookie cookie = new Cookie("memberId", memberId);
			cookie.setMaxAge(365*24*60*60);
			cookie.setPath("/");
			resp.addCookie(cookie);
			
		}else {
			Cookie cookie = new Cookie("memberId", null);
			cookie.setMaxAge(0);
			resp.addCookie(cookie);
		}
				
		Member member = service.searchMemberById(memberId);
		
		if(member != null && memberId.equals(member.getMemberId())&&password.equals(member.getPassword())){
			HttpSession session = req.getSession();
			session.setAttribute("loginMember", member);
			resp.sendRedirect(req.getContextPath()+ "/views/index.jsp");
		}else {
			HttpSession session = req.getSession(false);
			if(session != null){
				session.invalidate();
				resp.sendRedirect(req.getContextPath() + "/views/login.jsp");
			}
			throw new YzRuntimeException("로그인 정보를 확인하세요.");
		}
		
		
	}
}
