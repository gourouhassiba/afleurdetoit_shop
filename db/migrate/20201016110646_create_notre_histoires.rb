class CreateNotreHistoires < ActiveRecord::Migration[6.0]
  def change
    create_table :notre_histoires do |t|

      t.timestamps
    end
  end
end
