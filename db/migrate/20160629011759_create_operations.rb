class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.references :work, index: true, foreign_key: true
      t.references :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
