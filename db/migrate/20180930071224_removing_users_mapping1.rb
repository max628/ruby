class RemovingUsersMapping1 < ActiveRecord::Migration[5.2]
  def change
  	#remove_reference :houses, :user, index: true, foreign_key: true
  end
end
