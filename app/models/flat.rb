class Flat < ActiveRecord::Base
  has_many :contracts
  belongs_to :owner
end
