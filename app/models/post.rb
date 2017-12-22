class Post < ApplicationRecord
  validates :heading, :date, :body, presence: true
  validates :body, length: { minimum: 0, maximum: 142 }, allow_blank: true
end
