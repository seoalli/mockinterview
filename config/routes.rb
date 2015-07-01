Rails.application.routes.draw do
  resources :interviews do
    resources :interview_slots
  end

  root 'welcome#index'
  get 'welcome/index'
  get 'index' => 'welcome#index'
  get 'welcome/register'
  get 'register' => 'welcome#register'
  get 'welcome/about'
  get 'about' => 'welcome#about'
  get 'welcome/schedule'
  get 'schedule' => 'welcome#schedule'
  post 'welcome/schedule' => 'welcome#schedule'

  get 'show' => 'interviews#show'

  resources :interview_slots
  post 'interview_slots' => 'welcome#schedule'
  #get 'interview_slots/index/show' => 'interview_slots#show', :as => :interview_slots_show
  #get 'interview_slots/index/index' => 'interview_slots#index', :as => :interview_slots_index
  #get 'welcome/schedule'=> 'interview_slot#index'
  #get 'interview_slots/:id/delete' => 'interview_slots#delete', :as => :interview_slots_delete
 # get 'interview/new'
 # get 'interview/show'
 # get 'interview' => 'interview#show'
 # get 'show' => 'interview#show'
 # post 'welcome/schedule' => 'welcome#schedule'
 # post 'welcome/schedule' => 'interview#show'
 # post 'interview/show' => 'interview#show'



  

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
