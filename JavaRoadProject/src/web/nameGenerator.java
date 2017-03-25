package web;

import domain.Code;
import service.facade.CodeService;
import service.logic.CodeServiceLogic;

public class nameGenerator {
	
	private CodeService codeService;
	
	public nameGenerator() {
		codeService = new CodeServiceLogic();
	}
	
	public String nameGenerating(String id){
		Code code = new Code();
		String fileName = null;
		code = codeService.searchCodeById(id);
		fileName = code.getMemberId() + "(" +id + ")";
	    return fileName;
	}
}
