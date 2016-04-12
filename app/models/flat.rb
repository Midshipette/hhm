class Flat < ActiveRecord::Base
  has_many :contracts
  has_one :renter, through: :contract
  has_many :tasks, through: :contract
  has_many :documents, through: :contract
  belongs_to :owner


  def active_contract
    contracts.select { |c| c.active == 'Active' }.first
  end

  validates :flat_name, :flat_type, :address, :city, :postal_code, :country, presence: true



end
