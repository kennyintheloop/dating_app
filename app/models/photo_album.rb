class PhotoAlbum < ActiveRecord::Base
  attr_accessible :file_desc, :file_name, :file_title, :user_id, :photo
  #validates :user_id, presence: true
  #validates :file_name, presence: true
  has_attached_file :photo
  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg','image/png']
end
