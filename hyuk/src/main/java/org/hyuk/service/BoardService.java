package org.hyuk.service;

import java.util.List;

import org.hyuk.dto.BoardDTO;
import org.hyuk.dto.Criteria;

public interface BoardService {
	
	public void registerBoard(BoardDTO bDto);
	
	public List<BoardDTO>selectBoard(); 
	
	public BoardDTO viewBoard(Integer bno);

	public void deleteBoard(Integer bno);
	
	public void updateBoard(BoardDTO bto) ; 
	
	public List<BoardDTO> listAll() ;
	
	public List<BoardDTO> listPage(int page) ;

	public List<BoardDTO> listCriteria(Criteria cri) ;
	
	public int countPaging(Criteria cri);

	public int listCountCriteria(Criteria cri);

}
