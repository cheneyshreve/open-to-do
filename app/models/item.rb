class Item < ApplicationRecord
  belongs_to :list
  validates :description, presence: true
  validates :completed, presence: true

end
