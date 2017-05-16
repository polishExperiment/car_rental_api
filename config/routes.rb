Rails.application.routes.draw do
  mount Knock::Engine => '/auth'
end
