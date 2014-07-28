class Owner < ActiveRecord::Base 
	# Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # before_action :authenticate_owner!
  # owner_signed_in?
  # current_owner
  # owner_session

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
