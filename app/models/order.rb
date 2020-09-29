class Order < ApplicationRecord
  belongs_to :user
  belongs_to :flower
  monetize :amount_cents


end
