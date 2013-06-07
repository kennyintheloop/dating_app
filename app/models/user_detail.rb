class UserDetail < ActiveRecord::Base
  #this model contains user details that were not parsed from Facebook credential. Users can edit this section.
  attr_accessible :birthday, :city, :country, :desc, :gender, :is_straight, :user_id, :zipcode
  belongs_to :users
  validates :user_id, :uniqueness => true
end
