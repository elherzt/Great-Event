class Event < ActiveRecord::Base
  mount_uploader :poster, PosterUploader
  belongs_to :user
  validates :user_id, :name, :description, :place, :hour, :start_date, presence: true
  scope :current, -> { where "start_date < ? AND end_date > ?", Time.now, Time.now }
  scope :done, -> { where "end_date < ?", Time.now }
  scope :next, -> { where "start_date >= ? AND start_date <= ?", from, to }

  def self.search(search)
    if search
      where("name LIKE ?", "%#{search}%")
    else
      nil
    end
  end

  def user_name
    user.name
  end
  def start_date_format
    start_date.strftime("%d %B %Y")
  end


  def end_date_format
    if end_date.present?
      end_date.strftime("%d %B %Y")
    else
      start_date.strftime("%d %B %Y")
    end
  end
  
  def image
    poster.present? ? poster.url : "event_default.jpg"
  end
  def self.from
    Time.now
  end

  def self.to
    Time.now + 30.days
  end

end
