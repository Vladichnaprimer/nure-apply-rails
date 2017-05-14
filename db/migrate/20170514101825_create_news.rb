class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.string :description
      t.string :image

      t.timestamps null: false
    end
  end
end
