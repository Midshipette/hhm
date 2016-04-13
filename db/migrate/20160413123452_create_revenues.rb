class CreateRevenues < ActiveRecord::Migration
  def change
    create_table :revenues do |t|
      t.date :rent_month
      t.references :contract, index: true, foreign_key: true
      t.boolean :paid

      t.timestamps null: false
    end
  end
end
