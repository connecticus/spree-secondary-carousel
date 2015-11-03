class AddIndexToSecondaryCarouselsPageUrl < ActiveRecord::Migration
  def change
    add_index :secondary_carousels, :page_url
  end
end
