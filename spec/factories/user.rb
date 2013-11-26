require 'faker'
FactoryGirl.define do
  factory :user do
    name Faker::Name.name
    username Faker::Internet.user_name
    email Faker::Internet.email
    password "12345678"
    password_confirmation "12345678"
  end
end
