class AddColumnsToRenters < ActiveRecord::Migration
  def change
    add_column :renters, :first_name, :string
    add_column :renters, :last_name, :string
    add_column :renters, :phone_number, :string
    add_column :renters, :private, :string
    add_column :renters, :gender, :string
    add_column :renters, :birthday, :date
  end
end
