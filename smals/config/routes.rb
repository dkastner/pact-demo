Rails.application.routes.draw do
  resources :loans, only: :show
end
