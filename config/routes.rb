Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    get '/leagues', to: 'leagues#index'
    get '/leagues/:id', to: 'leagues#show'

    get '/teams/leagues/:id/:season', to: 'teams#index'
    get '/teams/:id', to: 'teams#show'

    get '/standings/leagues/:id/:season', to: 'standings#index'

    get '/matches/leagues/:id/:season', to: 'matches#index'
    get '/matches/leagues/:id/:season/live/:live', to: 'matches#show'

    get '/transfers/:player', to: 'transfers#index'
  end
end
