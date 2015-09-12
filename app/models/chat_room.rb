class ChatRoom < ActiveRecord::Base
    
    belongs_to :counsel
    has_many :chat_content
    
end
