Spree::HomeController.class_eval do
  def index
    @secondary_carousel = Spree::SecondaryCarousel.where(:page_url => request.original_fullpath, :active => true).first
  end
end
