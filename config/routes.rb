Pixtr::Application.routes.draw do
  resource :dashboard, :only => [:show]
  
  resources :galleries
  
  root :to => 'welcomes#visitor'
end
