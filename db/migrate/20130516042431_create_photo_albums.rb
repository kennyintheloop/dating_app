class CreatePhotoAlbums < ActiveRecord::Migration
  def change
    create_table :photo_albums do |t|
      t.integer :user_id
      t.string :file_name
      t.string :file_title
      t.string :file_desc

      t.timestamps
    end
  end
end
