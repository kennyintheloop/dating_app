class UserDetail < ActiveRecord::Base
  attr_accessible :birthday, :city, :country, :desc, :gender, :is_straight, :user_id, :zipcode
  belongs_to :users
end
