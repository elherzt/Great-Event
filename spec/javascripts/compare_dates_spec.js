describe ("Compare vaild dates", function(){
  it("vaild date", function(){
    date1 = "Nov/22/2013";
    date2 = "Nov/25/2013";
    expect(compare_dates(date1, date2)).toEqual("Date is valid");
  });
});

describe ("Compare invalid dates", function(){
  it("invaild date", function(){
    date1 = "Nov/22/2013";
    date2 = "Nov/19/2013";
    expect(compare_dates(date1, date2)).toEqual("The end date should be after to start date");
  });
});

describe ("Event for free", function(){
  beforeEach(function() {
    jasmine.getFixtures().set(
      '<a href="#" class="event_free">Free</a>' +
      '<input type="text" class="cost_event"></input>'
    );
  });
  it("puts 0 the cost of event", function(){
    $(".event_free").trigger('click');
    expect( $(".cost_event").val() ).toEqual(0);
  });
});

describe ("puts a end date by default", function(){

  beforeEach(function() {
    jasmine.getFixtures().set(
      '<input type="text" class="start_date" value="Nov/12/13"></input>' +
      '<input type="text" class="end_date"></input>' +
      '<input type="submit" class="create_event"></input>'
    );
  });

  it("muts puts the start_date in end_date", function(){
    $(".create_event").trigger('click');
    expect( $(".end_date").val ).toEqual("Nov/12/13");
  });
});

describe ("puts a text field to end date", function(){

  beforeEach(function() {
    jasmine.getFixtures().set(
      '<input type="text" class="start_date"></input>' +
      '<input type="text" class="end_date style="visibility: hidden;"></input>' +
    );
  });

  it("muts puts the field to end date", function(){
    $(".create_event").trigger('change');
    expect( $(".end_date").css("visibility")).toEqual("visible");
  });
});

