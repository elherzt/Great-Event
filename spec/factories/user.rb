require 'faker'
FactoryGirl.define do
  factory :user do
    name "Dummy User Test2"
    username "dummy_user3"
    email "usertest3@test.com"
    password "12345678"
    password_confirmation "12345678"
  end
end
