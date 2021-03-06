Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        resources :users, :posts, :follows
        resources :likes, only: [:index, :new, :create, :destroy]
        resources :comments, only: [:index, :new, :create, :destroy]

        post '/login', to: 'auth#login'
        get '/profile', to: 'users#profile'
        get "/auto_login", to: "auth#auto_login"
      end
  end
end
