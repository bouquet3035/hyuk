package org.hyuk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.hyuk.dto.BoardDTO;
import org.hyuk.dto.Criteria;
import org.hyuk.dto.SearchCriteria;

import lombok.Delegate;


public interface BoardMapper {
	
	@Select("select * from tbl_board order by bno desc")
	public List<BoardDTO> selectBoard();
	
	@Select("select * from tbl_board where bno=#{bno}" )
	public BoardDTO viewBoard(Integer bno);

	@Insert("insert into tbl_board (title,contents,writer) values(#{title},#{contents},#{writer})")
	public void registerBoard(BoardDTO bDto);
	
	@Delete("delete from tbl_board where bno=#{bno}")
	public void deleteBoard(Integer bno) ; 
	
	@Update("update tbl_board set title= #{title}, contents= #{contents} where bno= #{bno}")
	public void updateBoard(BoardDTO bDto) ; 
	
	@Select("select * from tbl_board order by bno desc ")
	public List<BoardDTO> listAll() ;
	
	@Select("select * from tbl_board where bno > 0 order by bno desc limit #{page} ,10")
	public List<BoardDTO> listPage(int page) ;
	
	@Select("select *from tbl_board where bno >0 order by bno desc limit #{pageStart}, #{perPageNum}")
	public List<BoardDTO> listCriteria(Criteria cri) ;
	
	@Select("select count(bno) from tbl_board where bno > 0")
	public int countPaging(Criteria cri) ;
	
	//검색 과 페이징 처리 하기위한  
	
	public List<BoardDTO> listSearch(SearchCriteria cri); 
	
	public int listSearchCount(SearchCriteria cri) ; 
	
	//사진첨부 기능 부터 
	@Insert("insert into tbl_attach(fullname,bno)values(#{fullName},LAST_INSERT_ID())")
	public void addAttach(String fullName); 
	
	@Select("select fullname from tbl_attach where bno =#{bno} order by regdate")
	public List<String> getAttach(Integer bno);
	
	@Delete("delete from tbl_attach where bno =#{bno}")
	public void deleteAttach(Integer bno); 
	
	@Insert("insert into tbl_attach(fullname,bno) values(#{fullname} ,#{bno})")
	public void replaceAttach( @Param("fullname")String fullname ,@Param("bno") Integer bno);
	
	

}
