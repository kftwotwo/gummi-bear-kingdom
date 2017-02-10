Rails.application.routes.draw do
  resources :products do
    resources :reviews
  end

  get 'signup'  => 'users#new'
  resources :users
end
