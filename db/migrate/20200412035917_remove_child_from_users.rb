class RemoveChildFromUsers < ActiveRecord::Migration[6.0]
  def change

    remove_column :users, :child, :bool
  end
end
