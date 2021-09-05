Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'to_dos#index'
  resources :to_dos

  namespace :api, { format: 'json'} do
    namespace :v1 do
      resources :to_dos
    end
  end
end
