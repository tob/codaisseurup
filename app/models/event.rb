class Event < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  # validates :location, presence: true
  # validates :price, presence: true
  # validates :capacity, presence: true
  # validates :includes_food, presence: true
  # validates :includes_drinks, presence: true
  # validates :starts_at, presence: true, if: :starts_at < :ends_at
  # validates :ends_at, presence: true
  # validates :active, presence: true
end
