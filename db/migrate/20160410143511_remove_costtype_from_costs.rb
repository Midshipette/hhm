class RemoveCosttypeFromCosts < ActiveRecord::Migration
  def change
    remove_column :costs, :cost_type, :string
  end
end
