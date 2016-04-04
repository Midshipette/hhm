class CreateFlats < ActiveRecord::Migration
  def change
    create_table :flats do |t|
      t.references :owner, index: true, foreign_key: true
      t.string :type
      t.string :flat_name
      t.string :floor
      t.integer :flat_number
      t.string :address
      t.string :city
      t.string :syndicate
      t.string :postal_code
      t.text :description
      t.string :country
      t.float :loan_cost
      t.float :tax_cost

      t.timestamps null: false
    end
  end
end
