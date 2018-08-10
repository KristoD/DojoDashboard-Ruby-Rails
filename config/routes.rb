Rails.application.routes.draw do
  get 'dojos' => "dojo#index"
  get 'dojos/:id' => 'dojo#show'
  get 'dojos/:id/edit' => 'dojo#edit'
  get 'dojos/new' => 'dojo#new'
  post 'dojos' => 'dojo#create'
  put 'dojos/:id' => 'dojo#update'
  delete 'dojos/:id' => 'dojo#destroy'

  get 'dojos/:dojo_id/students/new' => 'students#new'
  post 'dojos/:dojo_id/students' => 'students#create'
  get 'dojos/:dojo_id/students/:id' => 'students#show'
  get 'dojos/:dojo_id/students/:id/edit' => 'students#edit'
  put 'dojos/:dojo_id/students/:id' => 'students#update'
  delete 'dojos/:dojo_id/students/:id' => 'students#destroy'
  


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
