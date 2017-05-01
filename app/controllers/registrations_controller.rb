class RegistrationsController < Devise::RegistrationsController

    private

    def sign_up_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :role, :category)
    end

    def account_update_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :role, :category, :current_password)
    end
end
