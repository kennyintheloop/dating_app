class GmapfriendlyforDogParks < ActiveRecord::Migration
  def up
    change_table :Dog_parks do |t|
      t.change :lati, :float
      t.change :longi, :float
      t.rename :lati, :latitude
      t.rename :longi, :longitude
    end
  end

  def down
  end
end
