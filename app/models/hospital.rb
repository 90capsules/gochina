class Hospital < ActiveRecord::Base
    
    has_many :codis
    has_many :hos_replies
   
   
    def avg
    total = 0
      hos_replies.each do |t|
        total += t.hos_score
      end
      if hos_replies.count == 0
        0
      else
        total.to_f / hos_replies.count
      end
    end
   
    
end


