class User < ActiveRecord::Base
  has_many :review_boxes
  has_many :reviews
  has_many :requestings
  has_many :talkings
  has_many :hos_replies
  has_many :counsels
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
