package store.logic;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import domain.Member;
import store.facade.MemberStore;
import store.mapper.MemberMapper;

public class MemberStoreLogic implements MemberStore{
	
	private SqlSessionFactory factory;

	public MemberStoreLogic() {
		factory = SqlSessionFactoryProvider.getSqlSessionFactory();
	}
	

	@Override
	public void createMember(Member member) {
		SqlSession session = factory.openSession();
		try {
			MemberMapper mapper = session.getMapper(MemberMapper.class);
			mapper.createMember(member);
			session.commit();
		} finally {
			session.close();
		}
	}

	@Override
	public void updateMember(Member member) {
		SqlSession session = factory.openSession();
		try {
			MemberMapper mapper = session.getMapper(MemberMapper.class);
			mapper.updateMember(member);
			session.commit();
		} finally {
			session.close();
		}
		
	}

	@Override
	public Member selectMemberById(String memberId) {
		SqlSession session = factory.openSession();
		Member member = null;
		try {
			MemberMapper mapper = session.getMapper(MemberMapper.class);
			member = mapper.selectMemberById(memberId);
		} finally {
			session.close();
		}
		return member;
	}

	@Override
	public List<Member> selectMembersOrderByPoint() {
		SqlSession session = factory.openSession();
		List<Member> list = null;
		try {
			MemberMapper mapper = session.getMapper(MemberMapper.class);
			list = mapper.selectMembersOrderByPoint();
		} finally {
			session.close();

		}
		return list;

	}


}
