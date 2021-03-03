class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :seat_ids, array: true, default: []
      t.integer :show_id
      t.float :price
      t.timestamps
    end
  end
end
