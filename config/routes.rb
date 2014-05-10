Rails.application.routes.draw do

  root to: "posts#new"

  devise_for :users
  resources :posts

  namespace :api, defaults: { format: :json } do
    post 'translate' => 'translator#translate'
  end

end
