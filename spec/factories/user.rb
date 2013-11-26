require 'faker'
FactoryGirl.define do
  factory :user do
    name "Dummy User Test"
    username "dummy_user"
    email "usertest@test.com"
    password "12345678"
    password_confirmation "12345678"
  end
end
