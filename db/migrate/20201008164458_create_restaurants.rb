class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :cuisine
      t.integer :rating
      t.float :latitude
      t.float :longitude
      t.string :image

      t.timestamps
    end
  end
end
