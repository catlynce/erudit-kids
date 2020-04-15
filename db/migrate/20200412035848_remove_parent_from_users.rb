class RemoveParentFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :parent, :bool
  end
end
