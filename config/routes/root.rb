Rails.application.routes.draw do
  resources :users do
    resources :achivements
  end
  resources :articles
end
