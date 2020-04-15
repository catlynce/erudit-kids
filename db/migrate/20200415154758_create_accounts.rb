class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :uid, null: false
      t.references :plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
