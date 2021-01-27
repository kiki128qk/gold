$(function () {
  let designBox = $(".designBox");

  for (let i = 0; i < designBox.length; i++) {
    let allTxt = designBox.eq(i).find(".cutTxt").text();

    function cutTxt() {
      let winWidth = $(window).width();
      if (winWidth < 800) {
        designBox
          .eq(i)
          .find(".cutTxt")
          .text(allTxt.substr(0, 20) + " ...");
      } else {
        designBox
          .eq(i)
          .find(".cutTxt")
          .text(allTxt.substr(0, 50) + " ...");
      }
    }

    $(window).resize(function () {
      cutTxt();
    });
    cutTxt();
  }

  //load more when clicking load more button

  const loadMore = function () {
    $(".designBox").hide();
    $(".designBox").slice(0, 4).show();
    $(".loadMore").click(function (e) {
      e.preventDefault();
      $(".designBox:hidden").slice(0, 4).show();
      if ($(".designBox:hidden").length == 0) {
        $(".loadMore").hide();
      }
    });
  };
  loadMore();

  //go to top
  $(".toTop").click(function () {
    $("html,body").animate({ scrollTop: 0 }, 300);
  });
});
