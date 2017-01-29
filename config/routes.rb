Rails.application.routes.draw do

  # Routes for the Posting resource:
  # CREATE
  get "/postings/new", :controller => "postings", :action => "new"
  post "/create_posting", :controller => "postings", :action => "create"

  # READ
  get "/postings", :controller => "postings", :action => "index"
  get "/postings/:id", :controller => "postings", :action => "show"

  # UPDATE
  get "/postings/:id/edit", :controller => "postings", :action => "edit"
  post "/update_posting/:id", :controller => "postings", :action => "update"

  # DELETE
  get "/delete_posting/:id", :controller => "postings", :action => "destroy"
  #------------------------------

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Routes for the Page resource:
  # CREATE
  get "/pages/new", :controller => "pages", :action => "new"
  post "/create_page", :controller => "pages", :action => "create"

  # READ
  get "/pages", :controller => "pages", :action => "index"
  get "/pages/:id", :controller => "pages", :action => "show"

  # UPDATE
  get "/pages/:id/edit", :controller => "pages", :action => "edit"
  post "/update_page/:id", :controller => "pages", :action => "update"

  # DELETE
  get "/delete_page/:id", :controller => "pages", :action => "destroy"
  #------------------------------

  root "pages#index"


  # Routes for the Page resource:
  # CREATE
  get "/pages/new", :controller => "pages", :action => "new"
  post "/create_page", :controller => "pages", :action => "create"

  # READ
  get "/pages", :controller => "pages", :action => "index"
  get "/pages/:id", :controller => "pages", :action => "show"

  # UPDATE
  get "/pages/:id/edit", :controller => "pages", :action => "edit"
  post "/update_page/:id", :controller => "pages", :action => "update"

  # DELETE
  get "/delete_page/:id", :controller => "pages", :action => "destroy"

  # DEACTIVATE
  #get "/deactivate_page/:id", :controller => "pages", :action => "deactivate"

  # ACTIVATE
  #get "/activate_page/:id", :controller => "pages", :action => "activate"

  # READ BLOG
  get "/pages/blog/:id",:controller => "pages", :action => "blog"

  # READ POSTINGS
  get "/pages/postings/:id",:controller => "pages", :action => "posting"

  #------------------------------

  # Routes for the Blog resource:
  # CREATE
  get "/blogs/new/:id", :controller => "blogs", :action => "new"
  post "/create_blog", :controller => "blogs", :action => "create"
  get "/create_blog", :controller => "blogs", :action => "create"

  # READ
  #get "/blogs", :controller => "blogs", :action => "index"
  get "/blogs/:id", :controller => "blogs", :action => "show"

  # UPDATE
  get "/blogs/:id/edit", :controller => "blogs", :action => "edit"
  post "/update_blog/:id", :controller => "blogs", :action => "update"

  # DELETE
  get "/delete_blog/:id", :controller => "blogs", :action => "destroy"
  #------------------------------

  devise_for :users
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
