module Spree
  class SecondaryCarousel < ActiveRecord::Base
    self.table_name = 'secondary_carousels'
    has_many :secondary_carousel_items
  end
end
