Rails.application.routes.draw do
  scope :api do
    resources :artists
    resources :users
    resources :events
    resources :posts
  end
end
