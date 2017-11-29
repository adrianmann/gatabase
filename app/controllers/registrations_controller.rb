class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :profile_name, :email, :password, :password_confirmation, :provider, :uid, :image)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :profile_name, :email, :password, :password_confirmation, :current_password, :provider, :uid, :image)
  end
end