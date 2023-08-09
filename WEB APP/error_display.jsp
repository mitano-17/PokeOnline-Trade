 $(document).ready(function() {
    var close = document.getElementsByClassName("close_button");
      var i;

      for (i = 0; i < close.length; i++) {
        close[i].onclick = function(){
          var div = this.parentElement;
          div.style.opacity = "0";
          setTimeout(function(){ div.style.display = "none"; }, 600);
        }
      }

    //First hide the alert :
      $("#approve_msg").hide();
      $("#decline_msg").hide();
      $("#demote_msg").hide();
      $("#promote_msg").hide();

      
    // then bind the click :
    $(".approve").on("click", function () {
      
      $("#approve_msg").fadeIn(); // Shows the alert
      
      window.setTimeout(function() {
        $("#approve_msg").fadeOut(); // hides it again
      }, 5000);
      
    });

    $(".reject").on("click", function () {
      
      $("#decline_msg").fadeIn(); // Shows the alert
      
      window.setTimeout(function() {
        $("#decline_msg").fadeOut(); // hides it again
      }, 5000);
      
    });

    $(".make_gym_leader").on("click", function () {
      
      $("#promote_msg").fadeIn(); // Shows the alert
      
      window.setTimeout(function() {
        $("#promote_msg").fadeOut(); // hides it again
      }, 5000);
      
    });

    $(".remove_membership").on("click", function () {
      
      $("#demote_msg").fadeIn(); // Shows the alert
      
      window.setTimeout(function() {
        $("#demote_msg").fadeOut(); // hides it again
      }, 5000);
      
    });
});
