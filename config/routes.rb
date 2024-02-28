Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources "entries"
  resources "places"
  root 'places#index'
  # get("/", { :controller => "articles", :action => "index" })
end
