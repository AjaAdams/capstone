class Api::SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
    render "index.json.jb"
  end
end
