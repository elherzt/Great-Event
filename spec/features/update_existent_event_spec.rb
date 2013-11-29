require "spec_helper"

feature "updating a existent event" do
  before do
    login
  end

  scenario "a existent event", js: true do
    user = User.last
    event = create(:event, user_id: user.id)
    visit user_path(user)
    page.should have_content(event.name)
    click_link "Edit"
    page.should have_content("Update Event")
    fill_in "event[description]", with: "My description"
    fill_in "event[place]", with: "My place"
    fill_in "event[cost]", with: "free"
    click_button "Update Event"
    page.should have_content("My description")
    page.should have_content("My place")
    page.should have_content("free")
  end
  
end
