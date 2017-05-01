class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.string :title
      t.text :text
      t.integer :category

      t.timestamps null: false
    end
  end
end
