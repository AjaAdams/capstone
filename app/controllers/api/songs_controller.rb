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
end
