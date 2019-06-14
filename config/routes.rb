Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        resources :users, :posts
        resources :likes, only: [:index, :new, :create, :destroy]
        resources :comments, only: [:index, :new, :create, :destroy]
      end
  end
end
