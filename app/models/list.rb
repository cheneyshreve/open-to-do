class List < ApplicationRecord
  belongs_to :user
  has_many :items
  validates :name, presence: true
  validates :permissions, presence: true
end
