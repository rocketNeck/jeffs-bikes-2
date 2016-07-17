class BikePolicy < ApplicationPolicy
  attr_reader :current_user, :model

  def initialize(current_user, model)
    @current_user = current_user
    @bike = model
  end

  def update?
    @current_user.admin? || @current_user.id == @bike.user_id
  end

  def destroy?
    return false if @current_user.id == @bike.user_id
    @current_user.admin?
  end

end
