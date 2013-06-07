class AddAttachmentPhotoToPhotoAlbums < ActiveRecord::Migration
  def self.up
    change_table :photo_albums do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :photo_albums, :photo
  end
end
