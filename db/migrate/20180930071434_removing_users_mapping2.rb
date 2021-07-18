class RemovingUsersMapping2 < ActiveRecord::Migration[5.2]
  def change
  	#remove_reference :potentialbuyers, :user, index: true, foreign_key: true
  	#remove_reference :inquiryreplies, :user, index: true, foreign_key: true
  	#remove_reference :inquirydetails, :user, index: true, foreign_key: true
  	#remove_reference :companies, :user, index: true, foreign_key: true
  end
end
