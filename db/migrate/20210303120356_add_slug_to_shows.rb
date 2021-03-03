class AddSlugToShows < ActiveRecord::Migration[6.1]
  def change
    add_column :shows, :slug, :string
    add_index :shows, :slug, unique: true
  end
end
