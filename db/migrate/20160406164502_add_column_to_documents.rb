class AddColumnToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :attachment, :string
  end
end
