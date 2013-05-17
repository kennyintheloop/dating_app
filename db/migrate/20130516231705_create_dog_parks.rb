class CreateDogParks < ActiveRecord::Migration
  def change
    create_table :dog_parks do |t|
      t.string :name
      t.string :addr
      t.string :lati
      t.string :longi

      t.timestamps
    end
  end
end
