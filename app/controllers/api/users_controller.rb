class Api::UsersController < ApplicationController
  def create
    user = User.new(
      firstname: params[:firstname],
      lastname: params[:lastname],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def spotify
    spotify_user = RSpotify::User.new(request.env['omniauth.auth'])

    # Add tracks to a playlist in user's Spotify account
    tracks = RSpotify::Track.search('Know')
    playlist.add_tracks!(tracks)
    playlist.tracks.first.name #=> "Somebody That I Used To Know"
 
  end
end
