class AddShowIdToSeats < ActiveRecord::Migration[6.1]
  def change
    add_column :seats, :show_id, :integer
  end
end
