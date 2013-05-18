class ParkVote < ActiveRecord::Base
  attr_accessible :park_id, :rating, :user_comment, :user_id
  belongs_to :dog_park
  belongs_to :user
  validates :rating, presence: true
  validates :user, presence: true
  validates :user_id, :uniqueness => {:scope => :park_id}
end
