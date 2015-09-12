class Requesting < ActiveRecord::Base
    
    belongs_to :user
    has_many :reviews
    # 요청 작업 구현 후 활성화
    # has_one :requesting_content
    has_one :counsel
    
end
