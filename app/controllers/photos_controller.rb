class PhotosController < ApplicationController
  def new
  	@album = Album.find params[:album_id]
  	@photo = Photo.new
  end

  def create
  	@album = Album.find params[:album_id]
  	@photo = @album.photos.build(photo_params)
    # binding.pry
  	if @photo.save
  		redirect_to photo_path(@photo), notice: 'Photo Added'
  	else
  		render :new
  	end
  end

  def show
     # binding.pry
    @photo = Photo.find_by_id(params[:id])
    @album = Album.find_by_id(params[:album_id])
      
  end

  def edit
    @photo = Photo.find(params[:id])
  end

def update
    @photo = Photo.find(params[:id])
    if @photo.update_attributes
      redirect_to photo_path(@photo), notice: 'Photo Updated'
    else
      render :edit
    end
  end


  private
  	def photo_params
  		 params.require(:photo).permit(:caption, :description, :photo, :category_ids => [])
  	end
end
