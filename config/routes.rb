Rails.application.routes.draw do
  mount Knock::Engine => '/auth'

  resources :todos do
    resources :items
  end
end
