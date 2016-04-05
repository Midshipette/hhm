class Contract < ActiveRecord::Base
  belongs_to :renter
  belongs_to :flat
  has_many :documents
  has_many :costs
end
