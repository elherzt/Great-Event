require "spec_helper"

describe "user sign up" do
  it "allows users to sign up" do
    visit '/users/sign_up'

    fill_in "user[name]",     with: "Jorge Ruiz"
    fill_in "user[username]", with: "jojojo"
    fill_in "user[email]",    with: "test@user.test"
    fill_in "user[password]", with: "12345678"
    fill_in "user[password_confirmation]", with: "12345678"
    click_button "Sign up"
    page.should have_content("jojojo")
  end
end
