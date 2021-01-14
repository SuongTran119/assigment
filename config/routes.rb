Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations"}
  as :user do
    get '/signup' => 'devise/registrations#new'
  end

  mount ActionCable.server => "/cable"
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
