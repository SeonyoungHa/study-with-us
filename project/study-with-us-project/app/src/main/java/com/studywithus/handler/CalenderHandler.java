package main.java.com.studywithus.handler;


import main.java.com.studywithus.domain.Calender;
import main.java.com.studywithus.util.Prompt;





public class CalenderHandler {

  static final int MAX_LENGTH = 5;



  Calender[] calenders = new Calender[MAX_LENGTH];
  int size = 0;

  public void add() {
    System.out.println("채용공고 등록]");

    Calender calender = new Calender();

    calender.no = Prompt.inputInt("번호? ");
    calender.title = Prompt.inputString("제목? ");
    calender.content = Prompt.inputString("내용? ");
    calender.startDate = Prompt.inputDate("시작일? ");
    calender.endDate = Prompt.inputDate("종료일? ");
    //    calender.viewCount = 0; // 인스턴스 변수는 생성되는 순간 기본 값이 0으로 설정된다.

    CalenderHandler[] calenders = new CalenderHandler[MAX_LENGTH];

  }


  public void list() {
    System.out.println("[채용공고 목록]");
    for (int i = 0; i < this.size; i++) {
      System.out.printf("%d, %s, %d, %d, %d\n", 
          this.calenders[i].no,
          this.calenders[i].title, 
          this.calenders[i].startDate,
          this.calenders[i].endDate,
          this.calenders[i].viewCount );
    }
  }


  public void detail() {
    System.out.println("[채용공고 상세보기]");
    int no = Prompt.inputInt("번호? ");

    Calender calender = findByNo(no);

    if (calender == null) {
      System.out.println("해당 번호의 채용공고가 없습니다.");
      return;
    }

    System.out.printf("제목: %s\n", calender.title);
    System.out.printf("내용: %s\n", calender.content);
    System.out.printf("시작일: %s\n", calender.startDate);
    System.out.printf("종료일: %s\n", calender.endDate);
    System.out.printf("조회수: %d\n", ++calender.viewCount);
  }



  public void update() {
    System.out.println("[채용공고 변경]");
    int no = Prompt.inputInt("번호? ");

    Calender calender = findByNo(no);

    if (calender == null) {
      System.out.println("해당 번호의 채용공고가 없습니다.");
      return;
    }

    String title = Prompt.inputString(String.format("제목(%s)? ", calender.title));
    String content = Prompt.inputString(String.format("내용(%s)? ", calender.content));

    String input = Prompt.inputString("정말 변경하시겠습니까?(y/N) ");
    if (input.equalsIgnoreCase("n") || input.length() == 0) {
      System.out.println("채용공고 변경을 취소하였습니다.");
      return;
    }

    calender.title = title;
    calender.content = content;
    System.out.println("채용공고를 변경하였습니다.");
  }

  public void delete() {
    System.out.println("[채용공고 삭제]");
    int no = Prompt.inputInt("번호? ");

    int index = indexOf(no);

    if (index == -1) {
      System.out.println("해당 번호의 채용공고가 없습니다.");
      return;
    }

    String input = Prompt.inputString("정말 삭제하시겠습니까?(y/N) ");
    if (input.equalsIgnoreCase("n") || input.length() == 0) {
      System.out.println("채용공고 삭제를 취소하였습니다.");
      return;
    }

    for (int i = index + 1; i < this.size; i++) {
      this.calenders[i - 1] = this.calenders[i];
    }
    this.calenders[--this.size] = null;

    System.out.println("채용공고를 삭제하였습니다.");
  }

  private Calender findByNo(int no) {
    for (int i = 0; i < this.size; i++) {
      if (this.calenders[i].no == no) {
        return this.calenders[i];
      }
    }
    return null;
  }

  private int indexOf(int no) {
    for (int i = 0; i < this.size; i++) {
      if (this.calenders[i].no == no) {
        return i;
      }
    }
    return -1;
  }
}

