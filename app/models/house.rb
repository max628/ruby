class House < ApplicationRecord
  belongs_to :user
  belongs_to :company
  has_many :inquirydetails, dependent: :destroy
  has_many :potentialbuyers, dependent: :destroy
  validates :sqft, :location, :address, :style, :floors, :price, :basement, presence: true, allow_blank: false
end