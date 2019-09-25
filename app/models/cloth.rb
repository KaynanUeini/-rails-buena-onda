class Cloth < ApplicationRecord
  has_many :orders
  validates :name, presence: true
  validates :price1, presence: true
  validates :category, presence: true

 include PgSearch
  pg_search_scope :search_by_cloth_name,
    against: [ :name, :brand, :price1],
    using: {
      tsearch: { prefix: true }
    }
end
