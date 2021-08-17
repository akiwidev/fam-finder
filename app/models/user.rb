class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
  has_many :roles, through: :bookings

  # validates :first_name, :last_name, :age, :location, presence: true
  # validates :age, numericality: { greater_than_or_equal_to: 18 }
end