class ParkVote < ActiveRecord::Base
  attr_accessible :park_id, :rating, :user_comment, :user_id
  belongs_to :dog_park
  belongs_to :user

  validates :user, presence: true
  validates :user_id, :uniqueness => true
end
