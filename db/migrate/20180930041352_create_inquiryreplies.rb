class CreateInquiryreplies < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiryreplies do |t|
      t.text :reply
      t.belongs_to :user, foreign_key: true
      t.belongs_to :inquirydetail, foreign_key: true

      t.timestamps
    end
  end
end
