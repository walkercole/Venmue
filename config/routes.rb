Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/all" => "venues#all"
  get "/book" => "venues#book"
  root to: "home#index"
  resources :venues do
  	resources :reviews
  end

end
