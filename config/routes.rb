Rails.application.routes.draw do

  root to: "home#index"

  devise_for :users
  resources :posts

  namespace :api, defaults: { format: :json } do
    post 'translate' => 'translator/translate'
  end

end
