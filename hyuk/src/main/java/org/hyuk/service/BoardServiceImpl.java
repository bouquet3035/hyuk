package org.hyuk.service;

import java.util.List;

import javax.inject.Inject;

import org.hyuk.dto.BoardDTO;
import org.hyuk.dto.Criteria;
import org.hyuk.dto.SearchCriteria;
import org.hyuk.mapper.BoardMapper;
import org.mybatis.spring.mapper.MapperScannerConfigurer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.extern.java.Log;
@Service
@Log
public class BoardServiceImpl implements BoardService {

	@Inject
	BoardMapper mapper ;

	@Override
	public void registerBoard(BoardDTO bDto) {
		// TODO Auto-generated method stub
		log.info("registerBoard"+bDto);
		mapper.registerBoard(bDto);
	}

	@Transactional
	@Override
	public void deleteBoard(Integer bno) {
		// TODO Auto-generated method stub
		mapper.deleteBoard(bno);
		mapper.deleteAttach(bno);
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

	@Transactional
	@Override
	public void updateBoard(BoardDTO bto) {
		// TODO Auto-generated method stub
		log.info("updateBoard 1");
		mapper.updateBoard(bto);
		log.info("updateBoard 2");
		mapper.updateBoard(bto); 
		log.info("updateBoard 3");
		Integer bno = bto.getBno(); 
		log.info("updateBoard 4");
		mapper.deleteAttach(bno);
		log.info("updateBoard 5");
		String[] files = bto.getFiles(); 
		log.info("updateBoard 6");
		if(files == null ) {return ;}
		log.info("updateBoard 7");
		for(String fileName : files) {
			mapper.replaceAttach(fileName, bno);
		}
		log.info("updateBoard 8");
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

	@Transactional
	@Override
	public void regist(BoardDTO board) {
		// TODO Auto-generated method stub
		mapper.registerBoard(board);
		String[] files =board.getFiles();
		log.info("files:"+files); 
		
		if(files == null) {
			log.info("실패");
			return ; 
		}
		for(String fileName : files) {
			mapper.addAttach(fileName);
			
			log.info("성공 regist");
		}
		
	}

	@Override
	public List<String> getAttach(Integer bno) {
		// TODO Auto-generated method stub
		log.info("getAttach ServiceImpl bno"+bno);
		log.info("getAttach mapper :" + mapper.getAttach(bno) );
		return mapper.getAttach(bno);
	}

	@Override
	public void deleteAttach(Integer bno) {
		// TODO Auto-generated method stub
		mapper.deleteAttach(bno);
	}

	@Transactional
	@Override
	public void modify(BoardDTO board) {
		// TODO Auto-generated method stub
		mapper.updateBoard(board); 
		
		Integer bno = board.getBno(); 
		
		mapper.deleteAttach(bno);

		String[] files = board.getFiles(); 
		
		if(files == null ) {return ;}
		
		for(String fileName : files) {
			mapper.replaceAttach(fileName, bno);
		}
	}

	
	
 



}
