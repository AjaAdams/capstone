class Api::SongsController < ApplicationController
  def index
    @songs = Song.all.order(title: :asc)
    render "index.json.jb"
  end

  def show
    @song = Song.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    song_id = params[:id]
    @song = Song.find_by(id: song_id)
    
    @song.lyrics = params["lyrics"] || @song.lyrics

    @song.save

    if @song.save
      render "show.json.jb"
    else
      render json: { errors: @song.errors.full_messages }, status: :bad_request
    end
  end

  def create
    @song = Song.new(
      title: params[:title],
      artist: params[:artist],
      album: params[:album],
      year: params[:year],
      genre: params[:genre],
      featuring: params[:featuring],
      image_url: params[:image_url],
    )
    if @song.save
      render "show.json.jb"
    else
      render json: { errors: @song.errors.full_messages }, status: :bad_request
    end
  end
end
