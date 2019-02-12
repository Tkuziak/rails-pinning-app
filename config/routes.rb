Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # You can have the root of your site routed with "root"
  root 'pins#index'

  get "pins/name-:slug" => "pins#show_by_name", as: 'pin_by_name'
  
  resources :pins

  get '/library' => 'pins#index'
end
