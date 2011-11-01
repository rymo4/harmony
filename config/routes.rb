Harmony::Application.routes.draw do
  resources :users

  resources :images

  get "statics/home"
  #match '/home', :to => 'statics#home'
  root :to =>"statics#home"

  resources :blog_posts#, :as=>"blog"


  #match '/:permalink' => 'pages#show'
  # match '/:permalink/edit' => 'pages#edit'
  # match '/:permalink' => 'pages#update', :via => "put"
  
  #match "pages/:id", redirect {|params| "your_root_url" if params[:id] == 2}

  resources :pages#, :path => ''

  resources :events
  resources :sessions, :only => [:new, :create, :destroy]
  
  
  match '/signin',  :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'
  match '/signup', :to => 'users#new'
  
  #match "home" => "pages#show#2"
  
  #root :to => 'pages/2'
      #match "/home" => "pages/show", :as => :page  

  #get "pages/show"
  #get "blog_posts/index"
  #get "blog_posts/show"
  #static 'pages/:permalink', :controller => 'pages', :action => 'show'
 
  
  
  #match '/blog', :to => 'blog_posts#index' 
  #match '/:permalink', :to => 'pages/:permalink'
  #root :to => 'pages#main'
  
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
