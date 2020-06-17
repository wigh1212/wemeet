package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.Criteria;
import org.zerock.domain.SellboardVO;
import org.zerock.mapper.SellBoardMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
@AllArgsConstructor
public class SellboardServiceImpl implements SellboardService {

	private SellBoardMapper mapper;


	public List<SellboardVO> getlist() {
		
		return mapper.getlist();
	}
	@Transactional
	public void insert(SellboardVO sellboard) {
		
		mapper.insert(sellboard);
	}

	
	public SellboardVO read(long sno) {
		
		return mapper.read(sno);
	}
	@Transactional
	public int delete(SellboardVO sellboard) {
		
		return mapper.delete(sellboard);
	}
	@Transactional
	public int update(SellboardVO sellboard) {
		
		return mapper.update(sellboard);
	}

	@Override
	public List<SellboardVO> search(Criteria cri) {
		
		return mapper.search(cri);
	}
	@Override
	public int getTotal(Criteria cri) {
		
		return mapper.get;
	}

	
}
