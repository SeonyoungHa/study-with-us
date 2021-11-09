<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
  <title>무료 스터디</title>

<style>
  xdiv {
    display: inline-block;
    border: 1px solid black;
    margin: 5px;
    padding: 10px;
    width: 140px;
    height: 180px;
    text-align: center;
    float: left;
  }

  #input1 {
    width: 80px;
    height: 30px;
    border-radius: 4px;
    background-color: rgb(117, 109, 170);
    color: rgb(246, 245, 252);
    border: 2px solid rgb(117, 109, 170);
    box-shadow: 2px 2px 0px 0px rgb(77, 72, 72);
    margin: 5px;
  }

  #input2 {
    float: right;
    width: 110px;
    height: 30px;
    border-radius: 4px;
    background-color: rgb(246, 245, 252);
    color: rgb(117, 109, 170);
    border: 2px solid rgb(117, 109, 170);
    box-shadow: 2px 2px 0px 0px rgb(77, 72, 72);
    margin: 5px;
  }

  #menu {
    background-attachment: scroll;
background-clip: border-box;
background-color: rgb(255, 255, 255);
background-image: none;
background-origin: padding-box;
background-position-x: 0%;
background-position-y: 0%;
background-size: auto;
border-bottom-left-radius: 24px;
border-bottom-right-radius: 24px;
border-top-left-radius: 24px;
border-top-right-radius: 24px;
box-shadow: rgba(0, 0, 0, 0.15) 0px 5px 25px 0px;
box-sizing: border-box;
color: rgb(0, 0, 0);
cursor: pointer;
display: list-item;
font-family: "Spoqa Han Sans Neo", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Fira Sans", "Droid Sans", "Helvetica Neue", sans-serif;
height: 240px;
list-style-image: none;
list-style-position: outside;
list-style-type: none;
margin-bottom: 10px;
margin-left: 10px;
margin-right: 10px;
margin-top: 10px;
opacity: 1;
padding-bottom: 24px;
padding-left: 24px;
padding-right: 24px;
padding-top: 24px;
position: relative;
text-align: left;
transition-delay: 0s;
transition-duration: 0.2s;
transition-property: transform;
transition-timing-function: ease-in;
width: 244px;
  }

#menu2 {
align-items: center;
box-sizing: border-box;
color: rgb(0, 0, 0);
cursor: pointer;
display: flex;
font-family: "Spoqa Han Sans Neo", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Fira Sans", "Droid Sans", "Helvetica Neue", sans-serif;
font-size: 12px;
height: 39px;
justify-content: center;
list-style-image: none;
list-style-position: outside;
list-style-type: none;
text-align: left;
width: 31.15625px;
  }

#icon {
  box-sizing: border-box;
color: rgb(154, 154, 154);
cursor: pointer;
display: block;
fill: rgb(154, 154, 154);
font-family: "Spoqa Han Sans Neo", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Fira Sans", "Droid Sans", "Helvetica Neue", sans-serif;
font-size: 12px;
height: 14px;
list-style-image: none;
list-style-position: outside;
list-style-type: none;
overflow-x: hidden;
overflow-y: hidden;
stroke: rgb(154, 154, 154);
stroke-width: 0px;
text-align: left;
width: 14px;
}

#h1{
-webkit-box-orient: vertical;
-webkit-line-clamp: 2;
box-sizing: border-box;
color: rgb(0, 0, 0);
cursor: pointer;
display: -webkit-box;
font-family: "Spoqa Han Sans Neo", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Fira Sans", "Droid Sans", "Helvetica Neue", sans-serif;
font-size: 16px;
font-weight: normal;
height: 40px;
line-height: 20.239999771118164px;
list-style-image: none;
list-style-position: outside;
list-style-type: none;
margin-block-end: 0px;
margin-block-start: 24px;
margin-bottom: 0px;
margin-inline-end: 0px;
margin-inline-start: 0px;
margin-left: 0px;
margin-right: 0px;
margin-top: 24px;
overflow-x: hidden;
overflow-y: hidden;
padding-bottom: 0px;
padding-left: 0px;
padding-right: 0px;
padding-top: 0px;
text-align: center;
width: 307.5px;
word-break: keep-all;
  }

#closemenu {
  background-color: rgb(0, 0, 0);
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  border-top-left-radius: 4px;
  border-top-right-radius: 4px;
  box-sizing: border-box;
  color: rgb(255, 255, 255);
  cursor: pointer;
  display: block;
  font-family: "Spoqa Han Sans Neo", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Fira Sans", "Droid Sans", "Helvetica Neue", sans-serif;
  height: 37px;
  left: 128px;
  list-style-image: none;
  list-style-position: outside;
  list-style-type: none;
  padding-bottom: 8px;
  padding-left: 8px;
  padding-right: 8px;
  padding-top: 8px;
  position: absolute;
  text-align: left;
  top: 120px;
  transform: matrix(1, 0, 0, 1, -39.25, -18.5);
  width: 78.46875px;
}

xbody {
  border: solid 3px color(756daa);
  padding: 10px;
  line-height: 20px
}

xdiv {
  border: solid 3px rgb(117, 109, 170);
  margin: 10px;
  color: white;
  width: 150px;
  display: inline-block;
}

.title {
  font-size: 40px;
}
 
@media (max-width: 600px) {
  .title {
    font-size: 20px;
  }
}

.studyTitle
{
-webkit-box-orient: vertical;
-webkit-line-clamp: 2;
box-sizing: border-box;
color: rgb(0, 0, 0);
cursor: pointer;
display: -webkit-box;
font-family: "Spoqa Han Sans Neo", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Fira Sans", "Droid Sans", "Helvetica Neue", sans-serif;
font-size: 16px;
font-weight: normal;
height: 20px;
line-height: 20.239999771118164px;
list-style-image: none;
list-style-position: outside;
list-style-type: none;
margin-block-end: 0px;
margin-block-start: 24px;
margin-bottom: 0px;
margin-inline-end: 0px;
margin-inline-start: 0px;
margin-left: 0px;
margin-right: 0px;
margin-top: 24px;
overflow-x: hidden;
overflow-y: hidden;
padding-bottom: 0px;
padding-left: 0px;
padding-right: 0px;
padding-top: 0px;
text-align: center;
width: 268px;
word-break: keep-all;
}

main {
  box-sizing: border-box;
  color: rgb(0, 0, 0);
  display: flex;
  flex-direction: column;
  font-family: "Spoqa Han Sans Neo", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Fira Sans", "Droid Sans", "Helvetica Neue", sans-serif;
  height: 5422px;
  margin: 0 auto;
xwidth: 711px;
}

.main_main {
 display: flex;
 flex-direction: column;
 box-sizing: inherit;
}

ul {
box-sizing: border-box;
color: rgb(0, 0, 0);
display: flex;
flex-wrap: wrap;
font-family: "Spoqa Han Sans Neo", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Fira Sans", "Droid Sans", "Helvetica Neue", sans-serif;
height: 520px;
list-style-image: none;
list-style-position: outside;
list-style-type: none;
margin-block-end: 160px;
margin-block-start: 0px;
margin-bottom: 160px;
margin-inline-end: 0px;
margin-inline-start: 0px;
margin-left: 0px;
margin-right: 0px;
margin-top: 0px;
padding-bottom: 0px;
padding-inline-start: 0px;
padding-left: 0px;
padding-right: 0px;
padding-top: 0px;
xwidth: 711px;
}

li {
text-align: center;
background-attachment: scroll;
background-clip: border-box;
background-color: rgb(255, 255, 255);
background-image: none;
background-origin: padding-box;
background-position-x: 0%;
background-position-y: 0%;
background-size: auto;
border-bottom-left-radius: 24px;
border-bottom-right-radius: 24px;
border-top-left-radius: 24px;
border-top-right-radius: 24px;
box-shadow: rgba(0, 0, 0, 0.15) 0px 5px 25px 0px;
box-sizing: border-box;
color: rgb(0, 0, 0);
cursor: pointer;
display: list-item;
font-family: "Spoqa Han Sans Neo", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Fira Sans", "Droid Sans", "Helvetica Neue", sans-serif;
height: 240px;
list-style-image: none;
list-style-position: outside;
list-style-type: none;
margin-bottom: 10px;
margin-left: 10px;
margin-right: 10px;
margin-top: 10px;
opacity: 1;
padding-bottom: 24px;
padding-left: 24px;
padding-right: 24px;
padding-top: 24px;
position: relative;
text-align: left;
transform: matrix(1.02, 0, 0, 1.02, 0, 0);
transition-delay: 0s;
transition-duration: 0.2s;
transition-property: transform;
transition-timing-function: ease-in;
width: 300px;
}

.on_offline {
margin-left: 50px;
cursor: pointer;
display: block;
font-family: "Spoqa Han Sans Neo", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Fira Sans", "Droid Sans", "Helvetica Neue", sans-serif;
height: 100px;
list-style-image: none;
list-style-position: outside;
list-style-type: none;
}

span {
  box-sizing: border-box;
color: rgb(0, 0, 0);
cursor: pointer;
display: flex;
font-family: "Spoqa Han Sans Neo", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Fira Sans", "Droid Sans", "Helvetica Neue", sans-serif;
height: 82px;
justify-content: center;
list-style-image: none;
list-style-position: outside;
list-style-type: none;
margin-block-end: 0px;
margin-block-start: 8px;
margin-bottom: 0px;
margin-inline-end: 0px;
margin-inline-start: 0px;
margin-left: 0px;
margin-right: 0px;
margin-top: 20px;
padding-bottom: 0px;
padding-inline-start: 0px;
padding-left: 0px;
padding-right: 0px;
padding-top: 0px;
text-align: left;
width: 275.5px;
}

.on_offline_status {
  xbox-sizing: border-box;
cursor: pointer;
xdisplay: block;
font-family: "Spoqa Han Sans Neo", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Fira Sans", "Droid Sans", "Helvetica Neue", sans-serif;
font-size: 16px;
xheight: 15px;
xlist-style-image: none;
xlist-style-position: outside;
xlist-style-type: none;
xmargin-block-end: 0px;
xmargin-block-start: 0px;
xmargin-bottom: 0px;
xmargin-inline-end: 0px;
xmargin-inline-start: 0px;
margin-left: -82px;
margin-right: 0px;
margin-top: 80px;
text-align: center;
xwidth: px;
}

section{
  bottom: 8px;
box-sizing: border-box;
color: rgb(0, 0, 0);
cursor: pointer;
display: flex;
font-family: "Spoqa Han Sans Neo", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Fira Sans", "Droid Sans", "Helvetica Neue", sans-serif;
font-size: 12px;
height: 39px;
list-style-image: none;
list-style-position: outside;
list-style-type: none;
position: absolute;
right: 16px;
text-align: left;
width: 103.625px;
}

.info_item{
  align-items: center;
box-sizing: border-box;
color: rgb(0, 0, 0);
cursor: pointer;
display: flex;
font-family: "Spoqa Han Sans Neo", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Fira Sans", "Droid Sans", "Helvetica Neue", sans-serif;
font-size: 12px;
height: 39px;
justify-content: center;
list-style-image: none;
list-style-position: outside;
list-style-type: none;
text-align: left;
width: 40.3125px;
}

.icon {
  width: 20px;
}

.icon_count {
  margin-left: 2px;
}

</style>

</head>
<body>

  <jsp:include page="../header.jsp"></jsp:include>

  <h1>무료 스터디 조회</h1>
    
    <br>
    <input id="input1" type="button" value="모집중">
    <input id="input1" type="button" value="진행중">
    <input id="input1" type="button" value="진행완료">
    
    <input id="input2" type="button" value="무료 스터디 작성">
    <a href='/swu/freestudy/form'>무료 스터디 작성</a>
    
    <hr size="2" noshade color="gray">

<c:forEach items="${freeStudyList}" var="freeStudy">

  <c:choose>
  <c:when test="${freeStudy.studyStatus eq 0}">
<c:set var="type" value="모집중"/>
  </c:when>
  </c:choose>
  <c:choose>
  <c:when test="${freeStudy.studyStatus eq 1}">
<c:set var="type" value="진행중"/>
  </c:when>
  </c:choose>
  <c:choose>
  <c:when test="${freeStudy.studyStatus eq 2}">
<c:set var="type" value="진행완료"/>
  </c:when>
  </c:choose>
  
<div class="wrapper">
  <main>
    <div class="main_main">

      <ul>
        <li>
          <h1 class="studyTitle"> ${freeStudy.title} </h1>
          <span>
            <img class="on_offline"
            src="/Users/haseon-yeong/git/study-with-us/project/study-with-us-project/app-server/src/main/webapp/freestudy/onlineIcon.png">
            <p class="on_offline_status">${freeStudy.onOffLine},${freeStudy.area}</p>
          </span>
          
          <section>
            <div class="info_item">

              <img class="icon"
              src="/Users/haseon-yeong/git/study-with-us/project/study-with-us-project/app-server/src/main/webapp/freestudy/fillingHeartIcon.png">
              <p class="icon_count">${freeStudy.likes}</p>
            </div>
            
            <div class="info_item">
              <img class="icon"
              src="/Users/haseon-yeong/git/study-with-us/project/study-with-us-project/app-server/src/main/webapp/freestudy/eyeIcon copy.png">
              <p class="icon_count">${freeStudy.viewCount}</p>
            </div>
            
            <div class="info_item">
              <img class="icon"
              src="/Users/haseon-yeong/git/study-with-us/project/study-with-us-project/app-server/src/main/webapp/freestudy/speechBalloonIcon copy.png">              
              <p class="icon_count">1</p>
            </div>
          </section>
        </li>
         
        <li>
          <h1 class="studyTitle"> 제목2 </h1>
          <span>
            <img class="on_offline"
            src="/Users/haseon-yeong/git/study-with-us/project/study-with-us-project/app-server/src/main/webapp/freestudy/offLineIcon2.png">
            <p class="on_offline_status">온라인,지명</p>
          </span>
          
          <section>
            <div class="info_item">
              <img class="icon"
              src="/Users/haseon-yeong/git/study-with-us/project/study-with-us-project/app-server/src/main/webapp/freestudy/fillingHeartIcon.png">
              <p class="icon_count">1</p>
            </div>
            
            <div class="info_item">
              <img class="icon"
              src="/Users/haseon-yeong/git/study-with-us/project/study-with-us-project/app-server/src/main/webapp/freestudy/eyeIcon copy.png">
              <p class="icon_count">1</p>
            </div>
            
            <div class="info_item">
              <img class="icon"
              src="/Users/haseon-yeong/git/study-with-us/project/study-with-us-project/app-server/src/main/webapp/freestudy/speechBalloonIcon copy.png">              
              <p class="icon_count">1</p>
              
              
            </div>
          </section>
        </li>
        
</c:forEach>

</tbody>
</table>
</body>
</html>









