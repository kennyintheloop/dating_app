class PetDetail < ActiveRecord::Base
  attr_accessible :age, :desc, :fav_park, :fav_toy, :gender, :homepark, :name, :type, :type1, :type2, :user_id
end
