class AddColumnsToOwners < ActiveRecord::Migration
  def change
    add_column :owners, :first_name, :string
    add_column :owners, :last_name, :string
    add_column :owners, :phone_number, :string
    add_column :owners, :city, :string
    add_column :owners, :flat_number, :string
    add_column :owners, :address, :string
    add_column :owners, :postal_code, :string
    add_column :owners, :country, :string
  end
end
