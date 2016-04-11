class Contract < ActiveRecord::Base
  belongs_to :renter
  belongs_to :flat
  has_many :documents
  has_many :tasks
  has_many :costs

  default_scope { where("renter_id is not NULL") }

end
