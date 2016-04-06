class AddPhotoToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :photo, :string
  end
end
