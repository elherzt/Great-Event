require "spec_helper"

describe "user sign in" do
    let (:user) {create(:user)} 
  it "allows users to sign in" do
    login_as(user, :scope => :user, :run_callbacks => false)
    visit user_path user
    page.should have_content(user.username)
  end
end
