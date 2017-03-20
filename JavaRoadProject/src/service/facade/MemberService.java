package service.facade;

import java.util.List;

import domain.Member;

public interface MemberService {
	
	public Member searchMemberById(String id);
	public List<Member> searchMembersOrderByPoint();
	public void modifyMember(Member member);
	public boolean login(String id, String password);
	public void registerMember(Member member);

}
