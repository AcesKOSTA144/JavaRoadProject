package service.logic;

import java.util.List;

import domain.Code;
import service.facade.CodeService;
import store.facade.CodeStore;
import store.logic.CodeStoreLogic;

public class CodeServiceLogic implements CodeService{
	
	private CodeStore store;
	
	public CodeServiceLogic() {
		store = new CodeStoreLogic();
	}

	@Override
	public Code searchCodeById(int id) {
		return store.selectCodeById(id);
	}

	@Override
	public List<Code> searchCodes() {
		return store.selectCodes();
	}

	@Override
	public List<Code> searchCodesOrderByLikes() {
		return store.selectCodesOrderByLikes();
	}
	
	@Override
	public List<Code> searchCodesByMemberId(String memberId) {
		return store.selectCodesByMemberId(memberId);
	}

	@Override
	public List<Code> searchCodesByMemberNickname(String memberNickname) {
		return store.selectCodesByMemberNickname(memberNickname);
	}
	
	@Override
	public void writeCode(Code code) {
		
	}

	@Override
	public void modifyCode(Code code) {
		store.updateCode(code);
	}

	@Override
	public void deleteCode(int id) {
		store.deleteCode(id);
	}
}
