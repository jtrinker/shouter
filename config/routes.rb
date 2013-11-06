Shouter::Application.routes.draw do
  # add this to make sure the homepage is only using a get request
  root 'homes#show', via: :get

  # resource (singular) because dasboard is a singleton resource, 
  #there's only one. /dashboard, not /dashboard/:id
  resource :dashboard, only: [:show]
  
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:index, :new, :create, :show] do
  	post 'follow' => 'following_relationships#create'
  	# button_to 'Follow', click that and it CREATES a relationship
  	# inside the FollowingRelationshipsController
    delete 'follow' => 'following_relationships#destroy'
  end
  resources :shouts, only: [:show]
  resources :text_shouts, only: [:create]
  resources :photo_shouts, only: [:create]
end
