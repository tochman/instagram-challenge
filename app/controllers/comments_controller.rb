class CommentsController < ApplicationController
  def new
    @photo = Photo.find(params[:photo_id])
    @comment = Comment.new
  end

  def review_params
    params.require(:comment).permit(:remark)
  end

  def create
    @comment = Comment.new()
    if @comment.save
      redirect_to '/'
    else
      render 'new'
    end
  end

end
