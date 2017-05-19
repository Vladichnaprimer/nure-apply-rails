class AddAverageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :average, :double
  end
end
