class Article < ApplicationRecord
  belongs_to :user
  belongs_to :location
  mount_uploader :avatar, AvatarUploader
end
