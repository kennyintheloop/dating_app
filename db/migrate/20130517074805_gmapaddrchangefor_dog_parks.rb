class GmapaddrchangeforDogParks < ActiveRecord::Migration
  def up
    change_table :Dog_parks do |t|
      t.rename :addr, :address
    end
  end

  def down
  end
end
