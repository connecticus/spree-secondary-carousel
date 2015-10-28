class AddAttachmentImageToSecondaryCarouselItems < ActiveRecord::Migration
  def self.up
    change_table :secondary_carousel_items do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :secondary_carousel_items, :image
  end
end
