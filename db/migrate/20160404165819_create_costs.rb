class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.string :type
      t.references :contract, index: true, foreign_key: true
      t.string :month
      t.string :paid
      t.date :reminder_send_date

      t.timestamps null: false
    end
  end
end
