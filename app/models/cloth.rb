class Cloth < ApplicationRecord
  validates :name, presence: true;
  validates :price_1, presence: true;
  validates :category, presence: true;
end
