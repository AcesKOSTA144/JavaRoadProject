package code.store.logic;

import static org.junit.Assert.*;

import org.junit.Test;

import domain.Code;
import store.facade.CodeStore;
import store.logic.CodeStoreLogic;

public class CodeStoreLogicTest {
	
	private CodeStore store;
	
	public CodeStoreLogicTest() {
		store = new CodeStoreLogic();
	}

//	@Test
//	public void testSelectCodeById() {
//		int id = 1;
//		assertNotNull(store.selectCodeById(id));
//		assertEquals(200, store.selectCodeById(id).getLikes());
//	}
//
//	@Test
//	public void testSelectCodes() {
//		assertEquals(4, store.selectCodes().size());
//	}
//
//	@Test
//	public void testSelectCodesOrderByLikes() {
//		assertEquals(4, store.selectCodesOrderByLikes().size());
//	}

//	@Test
//	public void testInsertCode() {
//		Code code = new Code();
//		code.setTitle("도형1코드");
//		code.setContents("seodh1Code.html");
//		code.setMemberId("DH1seo");
//		code.setMemberNickname("서1도");
//		code.setLikes(201);
//		store.insertCode(code);
//		assertEquals(201, store.selectCodeById(11).getLikes());
//	}

//	@Test
//	public void testUpdateCode() {
//		Code code = new Code();
//		code.setId(9);
//		code.setTitle("대관아 힘내");
//		code.setContents("daeGwanFighting.html");
//		store.updateCode(code);
//		assertEquals("대관아 힘내", store.selectCodeById(9).getTitle());
//	}
//
//	@Test
//	public void testDeleteCode() {
//		String id = "DH1seo";
//		store.deleteCode(id);
//		assertNull(store.selectCodeById(11));
//	}
}
