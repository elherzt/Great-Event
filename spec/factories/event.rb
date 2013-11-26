require 'faker'
FactoryGirl.define do
  factory :event do
  name "Ruby Workshop"
  start_date "11/12/2013"
  end_date "15/12/2013"
  hour "10:00"
  place "Francisco I. Madero #531"
  cost 150.00   
  requirements "POO"
  notes "It's a great event"
  end
end
