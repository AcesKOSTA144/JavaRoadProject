package service.facade;

import java.util.List;

import domain.Code;

public interface CodeService {
	
	public Code searchCodeById(String id);
	public List<Code> searchCodes();
	public List<Code> searchCodesOrderByLikes();
	public List<Code> searchCodesByMemberId(String memberId);
	public List<Code> searchCodesByMemberNickname(String memberNickname);
	public void writeCode(Code code);
	public void modifyCode(Code code);
	public void deleteCode(String id);

}
