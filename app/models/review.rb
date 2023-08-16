class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true
  validates :rating, numericality: {only_integer: true}
  validates :rating, inclusion: {in: (0..5)}
  validates :content, presence: true
end
