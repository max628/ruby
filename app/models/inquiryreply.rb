class Inquiryreply < ApplicationRecord
  belongs_to :inquirydetail
  belongs_to :user
  belongs_to :house
  validates :reply, presence: true, allow_blank: false
end
