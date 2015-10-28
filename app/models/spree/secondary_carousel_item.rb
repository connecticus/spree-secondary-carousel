module Spree
  class SecondaryCarouselItem < ActiveRecord::Base
    self.table_name = 'secondary_carousel_items'
    belongs_to :secondary_carousel
    acts_as_list

    default_scope {order('position')}

    has_attached_file :image, styles: {standard: '160x220!'}
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  end
end
