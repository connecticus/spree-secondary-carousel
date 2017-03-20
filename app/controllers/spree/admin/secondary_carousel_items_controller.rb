module Spree
  module Admin
    class SecondaryCarouselItemsController < ResourceController

      before_action :load_secondary_carousel, except: [:create, :update]

      def location_after_save
        load_secondary_carousel
        spree.admin_secondary_carousel_secondary_carousel_items_url(@secondary_carousel)
      end

      private

      def permitted_resource_params
        params.require(:secondary_carousel_item).
            permit(:id, :secondary_carousel_id, :link, :label, :image, :position, :active, :text, :width, :height)
      end

      def load_secondary_carousel
        @secondary_carousel = Spree::SecondaryCarousel.find(params[:secondary_carousel_id])
      end


    end
  end
end
