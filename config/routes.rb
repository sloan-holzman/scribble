Rails.application.routes.draw do
  root to: 'posts#index'

  resources :posts do
    resources :comments
    resources :tags
  end
  resources :categories

end
