Rails.application.routes.draw do


  devise_for :users
  get '/' => 'events#index'
  get '/events/:id' => 'events#show'
  get '/results' => 'events#search_results'
  get '/zurb' => 'events#zurb_index'

  get '/dinner' => 'events#dinner'

  get '/seatgeek' => 'events#seatgeek'
  get '/sports' => 'events#sports'
  get '/theater' => 'events#theater'
  get '/concert' => 'events#concert'

  get '/test' => 'events#test'

  get '/review' => 'carted_events#review'
  post '/review_events' => 'events#review_events'

  get '/carted_events' => 'carted_events#create'
  post '/carted_events' => 'carted_events#create'

  post '/orders' => 'orders#create'
  get '/orders/' => 'orders#show'

  post '/carted_events/:id' => 'carted_events#confirm'
  
  delete '/carted_events/:id' => 'carted_events#destroy'

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
