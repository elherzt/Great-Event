require "spec_helper"

feature "deleting a existent event" do
  before do 
    login
  end
  scenario "with a existent even", js: true do
    user = User.last
    event = create(:event, user_id: user.id)
    visit user_path(user)
    page.should have_content(event.name)
    click_link "Delete"
    page.should_not have_content(event.name)
  end
end
