class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # satu user boleh ada satu role je
  belongs_to :role

  # helper method nak check user punya role dekat dalam file ability.rb
  def has_role?(role_name)
    self.role == Role.where(name: role_name).first
  end 
end
