class Review < ActiveRecord::Base
    
    belongs_to :user
    has_many :review_replies
end
