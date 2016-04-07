class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :status, default: "open"
      t.string :name
      t.string :description
      t.date :due_date
      t.references :contract, index: true, foreign_key: true
      t.string :owner

      t.timestamps null: false
    end
  end
end
