class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.string :name, null: false, default: ''
      t.string :url, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end

    add_index :resources, :name
  end
end
