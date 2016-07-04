class CommentsController < ApplicationController
  after_action :verify_authorized

  def index
    @commments = Comment.all
  end

  def new
    @commnet = Comment.new(user_id: params[:user_id])
  end

  def create
    @comment = current_user.comments.build(comments_params)
    @comment.save
    redirect_to user_path(current_user)
  end

  def edit
    @comment = Comment.find(params[:id])
    authorize @comment
  end

  def update
    @comment = Comment.find(params[:id])
    authorize @comment
  end
  def destroy
    @comment = Comment.find(params[:id])
    authorize @comment
    @comment.delete
    redirect_to user_path(current_user)
  end

  private
  def post_params
    params.require(:comment).permit(:content, :user_id)
  end
end
