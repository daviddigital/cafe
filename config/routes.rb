Rails.application.routes.draw do
# resources :menu
  root to: 'cafe#index'
  post 'menu/create'
  get 'menu/:item', to: 'menu#show', as: 'menu_item'
  get 'menu', to: 'menu#index'
end
