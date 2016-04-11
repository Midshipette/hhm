class RemovePaidFromCosts < ActiveRecord::Migration
  def change
    remove_column :costs, :paid, :string
  end
end
