class Note < ApplicationRecord
  validates :title, :text, presence: true
  belongs_to :user
  has_many :images
  has_many :likes
  accepts_nested_attributes_for :images, allow_destroy: true
end
