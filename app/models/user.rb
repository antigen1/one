class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  #devise :database_authenticatable, :registerable, :recoverable, :validatable 

  attr_accessible :login #, :email, :password, :password_confirmation, :renenmber_me

  has_one :cart

  has_many :orders

end
