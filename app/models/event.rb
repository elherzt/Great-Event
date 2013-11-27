class Event < ActiveRecord::Base
  belongs_to :user
  validates :user_id, :name, :description, :place, :hour, :start_date, presence: true
  scope :after, -> { where "start_date > ?", Time.now }
  scope :done, -> { where "end_date < ?", Time.now }
  scope :next, -> { where "start_date >= ? AND start_date <= ?", from, to }

  def first_date 
    start_date.strftime("%d %B %Y")
  end

  def second_date
    if end_date.present?
      end_date.strftime("%d %B %Y")
    else
      start_date.strftime("%d %B %Y")
    end
  end


  def self.from
    Time.now
  end

  def self.to
    Time.now + 30.days
  end

end
