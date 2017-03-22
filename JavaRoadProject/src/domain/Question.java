package domain;


public class Question {
	
	private String id;
	
	private String title;
	
	private String tag;
	
	private String contents;
	
	private String member_id;
	
	private String member_nickname;
	
	public Question() {
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_nickname() {
		return member_nickname;
	}

	public void setMember_nickname(String member_nickname) {
		this.member_nickname = member_nickname;
	}

	@Override
	public String toString() {
		return "Question [id=" + id + ", title=" + title + ", tag=" + tag + ", contents=" + contents + ", member_id="
				+ member_id + ", member_nickname=" + member_nickname + "]";
	}
	
	//date 나중에 추가
	


	
}
