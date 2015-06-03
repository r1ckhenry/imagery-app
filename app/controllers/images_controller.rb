class ImagesController < ApplicationController

  def index 
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    Image.create(image_params)
    redirect_to(images_path)
  end

  def destroy
    image = Image.find(params[:id])
    image.destroy
    redirect_to(images_path)
  end

private

  def image_params
    params.require(:image).permit(:title, :url, :photographer, :description)
  end

end