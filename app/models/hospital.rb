class Hospital < ActiveRecord::Base
    
    has_many :codis
    has_many :hos_replies
    
end
