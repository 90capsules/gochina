class Codi < ActiveRecord::Base
  
  has_many :counsels, through: :counsels
  has_many :users
  belongs_to :hospital

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
