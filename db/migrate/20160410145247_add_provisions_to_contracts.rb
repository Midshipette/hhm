class AddProvisionsToContracts < ActiveRecord::Migration
  def change
    add_column :contracts, :provision, :float
  end
end
