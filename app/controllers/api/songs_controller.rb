class Api::SongsController < ApplicationController
  def index
    @songs = Song.all
    render "index.json.jb"
  end

  def show
    input_value = params[:id]
    @song = Song.find_by(id: input_value)
    render "show.json.jb"
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
