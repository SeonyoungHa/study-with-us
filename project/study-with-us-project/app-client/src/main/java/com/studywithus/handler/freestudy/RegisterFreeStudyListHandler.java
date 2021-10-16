package com.studywithus.handler.freestudy;

import java.util.Collection;

import com.studywithus.dao.FreeStudyDao;
import com.studywithus.domain.Study;
import com.studywithus.handler.Command;
import com.studywithus.handler.CommandRequest;
import com.studywithus.handler.user.AuthLogInHandler;

public class RegisterFreeStudyListHandler implements Command {

	FreeStudyDao freeStudyDao;

	public RegisterFreeStudyListHandler(FreeStudyDao freeStudyDao) {
		this.freeStudyDao = freeStudyDao;
	}

	@Override
	public void execute(CommandRequest request) throws Exception {
		System.out.println("[마이 페이지 / 나의 활동 / 나의 스터디 / 내가 생성한 무료 스터디]\n");


		Collection<Study> studyList = freeStudyDao.findAll();

		for (Study freeStudy : studyList) {
			if (freeStudy.getWriter().getEmail().equals(AuthLogInHandler.getLoginUser().getEmail())) {

				if (freeStudy.getOnOffLine() == 1) {
					System.out.printf(
							"[번호 = %d, 제목 = %s, 팀장 = %s, 온/오프라인 = %s, 모집인원 = %d / %d, 등록일 = %s, 조회수 = %d, 좋아요 = %d]\n",
							freeStudy.getNo(), 
							freeStudy.getTitle(), 
							freeStudy.getWriter().getName(),
							freeStudy.getONLINE(), 
							freeStudy.getMembers().size(), 
							freeStudy.getMaxMembers(),
							freeStudy.getRegisteredDate(), 
							freeStudy.getViewCount(),
							freeStudy.getLikeMembers().size());
				} else {
					System.out.printf(
							"[번호 = %d, 제목 = %s, 팀장 = %s, 온/오프라인 = %s, 지역 = %s, 모집인원 = %d / %d, 등록일 = %s, 조회수 = %d, 좋아요 = %d]\n",
							freeStudy.getNo(), 
							freeStudy.getTitle(), 
							freeStudy.getWriter().getName(),
							freeStudy.getOFFLINE(), 
							freeStudy.getArea(), 
							freeStudy.getMembers().size(),
							freeStudy.getMaxMembers(), 
							freeStudy.getRegisteredDate(), 
							freeStudy.getViewCount(),
							freeStudy.getLikeMembers().size());
				}
			}
		}
		System.out.println();
	}
}
