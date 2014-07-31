class RegistrationsController < Devise::RegistrationsController
def home
@user = current_user
end

protected

def after_sign_up_path_for(user)
	# @user = User.find(session[:user_id])
    users_path
  end

end
