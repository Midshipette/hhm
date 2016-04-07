class Task < ActiveRecord::Base
  belongs_to :contract

  # has_one :flat, through: :contract
end
