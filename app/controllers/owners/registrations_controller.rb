class Owners::RegistrationsController < Devise::RegistrationsController


  private

  def sign_up_params
    params.require(:owner).permit(:email, :password, :password_confirmation, :last_name, :first_name, :phone_number, :city, :flat_number, :address, :postal_code, :country)
  end

  def account_update_params
    params.require(:owner).permit(:email, :password, :password_confirmation, :current_password, :last_name, :first_name, :phone_number, :city, :flat_number, :address, :postal_code, :country)
  end

end

