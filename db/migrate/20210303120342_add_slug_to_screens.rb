class AddSlugToScreens < ActiveRecord::Migration[6.1]
  def change
    add_column :screens, :slug, :string
    add_index :screens, :slug, unique: true
  end
end
