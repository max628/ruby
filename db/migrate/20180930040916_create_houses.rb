class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :sqft
      t.string :location
      t.string :address
      t.string :style
      t.string :floors
      t.string :price
      t.string :basement
      #t.belongs_to :company, foreign_key: true #comment it
      t.references :user

      t.timestamps
    end
  end
end
