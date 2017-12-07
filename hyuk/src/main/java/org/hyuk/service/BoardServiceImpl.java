package org.hyuk.service;

import java.util.List;

import javax.inject.Inject;

import org.hyuk.dto.BoardDTO;
import org.hyuk.dto.Criteria;
import org.hyuk.dto.SearchCriteria;
import org.hyuk.mapper.BoardMapper;
import org.mybatis.spring.mapper.MapperScannerConfigurer;
import org.springframework.stereotype.Service;

import lombok.extern.java.Log;
@Service
@Log
public class BoardServiceImpl implements BoardService {

	@Inject
	BoardMapper mapper ;

	@Override
	public void registerBoard(BoardDTO bDto) {
		// TODO Auto-generated method stub
		mapper.registerBoard(bDto);
	}

	@Override
	public void deleteBoard(Integer bno) {
		// TODO Auto-generated method stub
		mapper.deleteBoard(bno);
	}

	@Override
	public List<BoardDTO> selectBoard() {
		// TODO Auto-generated method stub
		return mapper.selectBoard(); 
	}

	@Override
	public BoardDTO viewBoard (Integer bno) {
		// TODO Auto-generated method stub
		return mapper.viewBoard(bno);
	}

	@Override
	public void updateBoard(BoardDTO bto) {
		// TODO Auto-generated method stub
		mapper.updateBoard(bto);
	}

	@Override
	public List<BoardDTO> listAll() {
		// TODO Auto-generated method stub
		 return mapper.listAll();
	}

	@Override
	public List<BoardDTO> listPage(int page) {
		
		if(page <= 0 ) {
			page = 1; 
		}
		
		page = (page-1)* 10 ; 
		
		// TODO Auto-generated method stub
		return mapper.listPage(page); 
	}

	@Override
	public List<BoardDTO> listCriteria(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.listCriteria(cri);
	}

	@Override
	public int countPaging(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.countPaging(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.countPaging(cri);
	}

	/*@Override
	public List<BoardDTO> listSearch(SearchCriteria cri) {
		// TODO Auto-generated method stub
		return mapper.listSearch(cri);
	}

	@Override
	public int listSeachCount(SearchCriteria cri) {
		// TODO Auto-generated method stub
		return mapper.listSeachCount(cri);
	}*/

	@Override
	public List<BoardDTO> listSearchCriteria(SearchCriteria cri) {
		// TODO Auto-generated method stub
		return mapper.listSearch(cri) ; 
	}

	@Override
	public int listSearchCount(SearchCriteria cri) {
		// TODO Auto-generated method stub
		return mapper.listSearchCount(cri) ; 
	}


}
