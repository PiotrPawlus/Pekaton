class User < ActiveRecord::Base
  has_many :work_times, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

        validates :email, :password, :password_confirmation, :name, :surname, :phone, presence: true

        validates :email,
                  length: { minimum: 5, maximum: 50, :message => "E-mail should have form 5 to 50 characters."}

        validates :name,
                  length: { minimum: 5, maximum: 40, :message => "Name should have from 5 to 40 characters."}

        validates :surname,
                  length: { minimum: 5, maximum: 40, :message => "Surname should have from 5 to 40 characters."}

        validates :phone,
                  length: { minimum: 6, maximum: 15, :message => "Phone should have from 5 to 15 characters."}

        validates :is_admin,
                  numericality: { only_integer: true }
end
