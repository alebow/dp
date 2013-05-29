Dp::Application.routes.draw do

resources :groups
resources :associates
resources :companies
resources :locations
resources :searches

root :to => "pages#home"

match '/team', to: 'pages#team'
match '/offices', to: 'pages#offices'
match '/signup',  to: 'associates#new'

end
