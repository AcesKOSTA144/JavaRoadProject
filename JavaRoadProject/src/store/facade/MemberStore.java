package store.facade;

import java.util.List;

import domain.Member;

public interface MemberStore{
	void createMember(Member member);
    void updateMember(Member member);
    Member selectMemberById(String memberId);
    List<Member> selectMembersOrderByPoint();
}
