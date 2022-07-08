package egovframework.let.room.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import egovframework.com.cmm.service.EgovFileMngService;
import egovframework.com.cmm.service.FileVO;
import egovframework.let.room.service.RoomService;
import egovframework.let.room.service.RoomVO;
import egovframework.let.utl.fcc.service.EgovDateUtil;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("roomService")
public class RoomServiceImpl extends EgovAbstractServiceImpl implements RoomService {
	
	@Resource(name="roomMapper")
	private RoomMapper roomMapper;
	
//	@Resource(name="egovRoomIdGnrService")
//	private EgovIdGnrService idgenService;
	
	//게시물 목록 가져오기
	public List<EgovMap> selectRoomList(RoomVO vo) throws Exception {
		return roomMapper.selectRoomList(vo);
	}
		
//	//게시물 목록 수
	public int selectRoomListCnt(RoomVO vo) throws Exception {
		return roomMapper.selectRoomListCnt(vo);
	}

	@Override
	public String insertRoom(RoomVO vo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public RoomVO selectRoom(RoomVO vo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateRoom(RoomVO vo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteRoom(RoomVO vo) throws Exception {
		// TODO Auto-generated method stub
		
	}
	
//	//게시물 등록
//	@Override
//	public String insertRoom(RoomVO vo) throws Exception {
//		String id = idgenService.getNextStringId();
//		vo.setRoomId(id);
//		roomMapper.insertRoom(vo);
//		
//		return id;
//	}
//	
////	//게시물 상세정보
//	@Override
//	public RoomVO selectRoom(RoomVO vo) throws Exception {
////		//조회수 업
//		roomMapper.updateViewCnt(vo);
//		
//		return roomMapper.selectRoom(vo);
//	}
//	
////	//게시물 수정하기
//	@Override
//	public void updateRoom(RoomVO vo) throws Exception {
//		roomMapper.updateRoom(vo);
//	}
//	
////	//게시물 삭제하기
//	@Override
//	public void deleteRoom(RoomVO vo) throws Exception {
//		roomMapper.deleteRoom(vo);
//	}
}
