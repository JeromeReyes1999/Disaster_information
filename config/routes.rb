Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :categories
  end

  resources :posts do
    resources :comments
  end

  get '/:short_url' => 'posts#redirect'
  root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
