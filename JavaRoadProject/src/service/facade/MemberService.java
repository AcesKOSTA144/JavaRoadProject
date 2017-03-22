package service.facade;

import java.util.List;

import domain.Member;

public interface MemberService {
	
	Member searchMemberById(String memberId);
	List<Member> searchMembersOrderByPoint();
	void modifyMember(Member member);
	void registerMember(Member member);

}
