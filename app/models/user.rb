class User < ActiveRecord::Base
  ROLES = %w(admin teacher)

  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_a_role(role)
  	if ROLES.inclue?(role)
  		self.add_role(role)
  	end	
  end

end