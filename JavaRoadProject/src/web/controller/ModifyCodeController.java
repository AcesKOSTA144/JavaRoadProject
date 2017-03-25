package web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.Code;
import service.facade.CodeService;
import service.logic.CodeServiceLogic;

@WebServlet("/modifyCode.do")
public class ModifyCodeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CodeService codeService = new CodeServiceLogic();
		Code code = new Code();
		if(request.getParameter("uid") != null){
			String upLike = request.getParameter("uid");
			code = codeService.searchCodeById(upLike);
			int likesCount = code.getLikes();
			likesCount++;
			code.setLikes(likesCount);
			codeService.modifyCode(code);
		}else{
			String donwLike = request.getParameter("did");
			code = codeService.searchCodeById(donwLike);
			int likesCount = code.getLikes();
			likesCount--;
			if(likesCount > 0){
				code.setLikes(likesCount);
				codeService.modifyCode(code);
			}
		}
		
		request.getRequestDispatcher("/codeList.do").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	
}
