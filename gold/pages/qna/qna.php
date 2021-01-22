<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Gold</title>

    <!-- font awesome link -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />

    <!-- main style css link -->
    <link rel="stylesheet" href="/gold/css/style.css" />

    <!-- design css link -->
    <link rel="stylesheet" href="/gold/css/design_web_app.css">

    <!-- qna css link -->
    <link rel="stylesheet" href="/gold/css/qna.css">
    
    <!-- animation css link -->
    <link rel="stylesheet" href="/gold/css/animation.css" />

    <!-- media query style css link -->
    <link rel="stylesheet" href="/gold/css/media.css" />
  </head>
  <body>
    <div class="wrap">
      
      <?php include $_SERVER["DOCUMENT_ROOT"]."/gold/include/header.php" ?>

      <section class="contents qna hasTitle">
        <div class="center">
          <!-- contact title -->
          <div class="title">
            <h2>Q&A</h2>
            <div class="subTit">
              <span class="subLine"></span>
              <a href="#" class="subLink">View More Details</a>
            </div>
          </div>
          <!-- end of contact title -->

            <div class="qnaBoxes deWeBoxes">
                <div class="qnaTable">
                    <ul class="qnaList">
                    <li class="qnaTitle clear">
                            <span class="qnaNum">번호</span>
                            <span class="qnaId">아이디</span>
                            <span class="qnaTit">제목</span>
                            <span class="qnaReg">등록일</span>
                            <span class="qnaHit">조회수</span>
                        </li>
                        <li class="qnaContent clear">
                            <span class="qnaNum">1</span>
                            <span class="qnaId">test</span>
                            <span class="qnaTit"><a href="#"> 첫 개시글 입니다.</a></span>
                            <span class="qnaReg">2021-01-22</span>
                            <span class="qnaHit">99</span>
                        </li>
                        <li class="qnaContent clear">
                            <span class="qnaNum">2</span>
                            <span class="qnaId">test1</span>
                            <span class="qnaTit"><a href="#"> 두번째 개시글 입니다.</a></span>
                            <span class="qnaReg">2021-01-22</span>
                            <span class="qnaHit">12</span>
                        </li>
                        <li class="qnaContent clear">
                            <span class="qnaNum">3</span>
                            <span class="qnaId">test2</span>
                            <span class="qnaTit"><a href="#"> 세번째 개시글 입니다.</a></span>
                            <span class="qnaReg">2021-01-22</span>
                            <span class="qnaHit">12</span>
                        </li>
                    </ul>
                </div>
                <!-- end of qna table -->
                <div class="searchPaging clear">
                    <div class="search">
                        <form action="abc.php" name="qnaSearch"  class="clear">
                            <select name="searchSelact" id=""class="searchSelact">
                                <option value="qnaSearchTitle">제목</option>
                                <option value="qnaSearchId">아이디</option>
                            </select>
                            <input type="text" name="qnaSearchInput" class="qnaSearchInput" placeholder="검색어를 입력해주세요.">
                            <button type="button" class="qnaSrarchBtn"><i class="fa fa-search"></i></button>
                        </form>

                    </div>
                    <div class="paging">
                        <span class="firstPg"><i class="fa fa-angle-double-left"></i></span>
                        <span class="prevPg"><i class="fa fa-angle-left"></i></span>
                        <span class="PgNum active">1</span>
                        <span class="PgNum">2</span>
                        <span class="prevPg"><i class="fa fa-angle-right"></i></span>
                        <span class="lastPg"><i class="fa fa-angle-double-right"></i></span>
                    </div>                
                </div>
                <!-- end of search paging -->
                <div class="WriteBox">
                        <form action="abc.php" method="post">
                            <input type="text" placeholder="질문을 작성해 주세요.">
                            <input type="text" placeholder="질문을 작성해 주세요.">
                            <button class="writeBtn"> 글쓰기</button>                  
                        </form>
                    </div>
            </div>
        </div>
        <!-- end of center -->
  
      </section>

      <?php include $_SERVER["DOCUMENT_ROOT"]."/gold/include/about.php" ?>
      <?php include $_SERVER["DOCUMENT_ROOT"]."/gold/include/footer.php" ?>

    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
    <script src="https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.min.js"></script>
    <script src="/gold/js/custom.js"></script>
    <script src="/gold/js/web_design_page.js"></script>
    <script src="/gold/js/app.js"></script>
  </body>
</html>
