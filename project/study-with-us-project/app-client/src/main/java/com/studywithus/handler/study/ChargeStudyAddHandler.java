package com.studywithus.handler.study;

import java.sql.Date;
import com.studywithus.domain.Study;
import com.studywithus.handler.Command;
import com.studywithus.handler.CommandRequest;
import com.studywithus.handler.user.AuthLogInHandler;
import com.studywithus.menu.Menu;
import com.studywithus.request.RequestAgent;
import com.studywithus.util.Prompt;

public class ChargeStudyAddHandler implements Command {

  RequestAgent requestAgent;
  // 각 멘토의 생성 유료 스터디 리스트
  public ChargeStudyAddHandler(RequestAgent requestAgent) {
    this.requestAgent = requestAgent;
  }

  @Override
  public void execute(CommandRequest request) throws Exception {
    System.out.println("[유료 스터디 / 생성]\n");

    Study chargeStudy = new Study();

    chargeStudy.setWriter(AuthLogInHandler.getLoginUser());
    chargeStudy.setArea(Prompt.inputString("지역: "));
    chargeStudy.setTitle(Prompt.inputString("스터디 제목: "));
    chargeStudy.setContent(Prompt.inputString("스터디 설명: "));
    chargeStudy.setMaxMembers(Prompt.inputInt("모집 인원: "));
    chargeStudy.setPrice(Prompt.inputInt("가격: " ));

    while (true) {
      try {
        chargeStudy.setStartDate(Prompt.inputDate("시작일을 입력하세요. ex) YYYY-MM-DD > "));

      } catch (IllegalArgumentException e) {
        System.out.println("다시 입력하세요.\n");
        continue;
      }
      break;
    }

    while (true) {
      try {
        chargeStudy.setEndDate(Prompt.inputDate("종료일을 입력하세요. ex) YYYY-MM-DD > "));

      } catch (IllegalArgumentException e) {
        System.out.println("다시 입력하세요.\n");
        continue;
      }

      if (new Date(System.currentTimeMillis()).compareTo(chargeStudy.getEndDate()) == 1) {
        System.out.println("다시 입력하세요.\n");
        continue;

        // 시작일 < 종료일이 아닌 경우
      }else if (chargeStudy.getEndDate().compareTo(chargeStudy.getStartDate()) != 1) {
        System.out.println("종료일은 시작일 이후로 설정하세요.\n");
        continue;

      } else {
        break;
      }
    }

    chargeStudy.setRegisteredDate(new Date(System.currentTimeMillis()));

    AuthLogInHandler.userAccessLevel |= Menu.ACCESS_MENTOR;

    requestAgent.request("chargeStudy.insert", chargeStudy);

    System.out.println();
    System.out.println("유료스터디 등록이 완료되었습니다.\n");
  }

}

/*studyList.add(chargeStudy);

    List<Study> registerChargeStudyList; // 해쉬맵에 객체 담기 위한 임시 변수


    // 생성 유료 스터디에 해당 아이디 존재 O
    if (registerChargeStudyMap.containsKey(AuthLogInHandler.getLoginUser().getId())) {
      // 생성 유료 스터디에 아이디 호출 -> 생성 유료 스터디 리스트에 대입
      registerChargeStudyList = registerChargeStudyMap.get(AuthLogInHandler.getLoginUser().getId());

      // 생성 유료 스터디 리스트에 유료 스터디 추가
      registerChargeStudyList.add(chargeStudy);
      // 생성 유료 스터디에 아이디 추가
      registerChargeStudyMap.put(AuthLogInHandler.getLoginUser().getId(), registerChargeStudyList);

      // 생성 유료 스터디에 해당 아이디 존재 X
    } else {
      // 새로운 생성 유료 스터디 리스트 생성
      registerChargeStudyList = new ArrayList<>();

      // 생성 유료 스터디 리스트에 유료 스터디 추가
      registerChargeStudyList.add(chargeStudy);
      // 생성 유료 스터디에 아이디 추가
      registerChargeStudyMap.put(AuthLogInHandler.getLoginUser().getId(), registerChargeStudyList);
    }*/