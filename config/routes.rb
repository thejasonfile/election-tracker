Rails.application.routes.draw do

  root 'welcome#index'
  resources :states, except: [:destroy]
  resources :candidates, except: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
