class Flat < ActiveRecord::Base
  belongs_to :owner
  has_many :contracts
end
