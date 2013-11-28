$(document).ready(function(){
  $(".end_date").change(function() {
    end_date   = Date.parse($(".end_date").val());
    start_date = Date.parse($(".start_date").val());
    compare_dates(start_date, end_date);
  });

  $(".start_date").change(function(){
    $(".end_date").css("visibility","visible");
    start_date = $(".start_date").val();
    $(".end_date").val(start_date);
  });

  function compare_dates(a, b){ 
    if (a <= b){
      $("#date_error").html("Date is valid");
    }
    else{
      $("#date_error").html("The end date should be after to start date");
      $(".end_date").val([]);
    }
  }

  $(".create_event").click(function(){
    if ($(".end_date").val() == ""){
      date = $(".start_date").val();
      $(".end_date").val(date);
    }
  });

  $(".event_free").click(function(){
    $(".cost_event").val(0);
    $(".cost_event").slideUp();
    $(this).css("visibility", "hidden")
  });
  
  $("#event_chronicle").click(function(){
    $('#chronicle_events').show(1000);
    $('#photos_events').hide();
    $('#data_events').hide();
  });

  $("#event_photos").click(function(){
    $('#chronicle_events').hide();
    $('#photos_events').show(1000)
    $('#data_events').hide();
  });

  $("#event_data").click(function(){
    $('#chronicle_events').hide()
    $('#photos_events').hide()
    $('#data_events').show(1000)
  });
});
