Rails.application.routes.draw do
    resources :posts do
    resources :comments, only: [:create, :destroy]
  end
    resources :bulletins do
    resources :posts
  end

  get 'review/write_review'
  get 'review/writing_review'
  get 'review/detail'
  get 'review/writing_reply'
  get 'review/index'

  get 'mypage/trace'
  get 'mypage/account'
  get 'mypage/codi_account'
  get 'mypage/save_box'
  get 'mypage/saving_box'
  get 'mypage/estimating_box'

  get 'hospital/index'
  get 'hospital/detail/:id', to: 'hospital#detail'
  post 'hospital/score_evaluate'

  get 'estimating/requesting'
  get 'estimating/requesting_content'
  post 'estimating/requesting_content'
  post 'estimating/requesting_complete'
  get 'estimating/requesting_complete'


  get 'estimating/codi_index'
  get 'estimating/manage'
  get 'estimating/manage_waiting'
  get 'estimating/manage_complete'
  get 'estimating/counsel/:id', to: 'estimating#counsel'
  get 'estimating/counsel_waiting'
  get 'estimating/counsel_complete'
  post 'estimating/counsel_content'
  


  devise_for :codis, controllers: {
        sessions: 'codis/sessions',
        registrations: 'codis/registrations',
        passwords: 'codis/passwords',
      }
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations',
        passwords: 'users/passwords',
      }


  root 'home#index'
  get 'home/index'


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
end