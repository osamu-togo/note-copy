class ImageController < ApplicationController
  def new
    @image = Image.new
  end

  def create
    Image.create(image_params)
    if @images.save
      redirect_to root_path
    else
      render :new
    end
  end


  private
  def image_params
    params.require(:image).permit(:image).merge(note_id: params[:note.id])
  end
end
