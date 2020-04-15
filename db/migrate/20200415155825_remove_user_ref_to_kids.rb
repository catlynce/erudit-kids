class RemoveUserRefToKids < ActiveRecord::Migration[6.0]
  def change
    remove_column :kids, :user_id, :integer
    remove_column :kids, :user, :integer
  end
end
