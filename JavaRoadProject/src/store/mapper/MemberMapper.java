package store.mapper;

import java.util.List;

import domain.Member;


public interface MemberMapper {
	void createMember(Member member);
    void updateMember(Member member);
    Member selectMemberById(String memberId);
    List<Member> selectMembersOrderByPoint();
	
}
