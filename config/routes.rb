Rails.application.routes.draw do


  devise_for :customers
  devise_for :admins


  root 'homes#top'
  get '/home/about' => 'homes#about'

  resources :items, only:[:index, :show]

  resources :customers, only:[:show, :create, :update]
  get '/customers/unsubscribe' => 'customers#unsubscribe'
  patch '/customers/withdraw' => 'customers#withdraw'

  resources :cart_items, only:[:index, :create, :update, :destroy]
  delete '/cart_items/destroy_all' => 'cart_items#destroy_all'

  resources :orders, only:[:index, :new, :show, :create]
  post '/orders/confirm' => 'orders#confirm'
  get '/orders/thanks' => 'orders#thanks'

  resources :addresses, only:[:index, :edit, :create, :update, :destroy]


  namespace :admin do
    root 'homes#top'
    resources :items, only:[:index, :new, :show, :create, :edit, :update]
    resources :genres, only:[:index, :create, :edit, :update]
    resources :customers, only:[:index, :show, :edit, :update]
    resources :orders, only:[:show, :update]
    patch 'admin/order_products/:id' => 'admin/order_products#update'
  end

end
