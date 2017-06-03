class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.string :name
      t.integer :score

      t.timestamps null: false
    end
  end
end
