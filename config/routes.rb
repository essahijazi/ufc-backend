Rails.application.routes.draw do
  
  # post '/users/sign_in', to: 'users#sign_in'
  get '/allfighters', to: 'fighters#allfighters'
  get '/fighterStats', to: 'fighters#fighterStats'

  post '/createNewFighter', to: 'fighters#createNewFighter'
  post '/updateFighter', to: 'fighters#updateFighter'
  post '/deleteFighter', to: 'fighters#deleteFighter'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
