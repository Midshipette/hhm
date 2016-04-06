class Flat < ActiveRecord::Base
  has_many :contracts
  has_one :renter, through: :contract
  belongs_to :owner
end
