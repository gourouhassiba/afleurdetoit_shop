class AddStockToFlowers < ActiveRecord::Migration[6.0]
  def change
    add_column :flowers, :stock, :integer
  end
end
