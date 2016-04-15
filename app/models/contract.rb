class Contract < ActiveRecord::Base
  belongs_to :renter
  belongs_to :flat
  has_many :documents, dependent: :destroy
  has_many :tasks, dependent: :destroy
  has_many :costs, dependent: :destroy
  has_many :revenues, dependent: :destroy

  validates :rent_start, :rent_end, :rent_amount, :warranty_amount, :pay_day, presence: true

  default_scope { where("renter_id is not NULL") }
end
