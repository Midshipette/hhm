class Contract < ActiveRecord::Base
  belongs_to :renter
  belongs_to :flat
  has_many :documents
  has_many :tasks
  has_many :costs

  validates :rent_start, :rent_end, :rent_amount, :warranty_amount, :pay_day, presence: true

  default_scope { where("renter_id is not NULL") }

end
