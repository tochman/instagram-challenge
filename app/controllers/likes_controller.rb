class LikesController < ApplicationController
  def create
    @photo = Photo.find(params[:photo_id])
    @photo.likes.create
       # byebug
    respond_to do |format|
      format.js do 
        render inline: "location.reload();"
        #redirect_to :back
        #render action: :count, layout: false
      end
    end
  end
end
