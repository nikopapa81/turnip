class AddUserIdToActivityLine < ActiveRecord::Migration
  def change
    add_column :activity_lines, :user_id, :integer
  end
end
