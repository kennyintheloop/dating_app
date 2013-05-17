class CreateParkVotes < ActiveRecord::Migration
  def change
    create_table :park_votes do |t|
      t.integer :user_id
      t.integer :park_id
      t.string :user_comment
      t.integer :rating

      t.timestamps
    end
  end
end
