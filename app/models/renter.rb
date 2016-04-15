class Renter < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :contracts, dependent: :destroy

  validates :email, :password, :password_confirmation, :gender, :first_name, :last_name, :phone_number, :birthday, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
