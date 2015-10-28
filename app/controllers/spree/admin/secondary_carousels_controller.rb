module Spree
  module Admin
    class SecondaryCarouselsController < ResourceController

      private

      def permitted_resource_params
        params.require(:secondary_carousel).permit(:id, :name, :title, :page_url, :active)
      end

    end
  end
end
