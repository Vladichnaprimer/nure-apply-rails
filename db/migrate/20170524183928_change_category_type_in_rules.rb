class ChangeCategoryTypeInRules < ActiveRecord::Migration
  def change
    change_column :rules, :category, :string
  end
end
