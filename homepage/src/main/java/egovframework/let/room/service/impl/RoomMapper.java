package egovframework.let.room.service.impl;
import java.util.Iterator;
import java.util.List;

import egovframework.let.room.service.RoomVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

import org.springframework.stereotype.Repository;

@Mapper("roomMapper")
public interface RoomMapper {
	
	//게시물 목록 가져오기
	List<EgovMap> selectRoomList(RoomVO vo) throws Exception;
	
	//게시물 목록 수
	int selectRoomListCnt(RoomVO vo) throws Exception;
	
//	//게시물 등록
//	void insertRoom(RoomVO vo) throws Exception;
//	
//	//게시물 상세정보
//	RoomVO selectRoom(RoomVO vo) throws Exception;
//	
//	//조회수 업
//	void updateViewCnt(RoomVO vo) throws Exception;
//	
//	//게시물 수정하기
//	void updateRoom(RoomVO vo) throws Exception;
//	
//	//게시물 삭제하기
//	void deleteRoom(RoomVO vo) throws Exception;
}
