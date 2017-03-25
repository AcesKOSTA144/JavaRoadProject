package web.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import web.nameGenerator;

@WebServlet("/saveCode.do")
@MultipartConfig
public class SaveCodeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		nameGenerator name = new nameGenerator();
		Part part = request.getPart("code");
		String fileName = name.nameGenerating("19")+".html";
		String applicationPath = request.getServletContext().getRealPath("");
        String uploadFilePath = applicationPath + "/html/codePlayground/";
		part.write(uploadFilePath + fileName);
	}
}