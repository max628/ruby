class AddHouseIdToInquiryreply < ActiveRecord::Migration[5.2]
  def change
    add_reference :inquiryreplies, :house, index: true#comment it
  end
end
