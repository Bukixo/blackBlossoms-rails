class Event < ApplicationRecord
  validates :name, :date, presence: true
  validates :body, length: { minimum: 3, maximum: 142}, allow_blank: false
end
