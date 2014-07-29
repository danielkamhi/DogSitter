class RegistrationsController < Devise::RegistrationsController



protected

def after_sign_up_path_for(user)
	# @user = User.find(session[:user_id])
    users_path
  end

end
