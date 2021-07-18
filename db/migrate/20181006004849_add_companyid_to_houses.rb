class AddCompanyidToHouses < ActiveRecord::Migration[5.2]
  def change
    add_reference :houses, :company, index: true#comment it
  end
end
