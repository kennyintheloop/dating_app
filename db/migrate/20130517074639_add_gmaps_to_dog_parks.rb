class AddGmapsToDogParks < ActiveRecord::Migration
  def change
    add_column :dog_parks, :gmaps, :boolean
  end
end
