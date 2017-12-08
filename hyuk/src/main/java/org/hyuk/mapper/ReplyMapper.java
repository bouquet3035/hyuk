package org.hyuk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.hyuk.dto.Criteria;
import org.hyuk.dto.ReplyDTO;

import lombok.Delegate;

public interface ReplyMapper {
	
	@Select("select * from tbl_reply where bno=#{bno} order by rno desc")
	public List<ReplyDTO> list (Integer bno);
	
	@Insert("insert into tbl_reply (bno,replytext,replyer)values(#{bno},#{replytext},#{replyer})")
	public void create (ReplyDTO replyDTO); 
	
	@Update("update tbl_reply set replytext=#{replytext},updatedate = now() where rno =#{rno}")
	public void update(ReplyDTO replyDTO) ; 
	
	@Delete("delete from tbl_reply where rno=#{rno}")
	public void delete(Integer rno); 
	
	@Select("select * from tbl_reply where bno = #{bno} order by rno desc limit #{cri.pageStart}, #{cri.perPageNum}")
	public List<ReplyDTO> listPage( @Param("bno") Integer bno , @Param("cri") Criteria cri); 
	
	@Select("select count(bno) from tbl_reply where bno =#{bno}")
	public int count(Integer bno) ; 

}
