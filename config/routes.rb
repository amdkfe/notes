Rails.application.routes.draw do

root "note#index"

resources :notes do 
  member do 
    get :delete
  end
end

get '/react', to: 'notes#react'


end
