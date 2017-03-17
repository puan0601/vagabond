class Location < ApplicationRecord
  has_many :articles, dependent: :destroy
  has_many :users, through: :articles

  validates :name, :state, :country, presence: true
  validates :name, :state, :image, :country, length: {maximum: 255}
  validates :about, length: {maximum: 1000}
  
end
