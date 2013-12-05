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
