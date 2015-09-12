class Talking < ActiveRecord::Base
    
    belongs_to :user_id
    has_many :talking_replies
    
end
