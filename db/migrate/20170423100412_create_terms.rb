class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
