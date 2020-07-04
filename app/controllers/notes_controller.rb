class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def new
    @note = Note.new
  end

  def create
    Note.create(post_params)
    redirect_to root_path
  end

  private
  def post_params
    params.require(:note).permit(:title, :text).merge(user_id: current_user.id)
  end
end
