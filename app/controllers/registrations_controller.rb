class RegistrationsController < Devise::RegistrationsController
  ######### overwrite devise permissions
  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :role)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password, :role)
  end
end
