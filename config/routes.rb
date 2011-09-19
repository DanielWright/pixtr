Pixtr::Application.routes.draw do
  resource :dashboard, :only => [:show]
  
  resources :galleries
  
  root :to => 'clearance/sessions#new'
end
