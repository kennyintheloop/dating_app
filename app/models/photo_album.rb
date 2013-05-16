class PhotoAlbum < ActiveRecord::Base
  attr_accessible :file_desc, :file_name, :file_title, :user_id
end
