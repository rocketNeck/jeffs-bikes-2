class CommentsController < ApplicationController
  #after_action :verify_authorized

  def create
    @bike = Bike.find(params[:bike_id])
  #  @comment = @bike.comments.create(params[:comment])
    @comment = @bike.comments.create!(params.require(:comment).permit!)
    @comment.user_id = current_user.id
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @bike}
        format.json { render json: @comment, status: :created, location: @comment }
      else
        format.html { render action: "new"}
        format.json {render json: @comment.errors, status: :unprocessable_entity}
      end
    end
  end

  # def edit
  #   @comment = Comment.find(params[:])
  # end
  # def update
  #   @comment = Comment.find(params[:id])
  #   @comment.update(post_params)
  #   redirect_to user_path(current_user)
  # end
  # def destroy
  #   @comment.delete
  #   respond_to do |format|
  #     format.html { redirect_to bikes_url, notice: 'Comment deleted.' }
  #     format.json { head :no_content }
  #   end
  # end

  def destroy
    bike = Bike.find_by_id(params[:bike_id])
    comment = bike.comments.find_by_id(params[:id])
    comment.destroy
    redirect_to bike
  end

  private
  def post_params
    params.require(:comment).permit(:content)
  end
end
