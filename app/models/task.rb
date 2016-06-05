class Task < ActiveRecord::Base
  has_many :work_times, dependent: :destroy
  belongs_to :project


  validates :title, presence: true

  validates :title,
            length: { minimum: 5, maximum: 100, :message => "Title should have form 5 to 100 characters."}
end
