package domain;

public class Member {
	private String memberId;
    private String password;
    private String nickname;
    private int point;
    private String timeLimit;
    private double currentProgress;
    private double goalProgress;
    
    public Member(){}
    
    
  




	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getTimeLimit() {
		return timeLimit;
	}
	public void setTimeLimit(String timeLimit) {
		this.timeLimit = timeLimit;
	}
	public double getCurrentProgress() {
		return currentProgress;
	}
	public void setCurrentProgress(double currentProgress) {
		this.currentProgress = currentProgress;
	}
	public double getGoalProgress() {
		return goalProgress;
	}
	public void setGoalProgress(double goalProgress) {
		this.goalProgress = goalProgress;
	}


	@Override
	public String toString() {
		return "Member [memberId=" + memberId + ", password=" + password + ", nickname=" + nickname + ", point=" + point
				+ ", timeLimit=" + timeLimit + ", currentProgress=" + currentProgress + ", goalProgress=" + goalProgress
				+ "]";
	}

	
}
