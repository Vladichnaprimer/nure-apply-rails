class ChangeAverageTypeInUsers < ActiveRecord::Migration
  def change
    change_column :users, :average, :float
  end
end
