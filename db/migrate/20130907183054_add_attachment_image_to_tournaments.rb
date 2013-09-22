class AddAttachmentImageToTournaments < ActiveRecord::Migration
  def self.up
    change_table :tournaments do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :tournaments, :image
  end
end
