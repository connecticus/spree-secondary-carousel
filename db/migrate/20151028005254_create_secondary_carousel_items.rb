class CreateSecondaryCarouselItems < ActiveRecord::Migration
  def change
    create_table :secondary_carousel_items do |t|
      t.integer :secondary_carousel_id
      t.string :link
      t.text :label
      t.integer :position, :default => 0
      t.boolean :active, :default => true
      t.timestamps null: false
    end
    add_foreign_key :secondary_carousel_items, :secondary_carousels
    add_index :secondary_carousel_items, :position
  end
end
