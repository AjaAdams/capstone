Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/sessions" => "sessions#new"
    post "/sessions" => "sessions#create"
    delete "/sessions/:id" => "sessions#destroy"

    get "/subjects" => "subjects#index"
    get "/subjects/:name" => "subjects#show"

    get "/songs" => "songs#index"
    get "/songs/:id" => "songs#show"
    post "/songs" => "songs#create"
    patch "/songs/:id" => "songs#update"

    post "/users" => "users#create"

    get "/auth/spotify/callback" => "users#spotify"

    get "/*path" => proc { [200, {}, [ActionView::Base.new.render(file: 'public/index.html')]] }
  end
end
