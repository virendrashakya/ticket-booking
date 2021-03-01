class CreateShows < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |t|
      t.string :movie_name
      t.integer :screen_id
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
