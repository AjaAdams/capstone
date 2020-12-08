class Api::SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
    render "index.json.jb"
  end

  def show
    input_value = params[:id]
    @subject = Subject.find_by(id: input_value)
    render "show.json.jb"
  end
end
