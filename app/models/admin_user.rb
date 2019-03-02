class AdminUser < ApplicationRecord

# Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable


  # Rails 5.2.2 scope
  # scope :alphabetically, order("email ASC")

  def password_required?
    new_record? ? false : super
  end

end
