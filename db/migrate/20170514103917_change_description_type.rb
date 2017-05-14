class ChangeDescriptionType < ActiveRecord::Migration
  def change
      change_column :news, :description, :text
  end
end
