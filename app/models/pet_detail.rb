class PetDetail < ActiveRecord::Base
  attr_accessible :age, :desc, :fav_park, :fav_toy, :gender, :homepark, :name, :pet_type, :kind1, :kind2, :user_id,:photo
  validates :user_id, :presence =>true
  belongs_to :users
  has_attached_file :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg','image/png']
end
