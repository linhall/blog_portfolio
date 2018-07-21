Rails.application.routes.draw do
  devise_for :users
  devise_for :installs
  resources :posts
  resources :projects
  get 'welcome/index'
  root 'welcome#index'
  # get "/sign_in" => "devise/sessions#new" # custom path to login/sign_in
  # get "/sign_up" => "devise/registrations#new"

  get '*path' => redirect('/')
end
