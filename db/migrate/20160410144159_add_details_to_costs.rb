class AddDetailsToCosts < ActiveRecord::Migration
  def change
    add_column :costs, :start_month_year, :date
    add_column :costs, :end_month_year, :date
    add_column :costs, :owner_charge, :float
    add_column :costs, :renter_charge_private, :float
    add_column :costs, :electricity, :float
    add_column :costs, :property_mngt_cost, :float
    add_column :costs, :cleaning_maintenance, :float
    add_column :costs, :elevator, :float
    add_column :costs, :water, :float
    add_column :costs, :heating, :float
  end
end
