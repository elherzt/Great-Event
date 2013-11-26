require "spec_helper"

feature "creating a new event" do
  before do
    login
  end

  scenario "with valid attributes", js: true do
    visit root_path
    click_on "New Event"
    event =  attributes_for(:event) 
    fill_in "event[name]", with: event[:name]
    fill_in "event[description]", with: event[:description]
    fill_in "event[start_date]", with: event[:start_date]
    fill_in "event[end_date]", with: event[:end_date]
    fill_in "event[place]", with: event[:place]
    fill_in "event[cost]", with: event[:cost]
    fill_in "event[hour]", with: event[:hour]
    fill_in "event[requirements]", with: event[:requirements]
    fill_in "event[notes]", with: event[:notes]
    click_button "Create Event"
    page.should have_content(event[:name])
  end

end
  
