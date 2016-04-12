Rails.application.routes.draw do


  resources :tasks
  devise_for :renters, :controllers => { registrations: 'renters/registrations' }
  devise_for :owners, :controllers => { registrations: 'owners/registrations' }


  get 'flats/:flat_id/history' => 'contracts#history' , as: 'flat_history'
  delete 'flats/:id' => 'flats#destroy' , as: 'flat_destroy'



  resources :flats do
    resources :contracts do
      get "assign_renter", to: "renters#new"
      post 'add_renter' => "renters#create"
      resources :renters, only: :select do
        get "select_renter", to: "renters#select"
      end
    end
    resources :renters
    resources :documents
    resources :tasks do
      get 'status' => 'tasks#status'
    end

    member do
      get :finance
    end
  end


  resources :contracts do
    resources :costs do
      member do
        get :realcharge
        get :openclearsumcosts
      end
    end
  end


  get '/renters' => "renters#all"


  get '/mydashboard' => "flats#index"

  post 'contact_form', to: 'pages#contact_form'
  root to: 'pages#home'


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
