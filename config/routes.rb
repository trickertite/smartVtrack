Rails.application.routes.draw do

  root 'share_users#index'
  get 'share_users/lets_share' => 'share_users#lets_share', as: :lets_share
  get 'share_users/tracking/:id' => 'share_users#tracking', as: :tracking
  get 'share_users/real_coords' => 'share_users#real_coords', as: :real_coords
  get 'share_users/remove/:id' => 'share_users#remove', as: :remove
  get 'vehicles/search_by_name' => 'vehicles#search_by_name', as: :search_by_name  
  get 'stops/near_stops' => 'stops#near_stops', as: :near_stops

  resources :share_users

  resources :vehicle_stops

  resources :vehicles

  resources :reservations

  resources :query_users

  resources :stops



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
