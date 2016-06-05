class Project < ActiveRecord::Base
  has_many :tasks, dependent: :destroy

  validates :title, :start_date, :provide_stop_date, presence: true

  validates :title,
            length: { minimum: 5, maximum: 100, :message => "Title should have form 5 to 100 characters."}
end
