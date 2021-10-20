package com.studywithus.domain;

import java.sql.Date;

public class MentorApplicationForm {
  private int no;
  private Member member;
  private String selfIntroduction; 
  private String chargeStudySubject; 
  private Date registeredDate; 
  private int status; // 0 = 미정, 1 = 승인, 2 = 거절
  private String remarks;

  public Member getMember() {
    return member;
  }

  public void setMember(Member member) {
    this.member = member;
  }

  public int getStatus() {
    return status;
  }

  public void setStatus(int status) {
    this.status = status;
  }

  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

  public String getSelfIntroduction() {
    return selfIntroduction;
  }

  public void setSelfIntroduction(String selfIntroduction) {
    this.selfIntroduction = selfIntroduction;
  }

  public String getChargeStudySubject() {
    return chargeStudySubject;
  }

  public void setChargeStudySubject(String chargeStudySubject) {
    this.chargeStudySubject = chargeStudySubject;
  }

  public Date getRegisteredDate() {
    return registeredDate;
  }

  public void setRegisteredDate(Date registeredDate) {
    this.registeredDate = registeredDate;
  }

  public String getRemarks() {
    return remarks;
  }

  public void setRemarks(String remarks) {
    this.remarks = remarks;
  }

}
