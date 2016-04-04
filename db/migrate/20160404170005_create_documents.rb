class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.references :contract, index: true, foreign_key: true
      t.string :type
      t.date :expiration_date
      t.string :name
      t.date :reminder_sent_date
      t.integer :days_to_reminder

      t.timestamps null: false
    end
  end
end
