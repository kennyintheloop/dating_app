class PetDetail < ActiveRecord::Base
  attr_accessible :age, :desc, :fav_park, :fav_toy, :gender, :homepark, :name, :pet_type, :kind1, :kind2, :user_id
  belongs_to :users
end
