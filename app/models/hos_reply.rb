class HosReply < ActiveRecord::Base
    
    belongs_to :users
    belongs_to :hospital
    
end
