class Requesting < ActiveRecord::Base
    
    belongs_to :user
    has_many :reviews
    has_many :requesting_contents
    has_one :counsel
    
end
