class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.datetime :date
      t.integer :party_size
      t.boolean :special_occasion
      t.text :notes
      t.references :restaurant, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
