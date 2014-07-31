class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :dogs
  has_many :sitters

   def name
    [fname, lname].compact.join(' ')
  end

   def update_with_password(params, *options)
    if super
      puts "Environment: #{Rails.env.development?}"
      # debugger
      # TODO schedule this in the background
      UserMailer.password_changed(self.id).deliver
    end
end
end
