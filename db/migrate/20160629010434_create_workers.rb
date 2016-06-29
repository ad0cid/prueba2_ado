class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
    validates :name presence:true
  end
  scope :first_user, ->{where(user_id: User.first.id)}

  scope :last_5, -> {order(id: :desc).limit(5)}

  scope :last_day, -> {where(date: Date.current)}

  scope :noo_list, -> {where(list_id: nil)}

end
