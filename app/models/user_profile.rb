class UserProfile < ActiveRecord::Base
  belongs_to :user

  mount_uploader :user_pic_url, ImageUploader

end
