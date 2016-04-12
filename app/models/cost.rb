class Cost < ActiveRecord::Base
  belongs_to :contract

  validates_uniqueness_of :start_month_year
  validates_uniqueness_of :end_month_year


end
