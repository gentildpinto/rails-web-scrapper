Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'api/v1/scrapper#index'

  namespace :api do
    namespace :v1 do
      # resources :scrapper
      # resources :scrapper, only: [:index, :show]
      get '/', to: 'scrapper#index'
      get '/search/:title', to: 'scrapper#searchMovies'
    end
  end
end
