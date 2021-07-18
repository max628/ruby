class CreateInquirydetails < ActiveRecord::Migration[5.2]
  def change
    create_table :inquirydetails do |t|
      t.text :content
      t.text :subject
      t.belongs_to :user, foreign_key: true
      t.belongs_to :house, foreign_key: true

      t.timestamps
    end
  end
end
