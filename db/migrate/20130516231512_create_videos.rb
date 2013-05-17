class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.integer :user_id
      t.string :video_title
      t.string :video_link
      t.integer :video_numb_view

      t.timestamps
    end
  end
end
