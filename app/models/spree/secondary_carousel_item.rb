module Spree
  class SecondaryCarouselItem < ActiveRecord::Base
    self.table_name = 'secondary_carousel_items'
    belongs_to :secondary_carousel
    acts_as_list

    default_scope {order('position')}

    has_attached_file :image, styles: {standard: '160x220!', masonry: '800x800>'}
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

    before_save :extract_dimensions

    def image?
      upload_content_type =~ %r{^(image|(x-)?application)/(bmp|gif|jpeg|jpg|pjpeg|png|x-png)$}
    end

    private

# Retrieves dimensions for image assets
# @note Do this after resize operations to account for auto-orientation.
    def extract_dimensions
      return unless image?
      tempfile = image.queued_for_write[:masonry]
      unless tempfile.nil?
        geometry = Paperclip::Geometry.from_file(tempfile)
        self.width = geometry.width.to_i
        self.height = geometry.height.to_i
      end
    end

  end
end
