Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/cocktails", to: "cocktails#index"
  # get "/cocktails/:id", to: "cocktails#show"
  # get "/cocktails/new", to: "cocktails#new"
  # post "/cocktails", to: "cocktails#create"
  # get "/cocktails/:id/doses/new", to: "doses#new"
  # post "/cocktails/:id/doses", to: "doses#create"
  # delete "doses/:id", to: "doses#destroy"
  resources :cocktails, only: [:index, :show, :new, :create] do
  resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end

  # get "/cocktails/new", to: "cocktails#new"
  # post "/cocktails", to: "cocktails#create"
  # get "/cocktails/:id/doses/new", to: "doses#new"
  # post "/cocktails/:id/doses", to: "doses#create"
  # delete "doses/:id", to: "doses#destroy"
