class AddAttachmentPhotoToPetDetails < ActiveRecord::Migration
  def self.up
    change_table :pet_details do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :pet_details, :photo
  end
end
