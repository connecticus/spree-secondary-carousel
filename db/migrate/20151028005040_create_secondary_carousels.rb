class CreateSecondaryCarousels < ActiveRecord::Migration
  def change
    create_table :secondary_carousels do |t|
      t.string :name
      t.string :title
      t.string :page_url
      t.boolean :active, :default => true
      t.timestamps null: false
    end
  end
end
