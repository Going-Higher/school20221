package egovframework.let.join.service.impl;

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
import egovframework.let.join.service.JoinService;
import egovframework.let.join.service.JoinVO;
import egovframework.let.utl.fcc.service.EgovDateUtil;
import egovframework.let.utl.sim.service.EgovFileScrty;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("joinService")
public class JoinServiceImpl extends EgovAbstractServiceImpl implements JoinService {
	
	@Resource(name="joinMapper")
	private JoinMapper joinMapper;
	
	@Resource(name="joinIdGnrService")
	private EgovIdGnrService idgenService;
	
	//회원등록
	@Override
	public String insertJoin(JoinVO vo) throws Exception {
		String esntlId = idgenService.getNextStringId();
		vo.setEsntlId(esntlId);
		
		//입력한 비밀번호를 암호화한다.﻿ 비밀번호를 암호화하는 기능(복호화가 되면 안되므로 SHA-256 인코딩 방식 적용)
		String enpassword = EgovFileScrty.encryptPassword(vo.getPassword(), vo.getEmplyrId());
		vo.setPassword(enpassword);
		
		joinMapper.insertJoin(vo);		
		return esntlId;
	}
	
	//ID중복체크
	@Override
	public int duplicateCheck(JoinVO vo) throws Exception {
		return joinMapper.duplicateCheck(vo);
	}
	
}
