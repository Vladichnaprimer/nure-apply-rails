class FixAverageName < ActiveRecord::Migration
  def change
      rename_column :users, :average, :score
  end
end
