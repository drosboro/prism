Testing::Application.routes.draw do
  resources :authentications

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :users, :only => [:show]

  scope ':locale' do
    resources :buckets, :only => [ :index ]
    resources :items, :only => [ :index, :show, :edit, :update ]
  end
 #resources :documents do
    #resources :markings
  #end
 resources :prisms

  # Add routes to your pages, using get "pages/pagename"
  get 'home', to: "pages/index", as: :home
  get 'about', to: "pages/about", as: :about
  get 'alumni', to: "pages/alumni", as: :alumni
  get 'terms', to: "pages/terms", as: :terms
  get 'future', to: "pages/future", as: :future
  get 'demo', to: "pages/demo", as: :demo


  #match '/prisms/sandbox/highlight(.:format)' => 'prisms#sandbox_highlight', :as => :sandbox_highlight, :via => :get
  #match '/prisms/sandbox/highlight(.:format)' => 'prisms#sandbox_post', :as => :sandbox_post, :via => :post
  #match '/prisms/sandbox/visualize(.:format)' => 'prisms#sandbox_visualize', :as => :sandbox_visualize
  
  # TODO: these five routes are an issue
  #match '/prisms/:id/visualize(.:format)', to: 'prisms#visualize', as: 'visualize'
  #match '/prisms/:id/highlight(.:format)', to: 'prisms#highlight', as: 'highlight', via: [:get]
  #match '/prisms/:id/highlight(.:format)', to: 'prisms#highlight_post', as: 'highlight_post', via: :post
  #match '/myprisms/', to: 'users#show', as: :users
  #match '/prisms/:id/destroy(.:format)', to: 'prisms#destroy', as: :destroy
  #match '/users/auth/facebook/callback', to: 'users/omniauth_callbacks#facebook', via: :get

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
  root :to => 'pages#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
#== Route Map
# Generated on 14 Mar 2012 09:21
#
#             markings_new GET    /markings/new(.:format)            markings#new
#          markings_create GET    /markings/create(.:format)         markings#create
#          markings_delete GET    /markings/delete(.:format)         markings#delete
#          markings_update GET    /markings/update(.:format)         markings#update
#         new_user_session GET    /users/sign_in(.:format)           devise/sessions#new
#             user_session POST   /users/sign_in(.:format)           devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)          devise/sessions#destroy
#            user_password POST   /users/password(.:format)          devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)      devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)     devise/passwords#edit
#                          PUT    /users/password(.:format)          devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)            devise/registrations#cancel
#        user_registration POST   /users(.:format)                   devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)           devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)              devise/registrations#edit
#                          PUT    /users(.:format)                   devise/registrations#update
#                          DELETE /users(.:format)                   devise/registrations#destroy
#                documents GET    /documents(.:format)               documents#index
#                          POST   /documents(.:format)               documents#create
#             new_document GET    /documents/new(.:format)           documents#new
#            edit_document GET    /documents/:id/edit(.:format)      documents#edit
#                 document GET    /documents/:id(.:format)           documents#show
#                          PUT    /documents/:id(.:format)           documents#update
#                          DELETE /documents/:id(.:format)           documents#destroy
#                 markings GET    /markings(.:format)                markings#index
#                          POST   /markings(.:format)                markings#create
#              new_marking GET    /markings/new(.:format)            markings#new
#             edit_marking GET    /markings/:id/edit(.:format)       markings#edit
#                  marking GET    /markings/:id(.:format)            markings#show
#                          PUT    /markings/:id(.:format)            markings#update
#                          DELETE /markings/:id(.:format)            markings#destroy
#                     home GET    /pages/index(.:format)             pages#index
#                    about GET    /pages/about(.:format)             pages#about
#                visualize        /documents/:id/visualize(.:format) documents#visualize
#                highlight        /documents/:id/highlight(.:format) documents#highlight
#                     root        /                                  pages#index
