class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
    validates :name presence:true
  end
end
