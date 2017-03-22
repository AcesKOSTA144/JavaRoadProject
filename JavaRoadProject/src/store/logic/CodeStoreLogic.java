package store.logic;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import domain.Code;
import store.facade.CodeStore;
import store.mapper.CodeMapper;

public class CodeStoreLogic implements CodeStore{
	private SqlSessionFactory factory;
	
	public CodeStoreLogic() {
		factory = SqlSessionFactoryProvider.getSqlSessionFactory();
	}

	@Override
	public Code selectCodeById(int id) {
		SqlSession session = factory.openSession();
		Code code = null;
		try{
			CodeMapper mapper = session.getMapper(CodeMapper.class);
			code = mapper.selectCodeById(id);
		} finally {
			session.close();
		}
		return code;
	}

	@Override
	public List<Code> selectCodes() {
		SqlSession session = factory.openSession();
		List<Code> codeList = new ArrayList<>();
		try{
			CodeMapper mapper = session.getMapper(CodeMapper.class);
			codeList = mapper.selectCodes();
		} finally {
			session.close();
		}
		return codeList;
	}

	@Override
	public List<Code> selectCodesOrderByLikes() {
		SqlSession session = factory.openSession();
		List<Code> codeList = new ArrayList<>();
		try{
			CodeMapper mapper = session.getMapper(CodeMapper.class);
			codeList = mapper.selectCodesOrderByLikes();
		} finally {
			session.close();
		}
		return codeList;
	}

	@Override
	public List<Code> selectCodesByMemberId(String memberId) {
		SqlSession session = factory.openSession();
		List<Code> codeList = new ArrayList<>();
		try{
			CodeMapper mapper = session.getMapper(CodeMapper.class);
			codeList = mapper.selectCodesByMemberId(memberId);
		} finally {
			session.close();
		}
		return codeList;
	}
	
	@Override
	public void insertCode(Code code) {
		SqlSession session = factory.openSession();
		try {
			CodeMapper mapper = session.getMapper(CodeMapper.class);
			mapper.insertCode(code);
			session.commit();
		} finally {
			session.close();
		}
	}

	@Override
	public void updateCode(Code code) {
		SqlSession session = factory.openSession();
		try{
			CodeMapper mapper = session.getMapper(CodeMapper.class);
			mapper.updateCode(code);
			session.commit();
		} finally {
			session.close();
		}
	}

	@Override
	public void deleteCode(int id) {
		SqlSession session = factory.openSession();
		try{
			CodeMapper mapper = session.getMapper(CodeMapper.class);
			mapper.deleteCode(id);
			session.commit();
		} finally {
			session.close();
		}
	}
}
