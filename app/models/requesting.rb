class Requesting < ActiveRecord::Base
    
    belongs_to :user
    has_many :reviews
    has_many :requesting_contents
    has_one :counsel
    mount_uploader :img_front, S3uploaderUploader
    mount_uploader :img_left, S3uploaderUploader
    mount_uploader :img_right, S3uploaderUploader
    mount_uploader :prefer_img, S3uploaderUploader
    
end
