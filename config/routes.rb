Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  authenticated :user do
    root "dashboards#show" #, subdomain: 'app'

    post '/add_points', to: 'users#update'
    post '/reset_points', to: 'users#reset'

    # Show user badges on page
    # get '/show_badges', to: 'badges#create'
    resources :badges, only: [:index, :create]

    get '/get_objectives', to: 'users#get_objectives'
    get 'objectives/new', to: 'objectives#new'
    post 'objectives', to: 'objectives#create'

  end

  root "pages#home"

  # Styleguide
  get 'styleguide', to: 'pages#styleguide'

  # get ‘/dashboard’ to: 'dashboards#show'
  resource :dashboard, only: [:show]

  # get ‘/login’ to: 'devise#login'
  devise_for :users, controllers: { sessions: 'users/sessions' }

  resource :company, only: [:show]
  # do
  #   member do
  #     get :welcome, as: 'welcome'
  #   end
  # end

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
