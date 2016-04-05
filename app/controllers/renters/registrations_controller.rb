class Renters::RegistrationsController < Devise::RegistrationsController


  private

  def sign_up_params
    params.require(:renter).permit(:email, :private, :password, :password_confirmation, :last_name, :first_name, :phone_number, :gender, :birthday)
  end

  def account_update_params
    params.require(:renter).permit(:email, :private, :password, :password_confirmation, :current_password, :last_name, :first_name, :phone_number, :gender, :birthday)
  end

end

