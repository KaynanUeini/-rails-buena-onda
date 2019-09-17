class Cloth < ApplicationRecord
  has_many :orders
  validates :name, presence: true
  validates :price1, presence: true
  validates :category, presence: true
end
