class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.text :description
      t.integer :year_built
      t.integer :square_feet
      t.integer :bedrooms
      t.integer :bathrooms
      t.boolean :availability
      t.string :address
      t.integer :price

      t.timestamps
    end
  end
end
