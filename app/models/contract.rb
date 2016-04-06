class Contract < ActiveRecord::Base
  belongs_to :renter
  has_many :documents
end
