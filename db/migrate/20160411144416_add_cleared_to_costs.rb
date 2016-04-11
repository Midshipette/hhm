class AddClearedToCosts < ActiveRecord::Migration
  def change
    add_column :costs, :cleared, :boolean
  end
end
