class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
      t.integer :user_id
      t.string :country
      t.string :zipcode
      t.string :city
      t.string :desc
      t.string :is_straight
      t.string :gender
      t.date :birthday

      t.timestamps
    end
  end
end
