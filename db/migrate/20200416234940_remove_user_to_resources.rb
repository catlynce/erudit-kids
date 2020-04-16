class RemoveUserToResources < ActiveRecord::Migration[6.0]
  def change
    remove_column :resources, :user_id
  end
end
