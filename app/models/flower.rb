class Flower < ApplicationRecord
  belongs_to :category
  has_many :orders, dependent: :delete_all
  store_accessor :properties, :price_cents
  monetize :price_cents, disable_validation: true
  validates :price, money: true
end
