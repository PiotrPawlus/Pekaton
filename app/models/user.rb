class User < ActiveRecord::Base
  has_many :work_times, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
