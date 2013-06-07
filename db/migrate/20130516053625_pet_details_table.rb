class PetDetailsTable < ActiveRecord::Migration
  def change
    create_table :pet_details do |t|
      t.integer :user_id
      t.string :pet_type
      t.string :gender
      t.integer :age
      t.string :name
      t.string :desc
      t.string :homepark
      t.string :fav_toy
      t.string :fav_park
      t.string :kind1
      t.string :kind2

      t.timestamps
    end
  end
end
