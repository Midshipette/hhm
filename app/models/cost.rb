class Cost < ActiveRecord::Base
  belongs_to :contract

  validates :start_month_year, uniqueness: { scope: :contract_id }
  validates :end_month_year, uniqueness: { scope: :contract_id }
end
