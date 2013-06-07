class HumanGenders < ActiveRecord::Base
  #This model was created to make sure that the bad users don't input incorrect gender type
  attr_accessible :gender
end
