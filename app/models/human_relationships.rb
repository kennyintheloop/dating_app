class HumanRelationships < ActiveRecord::Base
  #This model was created to make sure that the bad users don't input incorrect relationship type
  attr_accessible :relationship
end
