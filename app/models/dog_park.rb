class DogPark < ActiveRecord::Base
  attr_accessible :addr, :lati, :longi, :name
  validates :name, :length => { :minimum => 2 }
  validates :addr, presence: true
end
