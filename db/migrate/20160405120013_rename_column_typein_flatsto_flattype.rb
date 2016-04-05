class RenameColumnTypeinFlatstoFlattype < ActiveRecord::Migration
  def change
  	rename_column :flats, :type, :flat_type
  end
end
