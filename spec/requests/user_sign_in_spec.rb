require "spec_helper"

describe "user sign in" do
  it "allows users to sign in after they have registered" do
    #user = User.create(name: "Juan",
                       #username: "juanito",
                       #email: "alin@example.com",
                       #:password => "12345678")
    visit root_path
    click_on "Sign in"

    fill_in "username",    :with => "juanito"
    fill_in "Password", :with => "12345678"

    click_button "Sign in"

    page.should have_content("juanito")
  end
end
