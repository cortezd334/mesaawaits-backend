class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :recovery_password_digest
      t.integer :age
      t.string :email
      t.string :location

      t.timestamps
    end
  end
end
