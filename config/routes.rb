Rails.application.routes.draw do
  post "/", to: 'static_page#bienvenue'

  root 'static_page#accueil'

  get '/change/:num', to: 'static_page#change'

  post "/change/", to: 'static_page#changer'

  get '/accueil', to: 'static_page#accueil'

  get '/propos', to: 'static_page#propos'

  get '/contact', to: 'static_page#contact'

  get '/new', to: 'static_page#new'

  post '/new/',to: 'static_page#newest'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
