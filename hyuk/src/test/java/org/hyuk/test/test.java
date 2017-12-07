package org.hyuk.test;

import java.sql.Connection;
import java.util.List;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.hyuk.dto.BoardDTO;
import org.hyuk.dto.SearchCriteria;
import org.hyuk.mapper.BoardMapper;
import org.hyuk.service.BoardService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.java.Log;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
	locations ={"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
@Log
public class test {

	@Inject
	private DataSource ds;
	
	@Inject BoardService service ;
	
	@Test
	public void testConection()throws Exception{
		
		try(Connection con = ds.getConnection()){
			
			System.out.println(con);
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	  @Test
	    public void test1() { 
	    }

	   
	    
	   @Test
	    public void test2() throws Exception{
	        Connection con = ds.getConnection();
	        System.out.println(con);
	        con.close();    
	   }
	    
	   @Inject
	   SqlSessionFactory factory;
	  
	   @Test
	   public void test3() {
	       System.out.println(factory);
	   }
	
	@Test
	public void testDynamic1() throws Exception {
		
		SearchCriteria cri = new SearchCriteria() ;
		cri.setPage(1);
		cri.setKeyword("±Û");
		cri.setSearchType("t");
		
		log.info("//////////////////////////////");
		
//		List<BoardDTO> list = service.listSearch(cri) ; 
//		
//		for(BoardDTO boardDTO : list) {
//			log.info(boardDTO.getBno() +":"+boardDTO.getTitle() );
//		}
//		log.info("=================================");
//		
//		log.info("count:"+service.listSeachCount(cri));
//		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
