class CommentsController < ApplicationController

  before_action :find_commentable

  def new
    @comment = Comment.new
  end

  def create
    @comment = @commentable.comments.new(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      redirect_back fallback_location: '/', allow_other_host: false, notice: 'Your comment was successfully posted!'
    else
      redirect_back fallback_location: '/', allow_other_host: false, notice: "Your comment wasn't posted!"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

  def find_commentable
    @commentable = Shop.find_by_id(params[:shop_id]) if params[:shop_id]
    @commentable = Taxi.find_by_id(params[:taxi_id]) if params[:taxi_id]
    @commentable = Firm.find_by_id(params[:firm_id]) if params[:firm_id]
    @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
  end
end
