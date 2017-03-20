package service.facade;

import java.util.List;

import domain.Reported;

public interface ReportService {
	
	public void report(Reported rep);
	public void increaseReportCount(Reported rep);
	public List<Reported> searchAllOrderByReportCount();
	public Reported searchReported(String id);
	public void deleteReported(String id);
	

}
