class DogPark < ActiveRecord::Base
  acts_as_gmappable
      def gmaps4rails_address
          "#{address}"
      end
       def gmaps4rails_infowindow
         "<h4>#{name}</h4>" << "<h4>#{address}</h4>"
     end
  attr_accessible :address, :latitude, :longitude, :name
  validates :name, :length => { :minimum => 2 }
  validates :address, presence: true

end
