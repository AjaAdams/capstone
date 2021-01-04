class Api::SubjectsController < ApplicationController
  def index
    @subjects = Subject.all.order(name: :asc)
    render "index.json.jb"
  end

  def show
    @subject = Subject.find_by(id: params[:id])
    render "show.json.jb"
  end
end

# if songs == true
# end
