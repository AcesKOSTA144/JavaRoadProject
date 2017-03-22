package store.mapper;

import java.util.List;

import domain.Code;

public interface CodeMapper {

	public Code selectCodeById(int id);
	public List<Code> selectCodes();
	public List<Code> selectCodesOrderByLikes();
	public List<Code> selectCodesByMemberId(String memberId);
	public void insertCode(Code code);
	public void updateCode(Code code);
	public void deleteCode(int id);
	
}
