class Renter < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :contracts
  

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
