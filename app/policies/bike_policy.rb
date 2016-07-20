class BikePolicy < ApplicationPolicy
  attr_reader :user, :model

  def initialize(user, model)
    @user = user
    @bike = model
  end

  def update?
    @user.admin? || @user.id == @bike.user_id
  end

  def destroy?
    return false if @user.id == @bike.user_id
    @user.admin?
  end

end
