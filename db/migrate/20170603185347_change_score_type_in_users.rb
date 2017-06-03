class ChangeScoreTypeInUsers < ActiveRecord::Migration
  def change
      change_column :users, :score, :integer
  end
end
