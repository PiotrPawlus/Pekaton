class User < ActiveRecord::Base
  has_many :work_times, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


        validates :email, :password, :password_confirmation, :name, :surname, :birth_date, presence: true

        validates :email,
                  email: true,
                  length: { minimum: 1, maximum: 50, :message => "E-mail should have form 1 to 50 characters."}

        validates :name,
                  length: { minimum: 1, maximum: 40, :message => "Name should have from 1 to 50 characters."}

        validates :surname,
                  length: { minimum: 1, maximum: 40, :message => "Nazwisko musi zawierać od 1 do 50 znaków."}
end
