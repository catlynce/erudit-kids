class CreateKids < ActiveRecord::Migration[6.0]
  def change
    create_table :kids do |t|
      t.string :name, null: false
      t.string :username, null: false, default: ''
      t.string :email
      t.date :birthdate, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end

    add_index :kids, :email
  end
end
