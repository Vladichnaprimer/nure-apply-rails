class ChangeCategoryTypeInUsers < ActiveRecord::Migration
  def change
    change_column :users, :category, :string
  end
end
