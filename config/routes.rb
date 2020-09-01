Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
    # passwords:     'users/passwords'
  } 

  get 'home/index'
    root to: "home#index"
  # devise_scope :user do
  #   get "sign_in", :to => "users/sessions#new"
  #   get "sign_out", :to => "users/sessions#destroy" 
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
