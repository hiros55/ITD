Rails.application.routes.draw do
  root to: 'users#index'
  devise_for :admin_users
  scope '(:locale)', locale: /#{I18n.available_locales.map(&:to_s).join('|')}/ do
    draw :root
  end
  draw :root
end
