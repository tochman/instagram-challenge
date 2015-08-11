class CommentsController < ApplicationController
  def new
    @photo = Photo.find(params[:photo_id])
    @comment = Comment.new
  end

  def review_params
    params.require(:comment).permit(:remark)
  end

end
