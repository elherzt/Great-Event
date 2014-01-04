$(document).ready(function(){
  $("#button-search").click(function(){
    value = $("#search_event").val();
    if (value == '') {
      alert("you must put a value to filter search");
      $("#search_event").val([]);
    };
  });
});
