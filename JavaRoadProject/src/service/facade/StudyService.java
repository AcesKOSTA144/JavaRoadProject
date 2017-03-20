package service.facade;

import domain.Study;

public interface StudyService {
	
	public Study searchStudy(String tag);
	public void updateAsOrigin(String tag);
	public void voteStudy(String memberId, String tag, String prosAndCons);

}
