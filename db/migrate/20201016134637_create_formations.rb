class CreateFormations < ActiveRecord::Migration[6.0]
  def change
    create_table :formations do |t|

      t.timestamps
    end
  end
end
