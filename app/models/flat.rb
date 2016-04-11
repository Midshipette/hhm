class Flat < ActiveRecord::Base
  has_many :contracts
  has_one :renter, through: :contract
  has_many :tasks, through: :contract
  has_many :documents, through: :contract
  belongs_to :owner


end
