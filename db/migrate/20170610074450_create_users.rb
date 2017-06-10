class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :image
      t.string :email
      t.string :password_digest
      t.string :role
      t.integer :developer_id

      t.timestamps
    end
  end
end
