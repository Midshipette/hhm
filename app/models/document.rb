class Document < ActiveRecord::Base
  belongs_to :contract

  mount_uploader :photo, PhotoUploader

end

