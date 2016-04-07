class Contract < ActiveRecord::Base
  belongs_to :renter
  has_many :documents
  has_many :tasks
end
