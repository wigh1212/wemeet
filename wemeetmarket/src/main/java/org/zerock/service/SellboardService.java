package org.zerock.service;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.SellboardVO;

public interface SellboardService {

	public List<SellboardVO> topsellboard();
	
	public List<SellboardVO> topstream1();
	
	public List<SellboardVO> topsell();
	
	public List<SellboardVO> getlist();
	
	public void insert(SellboardVO sellboard);
	
	public SellboardVO read(long sno);
	
	public int delete(SellboardVO sellboard);
	
	public int update(SellboardVO sellboard);
	
	
	public List<SellboardVO> search(Criteria cri);
	
}
