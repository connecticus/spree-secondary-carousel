Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :secondary_carousels do
      resources :secondary_carousel_items do
        collection do
          post :update_positions
        end
      end
    end
  end
end
