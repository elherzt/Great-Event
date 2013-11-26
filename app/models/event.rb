class Event < ActiveRecord::Base
  belongs_to :user
  validates :user_id, :name, :description, :place, :hour, :start_date, presence: true
end
