package service.facade;

import java.util.List;

import domain.Code;

public interface CodeService {
	
	public Code searchCodeById(int id);
	public List<Code> searchCodes();
	public List<Code> searchCodesOrderByLikes();
	public void writeCode(Code code);
	public void modifyCode(Code code);
	public void deleteCode(String id);
	

}
