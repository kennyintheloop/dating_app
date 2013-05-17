class PhotoAlbum < ActiveRecord::Base
  attr_accessible :file_desc, :file_name, :file_title, :user_id
  validates :user_id, presence: true
  validates :file_name, presence: true
end
