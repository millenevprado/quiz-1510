class AddCategoryToSongs < ActiveRecord::Migration[7.0]
  def change
    add_column :songs, :category, :string
  end
end
