RailsMaster::Application.routes.draw do
  
  root :to => "articles#index"  
  
  resources :categories, only: [:index, :show, :create, :destroy] do
    resources :articles
  end

  get '/articles/:day/:month/:year/:title' => 'articles#yeabuddy'
end
