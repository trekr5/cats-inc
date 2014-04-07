CatsInc::Application.routes.draw do

  # Leave this line here. It's for devise.
  devise_for :users

  # Add the nessessary routes here.
  
  # Map /items to the path controller items and action/view index
  get "/items", to: "items#index"

  get "/items/:id", to: "items#show"

# Named routes make it easier for you to see
  get "/homepage/", to: "homepage#index"

  # The DELETE verb is used when deleting from a page
  delete "/stockalerts/:id", to: "stock_alerts#destroy"
 
 # Named route 
  get "/stockalerts/:id", to: "stock_alerts#show", as: :stock_alert 
  post "/stockalerts/", to: "stock_alerts#create"
  
  post "/purchases", to: "purchases#create", as: :item 
  
  get "/admin/dashboard", to: "admin/dashboard#index" 
end
