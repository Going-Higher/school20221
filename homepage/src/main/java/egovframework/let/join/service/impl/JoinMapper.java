package egovframework.let.join.service.impl;
import java.util.Iterator;
import java.util.List;

import egovframework.let.join.service.JoinVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

import org.springframework.stereotype.Repository;

@Mapper("joinMapper")
public interface JoinMapper {
	
	//회원등록
	public void insertJoin(JoinVO vo) throws Exception;
	
	//ID중복체크
	int duplicateCheck(JoinVO vo) throws Exception;
}
