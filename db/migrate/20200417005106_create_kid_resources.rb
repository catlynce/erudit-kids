class CreateKidResources < ActiveRecord::Migration[6.0]
  def change
    create_table :kid_resources do |t|
      t.references :kid, null: false, foreign_key: true
      t.references :resource, null: false, foreign_key: true
      t.string :config, null: true

      t.timestamps
    end
  end
end
