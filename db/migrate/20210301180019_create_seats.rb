class CreateSeats < ActiveRecord::Migration[6.1]
  def change
    create_table :seats do |t|
      t.string :category
      t.float :price
      t.integer :screen_id
      t.integer :order_id
      t.timestamps
    end
  end
end
