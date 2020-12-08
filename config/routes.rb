Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "sessions" => "sessions#new"
    post "sessions/new" => "sessions#create"
    delete "sessions/:id" => "sessions#destroy"

    get "/subjects" => "subjects#index"
    get "/subjects/:id" => "subjects#show"
    get "/subjects/params[:name]" => "subjects#show"

    get "/songs" => "songs#index"
    get "/songs/:id" => "songs#show"
  end
end
