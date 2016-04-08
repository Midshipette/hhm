class AddColumnToTasks < ActiveRecord::Migration
  def change
    add_reference :tasks, :document, index: true, foreign_key: true
  end
end
