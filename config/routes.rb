Rails.application.routes.draw do
  root 'questions#index'
  resources :questions, only: [:index, :new, :create] do
    resources :user_options, only: [:create]
  end
  resources :my_questions, only: [:index, :destroy]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
