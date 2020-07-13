class NotesController < ApplicationController
  def index
    @notes = Note.all
    @image = Image.all
  end

  def new
    @note = Note.new
    @note.images.new
  end

  def create
    @note = Note.create(post_params)
    redirect_to root_path
  end

  def show
    @note = Note.find(params[:id])
  end

  private
  def post_params
    params.require(:note).permit(:title, :text, images_attributes: [:image]).merge(user_id: current_user.id)
  end

  
end
