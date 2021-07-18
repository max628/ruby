class Inquirydetail < ApplicationRecord
	has_many :inquiryreplies, dependent: :destroy
	belongs_to :user
	belongs_to :house
	validates :subject, :content, presence: true, allow_blank: false
end
