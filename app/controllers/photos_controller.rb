class PhotosController < ApplicationController
  def index
    @photos = Photo.all
 end

  def show
  @photo = Photo.find(params[:id])
  end
  #tgufghj
  # //show only form
  def new 
    # byebug
    @photo = Photo.new
  end

  # save data in form so use create method
  def create
    # byebug
    @photo = Photo.new (photo_params)

    if @photo.save 
      redirect_to @photo 
    else
      render :new , status: :unprocessable_entity
    end 
  end
#  this is update and edit
  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    @photo.update(photo_params)

    redirect_to photo_path(@photo)
  end

  # delete with the help of dest
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    redirect_to photo_path
  end


private 
  def photo_params
    params.require(:photo).permit(:name,:size)
  end

      
end
