class Task < ActiveRecord::Base
  belongs_to :contract
  belongs_to :document

  # has_one :flat, through: :contract
end
