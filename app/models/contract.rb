class Contract < ActiveRecord::Base
  belongs_to :renter
  belongs_to :flat
end
