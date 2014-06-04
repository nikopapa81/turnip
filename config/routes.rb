Rails.application.routes.draw do

  # Routes for the Consumption resource:
  # CREATE
  get('/consumptions/new', { :controller => 'consumptions', :action => 'new' })
  get('/create_consumption', { :controller => 'consumptions', :action => 'create' })

  # READ
  get('/consumptions', { :controller => 'consumptions', :action => 'index' })
  get('/consumptions/:id', { :controller => 'consumptions', :action => 'show' })

  # UPDATE
  get('/consumptions/:id/edit', { :controller => 'consumptions', :action => 'edit' })
  get('/update_consumption/:id', { :controller => 'consumptions', :action => 'update' })

  # DELETE
  get('/delete_consumption/:id', { :controller => 'consumptions', :action => 'destroy' })
  #------------------------------

  # Routes for the Purchase resource:
  # CREATE
  get('/purchases/new', { :controller => 'purchases', :action => 'new' })
  get('/create_purchase', { :controller => 'purchases', :action => 'create' })

  # READ
  get('/purchases', { :controller => 'purchases', :action => 'index' })
  get('/purchases/:id', { :controller => 'purchases', :action => 'show' })

  # UPDATE
  get('/purchases/:id/edit', { :controller => 'purchases', :action => 'edit' })
  get('/update_purchase/:id', { :controller => 'purchases', :action => 'update' })

  # DELETE
  get('/delete_purchase/:id', { :controller => 'purchases', :action => 'destroy' })
  #------------------------------

  devise_for :users
  get('/', { :controller => 'activity_lines', :action => 'home'})
  get('/about', { :controller => 'activity_lines', :action => 'about'})
  get('/reports', { :controller => 'activity_lines', :action => 'reports'})
  get('/recipes', { :controller => 'activity_lines', :action => 'recipes'})

  # Routes for the Activity_category resource:
  # CREATE
  get('/activity_categories/new', { :controller => 'activity_categories', :action => 'new' })
  get('/create_activity_category', { :controller => 'activity_categories', :action => 'create' })

  # READ
  get('/activity_categories', { :controller => 'activity_categories', :action => 'index' })
  get('/activity_categories/:id', { :controller => 'activity_categories', :action => 'show' })

  # UPDATE
  get('/activity_categories/:id/edit', { :controller => 'activity_categories', :action => 'edit' })
  get('/update_activity_category/:id', { :controller => 'activity_categories', :action => 'update' })

  # DELETE
  get('/delete_activity_category/:id', { :controller => 'activity_categories', :action => 'destroy' })
  #------------------------------

  # Routes for the Activity_line resource:
  # CREATE
  get('/activity_lines/new', { :controller => 'activity_lines', :action => 'new' })
  get('/create_activity_line', { :controller => 'activity_lines', :action => 'create' })

  # READ
  get('/activity_lines', { :controller => 'activity_lines', :action => 'index' })
  get('/activity_lines/:id', { :controller => 'activity_lines', :action => 'show' })

  # UPDATE
  get('/activity_lines/:id/edit', { :controller => 'activity_lines', :action => 'edit' })
  get('/update_activity_line/:id', { :controller => 'activity_lines', :action => 'update' })

  # DELETE
  get('/delete_activity_line/:id', { :controller => 'activity_lines', :action => 'destroy' })
  #------------------------------

  # Routes for the Unit_of_measure resource:
  # CREATE
  get('/unit_of_measures/new', { :controller => 'unit_of_measures', :action => 'new' })
  get('/create_unit_of_measure', { :controller => 'unit_of_measures', :action => 'create' })

  # READ
  get('/unit_of_measures', { :controller => 'unit_of_measures', :action => 'index' })
  get('/unit_of_measures/:id', { :controller => 'unit_of_measures', :action => 'show' })

  # UPDATE
  get('/unit_of_measures/:id/edit', { :controller => 'unit_of_measures', :action => 'edit' })
  get('/update_unit_of_measure/:id', { :controller => 'unit_of_measures', :action => 'update' })

  # DELETE
  get('/delete_unit_of_measure/:id', { :controller => 'unit_of_measures', :action => 'destroy' })
  #------------------------------

  # Routes for the Food_item resource:
  # CREATE
  get('/food_items/new', { :controller => 'food_items', :action => 'new' })
  get('/create_food_item', { :controller => 'food_items', :action => 'create' })

  # READ
  get('/food_items', { :controller => 'food_items', :action => 'index' })
  get('/food_items/:id', { :controller => 'food_items', :action => 'show' })

  # UPDATE
  get('/food_items/:id/edit', { :controller => 'food_items', :action => 'edit' })
  get('/update_food_item/:id', { :controller => 'food_items', :action => 'update' })

  # DELETE
  get('/delete_food_item/:id', { :controller => 'food_items', :action => 'destroy' })
  #------------------------------

  # Routes for the Food_category resource:
  # CREATE
  get('/food_categories/new', { :controller => 'food_categories', :action => 'new' })
  get('/create_food_category', { :controller => 'food_categories', :action => 'create' })

  # READ
  get('/food_categories', { :controller => 'food_categories', :action => 'index' })
  get('/food_categories/:id', { :controller => 'food_categories', :action => 'show' })

  # UPDATE
  get('/food_categories/:id/edit', { :controller => 'food_categories', :action => 'edit' })
  get('/update_food_category/:id', { :controller => 'food_categories', :action => 'update' })

  # DELETE
  get('/delete_food_category/:id', { :controller => 'food_categories', :action => 'destroy' })
  #------------------------------

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
