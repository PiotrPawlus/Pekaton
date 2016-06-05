class WorkTime < ActiveRecord::Base
  belongs_to :user
  belongs_to :task

  validates :start_at, presence: true
end
