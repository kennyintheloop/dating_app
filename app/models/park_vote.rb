class ParkVote < ActiveRecord::Base
  #Park vote model. Make sure that user id is unique on each park vote
  attr_accessible :park_id, :rating, :user_comment, :user_id
  belongs_to :dog_park
  belongs_to :user
  validates :user, presence: true
  validates :user_id, :uniqueness => {:scope => :park_id}
  before_validation { logger.info('Validating the vote')}
  after_save { logger.info('New vote is just saved!')}
end
