var progressChecker = (function() {
  var current_user_id = 0;
  var current_user_points = 0;
  var url = '';

  var baseURL = function() {
    pathArray = location.href.split( '/' );
    protocol = pathArray[0];
    host = pathArray[2];
    url = protocol + '//' + host;

    return url;
  }

  var init = function(userId, points) {
    current_user_id: userId;
    current_user_points: points;
    update();
    url = baseURL();

  };

  var getPoints = function() {
    return current_user_points;
  };

  var addPoints = function(points) {
    current_user_points += points;
    update();

    updatePoints(points);
  };

  var resetPoints = function() {
    current_user_points = 0;
    update();

    $.ajax({
      crossOrigin: true,
      type: "POST",
      // url: "<%#= request.base_url %>/reset_points",
      url: url + "/reset_points",
      success: function(response) {
        // Dimitri
        console.log(response);
      }
    });
  };

  function update() {
    update_page_score();
    update_progress_bar();
  };

  function updatePoints(points) {
    // experimental
    // console.log(arguments.callee.caller.name);

    $.ajax({
      crossOrigin: true,
      type: "POST",
      data: {user_id: current_user_id, points: points },
      // url: "<%#= request.base_url %>/reset_points",
      url: url + "/add_points",
      success: function(response) {
        console.log(response)
      }
    });
  };

  function update_page_score() {
    console.log("inside update: " + current_user_points);
    $(".user-points-updatable").text(current_user_points);
    $(".progress-bar").css({"width": current_user_points + "%"});
    $("#user-progress-bar").css({"width": current_user_points + "%"});
  };

  function update_progress_bar() {
    if (current_user_points <= 24) {
      $('.one').replaceWith('<div class="one no-color">');
      $('.two').replaceWith('<div class="two no-color">');
      $('.three').replaceWith('<div class="three no-color">');
      $('.first-star-done').replaceWith('<%= image_tag("icons/009-star.png", class: "first-star") %>');
    };

    // if ($('.progress-bar')[0].style.width >= '25%') {
    if (current_user_points >= 25) {
      $('.one').replaceWith('<div class="one success-color">');
      // $('.one').clone().insertBefore('.one').addClass('animated pulse').delay(200).removeClass('animated pulse');
    };
    // need to add default circle  again..
    if (current_user_points >= 50) {
      $('.two').replaceWith('<div class="two success-color">');
    };
    if (current_user_points >= 75) {
      $('.three').replaceWith('<div class="three success-color">');
    };
    if (current_user_points >= 100) {
      $('.first-star').replaceWith('<%= image_tag("icons/003-star-3.png", class: "first-star-done") %>');
      $('.first-star-done').addClass('animated rubberBand');
    };
  };

  return {
    init: init,
    baseURL: baseURL,
    getPoints: getPoints,
    addPoints: addPoints,
    resetPoints: resetPoints
  }
})();
