Dp::Application.routes.draw do

resources :groups
resources :associates
resources :companies
resources :locations
resources :searches
resources :sessions, only: [:new, :create, :destroy]

root :to => "pages#home"

match '/team', to: 'pages#team'
match '/offices', to: 'pages#offices'
match '/signin', to: 'sessions#new'
match '/signup',  to: 'associates#new'
match '/signout', to: 'sessions#destroy', via: :delete

end
