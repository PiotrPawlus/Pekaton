class Task < ActiveRecord::Base
  has_many :work_times, dependent: :destroy

end
