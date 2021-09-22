package com.studywithus.handler.calendar;

import java.util.List;
import com.studywithus.domain.Calendar;
import com.studywithus.handler.CommandRequest;
import com.studywithus.handler.user.AuthLogInHandler;
import com.studywithus.util.Prompt;

public class JobsCalendarAddHandler extends AbstractCalendarHandler {

  public JobsCalendarAddHandler(List<Calendar> jobsCalendarList) {
    super(jobsCalendarList);
  }

  @Override
  public void execute(CommandRequest request) {
    System.out.println("[이달의 채용공고 / 등록]\n");

    Calendar jobsCalendar= new Calendar();

    jobsCalendar.setNo(Prompt.inputInt("번호를 입력하세요. > "));
    jobsCalendar.setTitle(Prompt.inputString("제목을 입력하세요. > "));
    jobsCalendar.setWriter(AuthLogInHandler.getLoginUser());
    jobsCalendar.setContent(Prompt.inputString("내용을 입력하세요. > "));

    System.out.println("시작일을 입력하세요.");
    jobsCalendar.setStartYyyy(Prompt.inputInt("YYYY > "));
    jobsCalendar.setStartMm(Prompt.inputInt("MM > "));
    jobsCalendar.setStartDd(Prompt.inputInt("DD > "));

    System.out.println("종료일을 입력하세요.");
    jobsCalendar.setYyyy(Prompt.inputInt("YYYY > "));
    jobsCalendar.setMm(Prompt.inputInt("MM > "));
    jobsCalendar.setDd(Prompt.inputInt("DD > "));

    calendarList.add(jobsCalendar);

    System.out.println();
    System.out.println("이달의 채용공고 등록이 완료되었습니다.\n");
  }
}
