class Flower < ApplicationRecord
  belongs_to :category
  has_many :orders, dependent: :delete_all
  monetize :price_cents, disable_validation: true
  validates :price, money: true
end
