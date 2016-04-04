class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.date :rent_start
      t.date :rent_end
      t.references :renter, index: true, foreign_key: true
      t.references :flat, index: true, foreign_key: true
      t.float :rent_amount
      t.float :warranty_amount
      t.integer :pay_day
      t.string :active
      t.integer :days_to_reminder

      t.timestamps null: false
    end
  end
end
