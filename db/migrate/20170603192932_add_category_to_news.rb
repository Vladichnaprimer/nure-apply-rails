class AddCategoryToNews < ActiveRecord::Migration
  def change
    add_column :news, :category, :string
  end
end
