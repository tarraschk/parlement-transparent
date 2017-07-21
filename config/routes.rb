Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#main'
  #root to: 'home#landing_page'
  #resources :parlementaires, only: [:index, :show]
end
