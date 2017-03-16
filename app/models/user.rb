class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  alias_attribute :avatar, :image # User.image is aliased to User.avatar for CarrierWave

  # attr_accessible :avatar, :image, :avatar_cache, :remove_avatar
  has_many :articles
  has_many :locations, through: :articles

  mount_uploader :image, AvatarUploader

end
