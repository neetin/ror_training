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
  		redirect_to album_photo_path(@album.id,@photo.id), notice: 'Photo Added'
  	else
  		render :new
  	end
  end

  def show
     # binding.pry
    @photo = Photo.find_by_id(params[:id])
    @album = Album.find_by_id(params[:album_id])
      
  end


  private
  	def photo_params
  		 params.require(:photo).permit(:caption, :description, :photo)
  	end
end
