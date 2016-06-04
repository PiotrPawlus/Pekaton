class Task < ActiveRecord::Base
  has_many :work_times, dependent: :destroy
  belongs_to :project
end
