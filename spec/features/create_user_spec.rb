require "spec_helper"

feature "login with a new user" do
  scenario "creating new user" do 
    visit root_path
    click_on "Sign up"
    page.should have_content("New User")
    fill_in "user[name]", with: Faker::Name.name
    fill_in "user[username]", with: newuser
    fill_in "user[email]", with: Faker::Internet.email
    fill_in "user[password]", with: "12345678"
    fill_in "user[password_confirmation]", with: "12345678"
    click_button "Sign up"
    page.should have_content("User added")
  end

  scenario "login with a existent user" do
    visit root_path
    click_on "Login"
    fill_in "user[username]", with: newuser
    fill_in "user[password]", with: "12345678"
    fill_in "user[password_confirmation]", with: "12345678"
    page.should have_conten("newuser")
  end
end


