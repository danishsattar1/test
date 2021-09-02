Rails.application.routes.draw do
  #Devise reoutes defined. I have updated default paths for devise routes
  devise_for :users, path: '',path_names: {sign_up: 'register', sign_in:'login', sign_out: 'logout'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
