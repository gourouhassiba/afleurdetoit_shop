class AddPriceCentToflowers < ActiveRecord::Migration[6.0]
  def change
    add_column :flowers, :price_cents, :integer
  end

end
