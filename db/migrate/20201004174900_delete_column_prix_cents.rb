class DeleteColumnPrixCents < ActiveRecord::Migration[6.0]
  def change
    remove_column :flowers, :prix_cents
  end
end
