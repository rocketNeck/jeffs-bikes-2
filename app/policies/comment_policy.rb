class CommentPolicy < ApplicationPolicy
  attr_reader :user, :model

  def initialize(user, model)
    @user = user
    @comment = model
  end

  def update?
    @user.admin? || @user.id == @comment.user_id
  end

  def destroy?
    return false if @user.id == @comment.user_id
    @user.admin?
  end
end
