Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  ActiveAdmin.routes(self)

  authenticated :user do
    root "dashboards#show" #, subdomain: 'app'
  end

  root "pages#home"

  # Styleguide
  get 'styleguide', to: 'pages#styleguide'

  # get ‘/dashboard’ to: 'dashboards#show'
  resource :dashboard, only: [:show]

  # get ‘/login’ to: 'devise#login'
  devise_for :users

  resource :company, only: [:show] do
    member do
      get :welcome, as: 'company_welcome'
    end
  end

  # get ‘/team to: “teams#show”
  resource :team, only: [:show]

  # get ‘/profile‘ to: “profiles#show”
  # get ‘/profile/edit‘ to: “profiles#edit”
  # post ‘/profile‘ to: “profiles#update”
  resource :profile, only: [:show, :edit, :update]

  # get ‘/resources‘ to: “resources#index”
  # get ‘/resource/:id‘ to: “resources#show”
  resources :resources, only: [:index, :show]

  # TODO
  # # get ‘/lunches/new’ to: “lunches#new”
  # # post ‘/lunches’ to: “lunches#create”
  # get ‘/places‘ to: “places#index”
end
