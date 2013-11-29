$(document).ready(function(){
  counter = 1
  $("#button-left").unbind("click").click(function(){
    if (counter < 5) { 
      counter++;
      change_image(counter);
    } 
  });

  $("#button-right").unbind("click").click(function(){
    if (counter > 1) { 
      counter--;
      change_image(counter);
    }  
  });

  function change_image(counter){
    console.log(counter)
    route = "/assets/events/event"+counter+".jpg";
    $(".photos-container").hide("slow", function() {
      $(".photos-container").css("background-image","url("+route+")");
    });
    $(".photos-container").show(2000);
  }

});
