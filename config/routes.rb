ActionController::Routing::Routes.draw do |map|
  map.root :controller => "main"
  map.demo '/demo', :controller => 'main', :action => 'demo'
  map.arhitectura '/arhitectura', :controller => 'main', :action =>'arhitectura'
  map.sale '/sale', :controller => 'main', :action =>'sale'
  #map.prices '/price', :controller => 'prices', :action =>'index'
  map.detail '/detail', :controller => 'main', :action => 'detail'
  map.detail '/license.txt', :controller => 'main', :action=>'policy'
  map.gallery '/gallery', :controller => 'main', :action => 'gallery'
  map.policy '/policy', :controller => 'main', :action => 'policy'
  map.get49 '/get49', :controller => 'main', :action => 'get49'
  map.changelog '/changelog', :controller => 'main', :action => 'changelog'
  map.aminetadd '/aminet/add/', :controller => 'aminet', :action => 'add'
  map.aminet '/aminet', :controller => 'aminet', :action => 'index'
  map.wiki_root '/docs'
  map.forum '/forum', :controller => 'main', :action => 'forum'

  map.resources :invoices
  map.resources :prices
  # The priority is based upon order of creation: first created -> highest priority.
  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  #map.connect ':controller/:action/:id'
  #map.connect ':controller/:action/:id.:format'
end
