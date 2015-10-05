class PhotosController < ApplicationController
	def index
		@photos = Photo.all
	end
	
	@place.photos.create(photo_params)
	params.require(:photo).permit(:caption, :picture, :place_id)

	end
