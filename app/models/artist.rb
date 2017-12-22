class Artist < ApplicationRecord
  validates :name, :profile_image, :artwork, :statement, presence: true
end
