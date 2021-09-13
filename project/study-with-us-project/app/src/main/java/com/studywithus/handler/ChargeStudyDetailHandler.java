package com.studywithus.handler;

import java.util.List;
import com.studywithus.domain.Member;
import com.studywithus.domain.Payment;
import com.studywithus.domain.Study;
import com.studywithus.util.Prompt;

public class ChargeStudyDetailHandler extends AbstractStudyHandler {

  // 유료스터디 관심목록 리스트 (회원 관점)
  List<Study> chargeInterestList;

  // 유료스터디 결제내역 리스트 (회원 관점)
  List<Payment> paymentList;

  // 유료스터디 결제자 내역 (멘토 관점)
  List<Member> chargeApplicantList;

  public ChargeStudyDetailHandler(List<Study> chargeStudyList, List<Study> chargeInterestList, List<Payment> paymentList, List<Member> chargeApplicantList) {
    super(chargeStudyList);
    this.chargeInterestList = chargeInterestList;
    this.paymentList = paymentList;
    this.chargeApplicantList = chargeApplicantList;
  }

  @Override
  public void execute() {
    System.out.println("[유료 스터디 / 상세보기]\n");

    int no = Prompt.inputInt("번호? ");
    Study study = findByNo(no);

    if (study == null) {
      System.out.println();
      System.out.println("해당 번호의 유료 스터디가 없습니다.\n");
      return;
    }

    System.out.printf("제목: %s\n", study.getTitle());
    System.out.printf("설명: %s\n", study.getContent());
    System.out.printf("지역: %s\n", study.getArea());
    System.out.printf("멘토: %s\n", study.getWriter().getName());
    System.out.printf("가격: %s\n", study.getPrice());
    System.out.printf("등록일: %s\n", study.getRegisteredDate());

    study.setViewCount(study.getViewCount() + 1);
    System.out.printf("조회수: %d\n", study.getViewCount());

    System.out.println();
    System.out.println("1. 결제하기");

    //  해당 스터디의 관심목록 존재 유/무에 따라 관심목록 삭제/추가로 나뉨
    for (Study chargeInterest : chargeInterestList) {
      if (study.equals(chargeInterest)) {
        System.out.println("2. 관심목록 삭제하기");
        break;
      }

      else {
        System.out.println("2. 관심목록 추가하기");
        break;
      }
    }

    System.out.println("0. 이전\n");

    while (true) {
      int input = Prompt.inputInt("선택> ");

      if (input == 1) {
        payHandler();

      } else if (input == 2) {
        if (no == 0) {
          interestDelete(study);
          return;
        }
        interestAddHandler(study);

      } else if (input == 0) {
        return;

      } else {
        System.out.println("잘못된 번호입니다.");
        continue;
      }
      return;
    }
  }

  private void payHandler() {
    System.out.println("[유료 스터디 / 결제]\n");

    String input1 = Prompt.inputString("유료 스터디를 결제 하시겠습니까? (y/N) ");

    if (input1.equalsIgnoreCase("n") || input1.length() == 0) {
      System.out.println(" 유료 스터디 결제를 취소하셨습니다.");
    }

    else {
      StringBuffer heart = new StringBuffer("");

      System.out.print("------------------------------------");
      System.out.println("\n"
          + "(＼(＼     \n"
          + "(  -.- )~♥\n"
          + " O_(\")(\")");
      System.out.println("------------------------------------");
      System.out.print("결제중");

      for(int i = 0; i < 5; i++) {
        try {
          Thread.sleep(1000);

        } catch (InterruptedException e) {
        }
        System.out.print(heart.append("♡♥"));
      }

      System.out.println();
      System.out.println();
      System.out.println("유료 스터디 결제가 완료 되었습니다.\n");

      // 유료 스터디 결제내역 리스트 (회원 관점)
      Payment payment = new Payment();
      paymentList.add(payment);
      AuthLoginHandler.loginUser.setPayment(paymentList);

      // 유료 스터디 결제한 사람 내역 (멘토 관점)
      chargeApplicantList.add(AuthLoginHandler.loginUser);
    }
    return;
  }

  // 유료 스터디 관심목록 추가
  private void interestAddHandler(Study chargeStudy) {
    System.out.println("[유료 스터디 / 상세보기 / 관심 목록]\n");

    String input = Prompt.inputString("관심 목록에 추가하시겠습니까? (y/N) ");

    if (input.equalsIgnoreCase("n") || input.length() == 0) {
      System.out.println("유료 스터디 관심 목록 추가를 취소하였습니다.\n");
      return;
    }

    // 유료 스터디 관심목록 리스트 (회원 관점)
    chargeInterestList.add(chargeStudy);
    chargeStudy.setViewCount(chargeStudy.getLike() + 1);

    System.out.println();
    System.out.println("유료 스터디 관심 목록에 추가되었습니다.\n");
  }

  // 유료 스터디 관심목록 삭제
  private void interestDelete(Study chargestudy) {
    String input = Prompt.inputString("정말 삭제하시겠습니까? (y/N) ");

    if (input.equalsIgnoreCase("n") || input.length() == 0) {
      System.out.println("유료 스터디 관심 목록을 취소하였습니다.\n");
      return;
    }

    chargeInterestList.remove(chargestudy);
    chargestudy.setViewCount(chargestudy.getLike() - 1);

    System.out.println();
    System.out.println("유료 스터디 관심 목록을 삭제하였습니다.\n");
  }
}
