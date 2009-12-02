ActionController::Routing::Routes.draw do |map|
  
  map.resources :formats
  
  map.resources :users
  map.resource :account, :controller => "users"
  map.resource :user_session
  
  map.resources :videos, :collection => {:preview => :post}

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
