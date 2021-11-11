<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <meta name="copyright" content="MACode ID, https://macodeid.com/">

  <title>스터디위더스: 메인</title>

  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">

  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="css/maicons.css">

  <link rel="stylesheet" href="css/bootstrap.css">

  <link rel="stylesheet" href="../assets/vendor/animate/animate.css">

  <link rel="stylesheet" href="css/theme.css">

  <link rel="stylesheet" href="css/footer.css">

</head>

<style>
  /*
  @font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 300;
  font-display: swap;
  src: url(https://fonts.gstatic.com/s/roboto/v29/KFOlCnqEu92Fr1MmSU5fCRc4EsA.woff2) format('woff2');
  unicode-range: U+0460-052F, U+1C80-1C88, U+20B4, U+2DE0-2DFF, U+A640-A69F, U+FE2E-FE2F;
}
*/
</style>

<body>

  <!-- Back to top button -->
  <div class="back-to-top"></div>

  <header>
    <nav class="navbar navbar-expand-lg navbar-light bg-white sticky" data-offset="500">
      <div class="container">
        <!--<a href="#" class="navbar-brand">스터디<span class="text-primary">위더스</span></a>-->
        <img src="img/swu_text.png" alt="">

        <div class="navbar-collapse collapse" id="navbarContent">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="freestudy/list">Study</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="chargestudy/list">Mentoring</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="community/list?categoryNo=0">Community</a>
            </li>
             <!-- 여기 햄버거 & 드롭다운 추가해야 함-->
                <li class="nav-item">
                <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation"></button>
                <span class="navbar-toggler-icon"></span>
              <!-- ver.bootstrap
             <div class="dropdown">
              <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false">
                <span class="navbar-toggler-icon"></span>
                  </button>
                  <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
                    <li><button class="dropdown-item" type="button">Account</button></li>
                    <li><button class="dropdown-item" type="button">Account</button></li>
                    <li><button class="dropdown-item" type="button>Account</button></li>
                  </ul>
                </div>
                -->
      </div>
    </nav>

<!-- 대표 메뉴 세 개 나오는 파트-->
    <div class="container">
      <div class="page-banner home-banner">
        <div class="row align-items-center flex-wrap-reverse h-100">
          <div class="col-md-6 py-5 wow fadeInLeft">
            <h1 class="mb-4">Let's Study With Us!</h1>
            <p class="text-lg text-grey mb-5">내가 원하는 분야의 어쩌고 블라블라 한 눈에 살펴볼 수 있는 하면서 일단 스터디위더스 소개를 적자. </p> 
            <p> 그리고 이제 여기 밑에 어쩌고를 기반으로 어쩌고저쩌고 그랬습니다 하면서 우리 프로젝트 소개 이만큼만 적으면 되겠지 아니면 위에 문장이랑 아예 합쳐서 적을까?</p>
            <!-- <a href="#" class="btn btn-primary btn-split">Watch Video <div class="fab"><span class="mai-play"></span></div></a> -->
          </div>
          <div class="col-md-6 py-5 wow zoomIn">
            <div class="img-fluid text-center">
             
              <!-- 교체할말
             <img class="img_main" src="img/urban-working-remotely.png"> -->
             <img class="img_main" src="img/clip-1675.png">
             
            </div>
          </div>
        </div>
        <!--<a href="#about" class="btn-scroll" data-role="smoothscroll"><span class="icon-arrow-down"></span></a>-->
        <a href="#about" class="btn-scroll" data-role="smoothscroll"><img src="img/down-arrow .png"></img></span></a>
      </div>
    </div>
  </header>

  <div class="page-section">
    <div class="container">
      <div class="row">
        <div class="col-lg-4">
          <div class="card-service wow fadeInUp">
            <div class="header">
              <!--img src에서 아이콘으로 대체함 (메인 중앙 세 개 아이콘) -->
              <svg xmlns="http://www.w3.org/2000/svg" width="60" height="60" fill="currentColor" class="bi bi-building" viewBox="0 0 16 16">
              <path d="M2 11h1v1H2v-1zm2 0h1v1H4v-1zm-2 2h1v1H2v-1zm2 0h1v1H4v-1zm4-4h1v1H8V9zm2 0h1v1h-1V9zm-2 2h1v1H8v-1zm2 0h1v1h-1v-1zm2-2h1v1h-1V9zm0 2h1v1h-1v-1zM8 7h1v1H8V7zm2 0h1v1h-1V7zm2 0h1v1h-1V7zM8 5h1v1H8V5zm2 0h1v1h-1V5zm2 0h1v1h-1V5zm0-2h1v1h-1V3z"/>
              <path fill-rule="evenodd" d="M14.763.075A.5.5 0 0 1 15 .5v15a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1-.5-.5V14h-1v1.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V10a.5.5 0 0 1 .342-.474L6 7.64V4.5a.5.5 0 0 1 .276-.447l8-4a.5.5 0 0 1 .487.022zM6 8.694 1 10.36V15h5V8.694zM7 15h2v-1.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 .5.5V15h2V1.309l-7 3.5V15z"/>
            </svg>
            </div>
            <div class="body">
              <h5 class="text-secondary">일반기업</h5>
              <p>We help you define your SEO objective & develop a realistic strategy with you</p>
              <a href="service.html" class="btn btn-primary">Read More</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="card-service wow fadeInUp">
            <div class="header">
              <svg xmlns="http://www.w3.org/2000/svg" width="50" height="60" fill="currentColor" class="bi bi-pencil-fill" viewBox="0 0 16 16">
                <path d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z"/>
              </svg>
            </div>
            <div class="body">
              <h5 class="text-secondary">공기업/공무원</h5>
              <p>We help you define your SEO objective & develop a realistic strategy with you</p>
              <a href="service.html" class="btn btn-primary">Read More</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="card-service wow fadeInUp">
            <div class="header">
              <svg xmlns="http://www.w3.org/2000/svg" width="60" height="60" fill="currentcolor" class="bi bi-pc-display" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M8 1a1 1 0 0 1 1-1h6a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H9a1 1 0 0 1-1-1V1Zm1 13.5a.5.5 0 1 1 1 0 .5.5 0 0 1-1 0Zm2 0a.5.5 0 1 1 1 0 .5.5 0 0 1-1 0ZM9.5 1a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5ZM9 3.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5ZM1.5 2A1.5 1.5 0 0 0 0 3.5v7A1.5 1.5 0 0 0 1.5 12H6v2h-.5a.5.5 0 0 0 0 1H7v-4H1.5a.5.5 0 0 1-.5-.5v-7a.5.5 0 0 1 .5-.5H7V2H1.5Z"/>
              </svg></div>
            <div class="body">
              <h5 class="text-secondary">프로그래밍</h5>
              <p>We help you define your SEO objective & develop a realistic strategy with you</p>
              <a href="service.html" class="btn btn-primary">Read More</a>
            </div>
          </div>
        </div>
      </div>
    </div> <!-- .container -->
  </div> <!-- .page-section -->

 
  <div class="page-section" id="about">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 py-3 wow fadeInUp">
          <span class="subhead">About us</span>
          <h2 class="title-section">TEAM3</h2>
          <div class="divider"></div>

          <p>여기에 이제 프로젝트 설명이 들어갈 예정입니당. 사이트를 왜 만들게 되었는지, 어떤 기능들을 구현했는지 간단하게 적어두면 좋을 섹션인 것 같아</p>
          <p>조원 이름이랑 깃헙 주소를 넣을까 말까 고민이다 안 넣으면 그냥 이렇게 간단한 소개만 넣을까?</p>
          <a href="about.html" class="btn btn-primary mt-3">Read More</a>
        </div>
        <div class="col-lg-6 py-3 wow fadeInRight">
          <div class="img-fluid py-3 text-center">
            <img class="img_sub" src="img/gummy-macbook.png" alt="">
          </div>
        </div>
      </div>
    </div> <!-- .container -->
  </div> <!-- .page-section -->

  <!-- Blog -->
  <div class="page-section">
    <div class="container">
      <div class="text-center wow fadeInUp">
        <h2 class="title-section">스터디위더스 둘러보기</h2>
        <br>
        <div class="subhead">스터디위더스 회원이시라면, 아래 아이콘을 통해 주요기능을 이용해보세요</div>
        <br>
        <div class="divider mx-auto"></div>
      </div>

      <div class="row mt-5">
        <div class="col-lg-4 py-3 wow fadeInUp">
          <div class="card-blog">
            <div class="header">
              <div class="post-thumb">
                <img src="img/st-cr.png" >
              </div>
            </div>
            <div class="body">
              <h5 class="post-title"><a href="freestudy/form">스터디 등록하기</a></h5>
              <div class="post-date">나의 관심 분야로 새로운 스터디 모임을 만들어보세요</div>
            </div>
          </div>
        </div>
        
        <div class="col-lg-4 py-3 wow fadeInUp">
          <div class="card-blog">
            <div class="header">
              <div class="post-thumb">
                <img src="img/cal.png">
              </div>
            </div>
            <div class="body">
              <h5 class="post-title"><a href="#">이달의 주요일정</a></h5>
              <div class="post-date">채용공고와 시험일정을 캘린더로 한 눈에 확인해보세요</div>
            </div>
          </div>
        </div>

        <div class="col-lg-4 py-3 wow fadeInUp">
          <div class="card-blog">
            <div class="header">
              <div class="post-thumb">
                <img src="img/saving.png">
              </div>
            </div>
            <div class="body">
              <h5 class="post-title"><a href="chargestudy/list">멘토링 구경하기</a></h5>
              <div class="post-date">검증된 멘토들과 함께하는 유료 멘토링에도 참여해보세요</div>
            </div>
          </div>
        </div>

        
        <div class="col-12 mt-4 text-center wow fadeInUp">
          <div class="post-date"><br><br><br><br> 아직 회원이 아니신가요?</div><br>
          <a href="" class="btn btn-primary">Join Us</a><br><br>
        </div>
      </div>
      <!--풋터-->
      <div class="footer" text-align="center">
        <div>LOGO</div>
        <div>
          스터디위더스 <br>
          Addr. 서울특별시 강남구 역삼동 12-7번지. <br>
          02 - 123 - 4567 <br>
          COPYRIGHT 2021. TEAM3. ALL RIGHT RESERVED.
          
          Illustration by 
          <a href="https://icons8.com/illustrations/author/602b6fa7123f993a3afdba7b">  Victoria Chepkasova</a> from <a href="https://icons8.com/illustrations">Ouch!</a>
        </div>
      </div>
    </div>
  </div>

</div>

<script src="js/jquery-3.5.1.min.js"></script>

<script src="js/bootstrap.bundle.min.js"></script>

<script src="js/google-maps.js"></script>

<script src="js/wow.min.js"></script>

<script src="js/theme.js"></script>
  
</body>
</html>