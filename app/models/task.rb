class Task < ActiveRecord::Base
  belongs_to :contract
  has_many :documents

  # has_one :flat, through: :contract
end
