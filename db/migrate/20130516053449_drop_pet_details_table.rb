class DropPetDetailsTable < ActiveRecord::Migration
  def up
    drop_table :Pet_Details
  end

  def down
  end
end
