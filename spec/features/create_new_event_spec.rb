require "spec_helper"

feature "creating a new event" do
  before do
    login
    visit root_path
  end

  scenario "with valid attributes" do
    click_link "New Event"
    event =  attributes_for(:event) 
    fill_in "event[name]", with: event[:name]
    fill_in "event[start_date]", with: event[:start_date]
    fill_in "event[end_date]", with: event[:end_date]
    fill_in "event[place]", with: event[:place]
    fill_in "event[cost]", with: event[:cost]
    fill_in "event[requirements]", with: event[:requirements]
    fill_in "event[notes]", with: event[:notes]
    click_button "Create Event"
    page.should have_content(event[:name])
  end

end
  
