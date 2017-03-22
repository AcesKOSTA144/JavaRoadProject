package web.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.Member;
import service.facade.MemberService;
import service.logic.MemberServiceLogic;


@WebServlet("/member/ranking.do")
public class RankingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberService service = new MemberServiceLogic();
		String memberId = request.getParameter("memberId");
		Member member = service.searchMemberById(memberId);
		List<Member> list = service.searchMembersOrderByPoint();
		List<Member> topRankTemp = new ArrayList<Member>();
		int count = 0;
		for(Member m : list){
			if(count == 5){
				break;
			}else{
				topRankTemp.add(m);
				count += 1;
			}
		}
		
		int temp = 0;
		int rank = 1;
		for (Member m : list) {
			if (m.getMemberId().equals(member.getMemberId())){
				temp = rank;
				break;
			}else{
				rank += 1;
			}	
			
		}
		request.setAttribute("rank", temp);
		request.setAttribute("member", member);
		request.setAttribute("rankList", topRankTemp);
		request.getRequestDispatcher("/views/rankingList.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
