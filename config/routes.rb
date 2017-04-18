Rails.application.routes.draw do

  get 'dashboards/show'

  authenticated :user do
    root "dashboards#show"
  end

  root "pages#home"

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
