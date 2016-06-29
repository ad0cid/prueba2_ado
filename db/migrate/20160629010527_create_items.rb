class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.Integer :size
      t.string :size
      t.text :description

      t.timestamps null: false
    end
    null:false unique:true
  end
end
