class Video < ActiveRecord::Base
  #Adding youtube video link.
  attr_accessible :user_id, :video_link, :video_numb_view, :video_title
end
