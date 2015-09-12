class Counsel < ActiveRecord::Base
    
    belongs_to :user
    belongs_to :codi
    # 상담 기능 구현 후 활성화
    # has_one :counsel_content
    has_one :chat_room
    belongs_to :requesting
    
end
