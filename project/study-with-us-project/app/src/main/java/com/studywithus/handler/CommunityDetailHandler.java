package com.studywithus.handler;

import com.studywithus.domain.Community;
import com.studywithus.util.Prompt;

public class CommunityDetailHandler extends AbstractBoardHandler{

  //  public CommunityDetailHandler(List<Community> communityList) {
  //    super(communityList);
  //  }

  // 스몰톡 게시글 상세보기
  @Override
  public void execute() {
    System.out.println("[커뮤니티 / 상세보기] \n");

    int no = Prompt.inputInt("번호? ");
    Community community = findByNo(no);

    if (community == null) {
      System.out.println();
      System.out.println("해당 번호의 게시글이 없습니다.\n");
      return;
    }

    System.out.printf("제목: %s\n", community.getTitle());
    System.out.printf("내용: %s\n", community.getContent());
    System.out.printf("작성자: %s\n", community.getWriter().getName());
    System.out.printf("등록일: %s\n", community.getRegisteredDate());

    community.setViewCount(community.getViewCount() + 1);
    System.out.printf("조회수: %d\n", community.getViewCount());
    System.out.println();
  }

}
