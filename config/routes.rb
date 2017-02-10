Rails.application.routes.draw do
  resources :products do
    resources :reviews
  end

  get 'signup'  => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get '/' => 'sessions#index'
  resources :users
end
