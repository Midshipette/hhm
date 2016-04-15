class Document < ActiveRecord::Base
  mount_uploader :attachment, PhotoUploader # Tells rails to use this uploader for this model.

  belongs_to :contract
  
  has_many :tasks, dependent: :destroy
  has_many :flats, through: :document
end

