Shouter::Application.routes.draw do
  get "shouts/create"
  get "dashboards/show"
  # add this to make sure the homepage is only using a get request
  root 'homes#show', via: :get

  # resource (singular) because dasboard is a singleton resource, 
  #there's only one. /dashboard, not /dashboard/:id
  resource :dashboard, only: [:show]
  
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :shouts, only: [:create, :show]
end
