class AddAdditionalInfoToUser < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :role, :string
    add_column :users, :name, :string
    add_column :users, :contactinfo, :string
    add_column :users, :preferredcontact, :string
    add_index :users, [:email, :role], :unique => true
  end
end
