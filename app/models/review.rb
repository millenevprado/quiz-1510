class Review < ApplicationRecord
  belongs_to :song

  validates :content, presence: true
end
