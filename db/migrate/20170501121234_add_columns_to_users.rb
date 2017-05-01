class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :role, :integer
    add_column :users, :category, :integer
  end
end
