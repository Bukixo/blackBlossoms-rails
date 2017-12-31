Rails.application.routes.draw do
  scope :api do
    resources :artists
    resources :users, except: [:create]
    resources :events
    resources :posts
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'

  end
end
