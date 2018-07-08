Rails.application.routes.draw do
  devise_for :users
  devise_for :installs
  resources :posts
  get 'welcome/index'
  root 'welcome#index'

  get '*path' => redirect('/')
end
