package egovframework.let.temp3.service.impl;

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
import egovframework.let.temp3.service.Temp3Service;
import egovframework.let.temp3.service.Temp3VO;
import egovframework.let.utl.fcc.service.EgovDateUtil;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("temp3Service")
public class Temp3ServiceImpl extends EgovAbstractServiceImpl 
	implements Temp3Service {
	
	@Resource(name="temp3Mapper")
	private Temp3Mapper temp3Mapper;
	
	@Resource(name="egovTempIdGnrService")
	private EgovIdGnrService idgenService;
	
	@Override
	public Temp3VO selectTemp(Temp3VO vo) throws Exception {
		return temp3Mapper.selectTemp(vo);
	}  
	
	//임시데이터 목록 가져오기
	public List<EgovMap> selectTempList(Temp3VO vo) throws Exception {
		return temp3Mapper.selectTempList(vo);
	}
	
	//임시데이터 등록하기
	public String insertTemp(Temp3VO vo) throws Exception {		
		String id = idgenService.getNextStringId();
		vo.setCrudId(id);
		temp3Mapper.insertTemp(vo);		
		
		return id;
	}
	
	//임시데이터 수정하기
	public void updateTemp(Temp3VO vo) throws Exception {
		temp3Mapper.updateTemp(vo);
	}
	
	//임시데이터 삭제하기
	public void deleteTemp(Temp3VO vo) throws Exception {
		temp3Mapper.deleteTemp(vo);
	}
	
	//임시데이터 목록 수
	public int selectTempListCnt(Temp3VO vo) throws Exception {
		return temp3Mapper.selectTempListCnt(vo);
	}
	
/*	@Override
	public TempVO selectTemp(TempVO vo) throws Exception {
		return tempDAO.selectTemp(vo);
	} 
*/
}
