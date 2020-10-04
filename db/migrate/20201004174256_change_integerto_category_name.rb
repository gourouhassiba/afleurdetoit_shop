class ChangeIntegertoCategoryName < ActiveRecord::Migration[6.0]
  def change
    rename_column :flowers, :integer, :category
  end
end
