class Flower < ApplicationRecord
  belongs_to :category
  has_many :orders, dependent: :delete_all
  monetize :price_cents, disable_validation: true
  validates :stock, presence: true
  acts_as_taggable_on :tags
end
