package web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.Member;
import service.facade.MemberService;
import service.logic.MemberServiceLogic;

@WebServlet("/member/myPage.do")
public class MyPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MemberService service = new MemberServiceLogic();
		String memberId = request.getParameter("memberId");
		Member member = service.searchMemberById(memberId);
		List<Member> list = service.searchMembersOrderByPoint();
		
		
//		int indexVal = list.indexOf('"'+ member.getMemberId()+'"');
//		int rank = indexVal;
		
		int temp = 0;
		int rank = 1;
		for (Member m : list) {
			if (m.getMemberId().equals(member.getMemberId())){
				temp = rank;
				break;
			}else/* if(m.getMemberId() != member.getMemberId())*/{
				rank += 1;
			}	
			
		}

		
		request.setAttribute("rank", temp);
		request.setAttribute("member", member);
		request.getRequestDispatcher("/views/myPage.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
