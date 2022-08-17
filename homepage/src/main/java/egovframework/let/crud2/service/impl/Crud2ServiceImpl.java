package egovframework.let.crud2.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import egovframework.com.cmm.service.EgovFileMngService;
import egovframework.com.cmm.service.FileVO;
import egovframework.let.cop.bbs.service.Board;
import egovframework.let.cop.bbs.service.BoardVO;
import egovframework.let.cop.bbs.service.EgovBBSManageService;
import egovframework.let.crud2.service.Crud2Service;
import egovframework.let.crud2.service.Crud2VO;
import egovframework.let.utl.fcc.service.EgovDateUtil;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("crud2Service")
public class Crud2ServiceImpl extends EgovAbstractServiceImpl implements Crud2Service {
	
	@Resource(name="crud2Mapper")
	private Crud2Mapper crud2Mapper;
	
	@Resource(name="egovCrudIdGnrService")
	private EgovIdGnrService idgenService;
	
	@Override
	public Crud2VO selectCrud2(Crud2VO vo) throws Exception {
		return crud2Mapper.selectCrud2(vo);
	}  
	
	//CRUD 데이터 목록 가져오기
	public List<EgovMap> selectCrud2List(Crud2VO vo) throws Exception {
		return crud2Mapper.selectCrud2List(vo);
	}
	
	//CRUD 데이터 등록하기
	public String insertCrud2(Crud2VO vo) throws Exception {
		String id = idgenService.getNextStringId();
		vo.setCrudId(id);
		crud2Mapper.insertCrud2(vo);
		
		return id;
	}
	
	//CRUD 데이터 수정하기
	public void updateCrud2(Crud2VO vo) throws Exception {
		crud2Mapper.updateCrud2(vo);
	}
	
	//CRUD 데이터 삭제하기
	public void deleteCrud2(Crud2VO vo) throws Exception {
		crud2Mapper.deleteCrud2(vo);
	}
	
	//CRUD 데이터 목록 수
	public int selectCrud2ListCnt(Crud2VO vo) throws Exception {
		return crud2Mapper.selectCrud2ListCnt(vo);
	}
}
