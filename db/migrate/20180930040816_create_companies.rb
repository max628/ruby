class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :website
      t.string :address
      t.string :size
      t.string :founded_in
      t.text :synopsis
      t.string :revenue
      #t.belongs_to :user, foreign_key: true #comment it
      t.references :user
      t.timestamps
    end
  end
end
