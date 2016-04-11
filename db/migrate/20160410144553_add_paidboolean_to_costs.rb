class AddPaidbooleanToCosts < ActiveRecord::Migration
  def change
    add_column :costs, :paid, :boolean
  end
end
