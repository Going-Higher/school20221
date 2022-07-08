package egovframework.let.room.web;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.let.room.service.RoomService;
import egovframework.let.room.service.RoomVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
@RequestMapping("/room/")
public class RoomController {	
	@Autowired
	private RoomService roomService;	
	
	@GetMapping("list.do")
	public String room(RoomVO vo, Map map) throws Exception {
		List<EgovMap> list = roomService.selectRoomList(vo);
		map.put("RoomList", list);
		return "room/selectList";
	}
	
	
//	public String selectList(@ModelAttribute("searchVO") RoomVO searchVO, HttpServletRequest request, ModelMap model) throws Exception{
//		
//		//공지 게시 글
//		searchVO.setNoticeAt("Y");
//		List<EgovMap> noticeResultList = roomService.selectRoomList(searchVO);
//		model.addAttribute("noticeResultList", noticeResultList);
//		
//		PaginationInfo paginationInfo = new PaginationInfo();
//		
//		paginationInfo.setCurrentPageNo(searchVO.getPageIndex());
//		paginationInfo.setRecordCountPerPage(searchVO.getPageUnit());
//		paginationInfo.setPageSize(searchVO.getPageSize());
//		
//		searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
//		searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
//		searchVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
//		
//		searchVO.setNoticeAt("N");
//		List<EgovMap> resultList = roomService.selectRoomList(searchVO);
//		model.addAttribute("resultList", resultList);
//				
//		int totCnt = roomService.selectRoomListCnt(searchVO);
//		
//		paginationInfo.setTotalRecordCount(totCnt);
//		model.addAttribute("paginationInfo", paginationInfo);
//		
//		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
//		model.addAttribute("USER_INFO", user);
//		
//		return "room/RoomSelectList";
//	}	
//	
//	//게시물 등록/수정 폼 호출
//	@RequestMapping(value = "/room/roomRegist.do")
//	public String roomRegist(@ModelAttribute("searchVO") RoomVO RoomVO, HttpServletRequest request, ModelMap model) throws Exception{		
//		
//		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
//		if(user == null || user.getId() == null) {
//			model.addAttribute("message", "로그인 후 사용가능합니다.");
//			return "forward:/room/selectList.do";
//		}else {
//			model.addAttribute("USER_INFO", user);
//		}
//		
//		RoomVO result = new RoomVO();
//		if(!EgovStringUtil.isEmpty(RoomVO.getRoomId())) {			
//			result = roomService.selectRoom(RoomVO);
//			//본인 및 관리자만 허용
//			if(!user.getId().equals(result.getFrstRegisterId()) && !"admin".equals(user.getId())) {
//				model.addAttribute("message", "작성자 본인만 확인 가능합니다.");
//				return "forward:/room/selectList.do";
//			}			
//		}
//		model.addAttribute("result", result);
//		
//		request.getSession().removeAttribute("sessionRoom");
//		
//		return "room/RoomRegist";
//	}	
//	
//	//게시물 등록하기
//	@RequestMapping(value="/room/insert.do")
//	public String insert(final MultipartHttpServletRequest multiRequest, @ModelAttribute("searchVO") RoomVO searchVO, HttpServletRequest request, ModelMap model) throws Exception{
//		
//		//이중 서브밋 방지 체크
//		if(request.getSession().getAttribute("sessionRoom") != null) {
//			return "forward:/room/selectList.do";
//		}
//		
//		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
//		if(user == null || user.getId() == null) {
//			model.addAttribute("message", "로그인 후 사용가능합니다.");
//			return "forward:/room/selectList.do";
//		}
//		
//		List<FileVO> result = null;
//		String atchFileId = "";
//		
//		final Map<String, MultipartFile> files = multiRequest.getFileMap();
//		if(!files.isEmpty()) {
//			result = fileUtil.parseFileInf(files, "ROOM_", 0, "", "room.fileStorePath");
//			atchFileId = fileMngService.insertFileInfs(result);
//		}
//		searchVO.setAtchFileId(atchFileId);
//		
//		searchVO.setCreatIp(request.getRemoteAddr());
//		searchVO.setUserId(user.getId());
//		
//		roomService.insertRoom(searchVO);
//		
//		//이중 서브밋 방지
//		request.getSession().setAttribute("sessionRoom", searchVO);
//		return "forward:/room/selectList.do";
//		
//	}	
//	
//	//게시물 가져오기
//	@RequestMapping(value="/room/select.do")
//	public String select(@ModelAttribute("searchVO") RoomVO searchVO, HttpServletRequest request, ModelMap model) throws Exception{
//		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
//		model.addAttribute("USER_INFO", user);
//		
//		RoomVO result = roomService.selectRoom(searchVO);
//		//비밀 글여부 체크
//		if("Y".equals(result.getOthbcAt())) {
//			//본인 및 관리자만 허용
//			if(user == null || user.getId() == null || (!user.getId().equals(result.getFrstRegisterId()) && !"admin".equals(user.getId()))) {
//				model.addAttribute("message", "작성자 본인만 확인 가능합니다.");
//				return "forward:/room/selectList.do";
//			}
//		}
//		model.addAttribute("result", result);
//		return "room/RoomSelect";
//	}
//	
//	//게시물 수정하기
//	@RequestMapping(value="/room/update.do")
//	public String update(final MultipartHttpServletRequest multiRequest, @ModelAttribute("searchVO") RoomVO searchVO, HttpServletRequest request, ModelMap model) throws Exception{
//		//이중 서브밋 방지
//		if(request.getSession().getAttribute("sessionRoom") != null) {
//			return "forward:/room/selectList.do";
//		}
//		
//		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
//		if(user == null || user.getId() == null) {
//			model.addAttribute("message", "로그인 후 사용가능합니다.");
//			return "forward:/room/selectList.do";
//		}else if("admin".equals(user.getId())) {
//			searchVO.setMngAt("Y");
//		}
//		
//		String atchFileId = searchVO.getAtchFileId();
//		final Map<String, MultipartFile> files = multiRequest.getFileMap();
//		if(!files.isEmpty()) {
//			if(EgovStringUtil.isEmpty(atchFileId)) {
//				List<FileVO> result = fileUtil.parseFileInf(files, "ROOM_", 0, "", "room.fileStorePath");
//				atchFileId = fileMngService.insertFileInfs(result);
//				searchVO.setAtchFileId(atchFileId);
//			}else {
//				FileVO fvo = new FileVO();
//				fvo.setAtchFileId(atchFileId);
//				int cnt = fileMngService.getMaxFileSN(fvo);
//				List<FileVO> _result = fileUtil.parseFileInf(files, "ROOM_", cnt, atchFileId, "room.fileStorePath");
//				fileMngService.updateFileInfs(_result);
//			}
//		}
//		
//		searchVO.setUserId(user.getId());
//		
//		roomService.updateRoom(searchVO);
//		
//		//이중 서브밋 방지
//		request.getSession().setAttribute("sessionRoom", searchVO);
//		return "forward:/room/selectList.do";
//	}
//	
//	//게시물 삭제하기
//	@RequestMapping(value="/room/delete.do")
//	public String delete(@ModelAttribute("searchVO") RoomVO searchVO, HttpServletRequest request, ModelMap model) throws Exception{
//		
//		LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser();
//		if(user == null || user.getId() == null) {
//			model.addAttribute("message", "로그인 후 사용가능합니다.");
//			return "forward:/room/selectList.do";
//		}else if("admin".equals(user.getId())) {
//			searchVO.setMngAt("Y");
//		}
//		
//		searchVO.setUserId(user.getId());
//		
//		roomService.deleteRoom(searchVO);
//		
//		return "forward:/room/selectList.do";		
//	}
}