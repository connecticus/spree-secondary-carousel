Spree::HomeController.class_eval do
  before_action :load_secondary_carousel, only: :index

  private

    def load_secondary_carousel
      @secondary_carousel = Spree::SecondaryCarousel.where(:page_url => request.original_fullpath, :active => true).first
    end
end
