class RemoveMonthFromCosts < ActiveRecord::Migration
  def change
    remove_column :costs, :month, :string
  end
end
