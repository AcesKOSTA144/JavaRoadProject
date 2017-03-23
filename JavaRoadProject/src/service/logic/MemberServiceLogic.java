package service.logic;

import java.util.List;

import domain.Member;
import service.facade.MemberService;
import store.facade.MemberStore;
import store.logic.MemberStoreLogic;

public class MemberServiceLogic implements MemberService {
	
	private MemberStore store;
	
	public MemberServiceLogic() {
		store = new MemberStoreLogic();
	}

	@Override
	public Member searchMemberById(String memberId) {
		return store.selectMemberById(memberId);
	}

	@Override
	public List<Member> searchMembersOrderByPoint() {
		return store.selectMembersOrderByPoint();
	}

	@Override
	public void modifyMember(Member member) {
		store.updateMember(member);
	}

	@Override
	public void registerMember(Member member) {
		store.createMember(member);
	}
	

}
