Rails.application.routes.draw do
  root 'static_page#index'
  resources :posts
  get 'static_page/about'
  get 'static_page/contact'
  get 'static_page/result'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
