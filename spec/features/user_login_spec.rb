require "spec_helper"

describe "user sign in" do
    let (:user) {create(:user)} 
  it "allows users to sign in" do
    visit '/users/sign_in'

    fill_in "user[username]",    :with => user.username
    fill_in "user[password]", :with => user.password

    click_button "Sign in"

    page.should have_content(user.username)
  end
end
