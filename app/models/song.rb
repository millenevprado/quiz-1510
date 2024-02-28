class Song < ApplicationRecord
  has_many :reviews

  validates :title, presence: true
end
