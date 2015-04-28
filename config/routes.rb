# == Route Map
#
#        Prefix Verb   URI Pattern                    Controller#Action
#          root GET    /                              products#index
#      products GET    /products(.:format)            products#index
#               POST   /products(.:format)            products#create
#   new_product GET    /products/new(.:format)        products#new
#  edit_product GET    /products/:id/edit(.:format)   products#edit
#       product GET    /products/:id(.:format)        products#show
#               PATCH  /products/:id(.:format)        products#update
#               PUT    /products/:id(.:format)        products#update
#               DELETE /products/:id(.:format)        products#destroy
#    categories GET    /categories(.:format)          categories#index
#               POST   /categories(.:format)          categories#create
#  new_category GET    /categories/new(.:format)      categories#new
# edit_category GET    /categories/:id/edit(.:format) categories#edit
#      category GET    /categories/:id(.:format)      categories#show
#               PATCH  /categories/:id(.:format)      categories#update
#               PUT    /categories/:id(.:format)      categories#update
#               DELETE /categories/:id(.:format)      categories#destroy
#

Rails.application.routes.draw do
  
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'products#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
   resources :products
   resources :categories
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
