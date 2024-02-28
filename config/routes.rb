Rails.application.routes.draw do
  get '/search', to: 'songs#search'
  get '/songs/named/:name', to: 'songs#search'

  resources :songs do
    resources :reviews, only: %i[new create]
  end
end
