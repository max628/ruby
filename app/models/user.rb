class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable#, :validatable

  has_many :houses, dependent: :destroy
  has_many :companies, dependent: :destroy
  
  validates :name, :role, :email, :presence=>true

  validates_presence_of   :email, if: :email_required?
  #validates_uniqueness_of :email, allow_blank: true, if: :email_changed?
  validates_format_of     :email, with: /\A\S+@.+\.\S+\z/, allow_blank: true, if: :email_changed?

  validates_presence_of     :password, if: :password_required?
  validates_confirmation_of :password, if: :password_required?
  validates_length_of       :password, within: 6..128, allow_blank: true

  # [ ... ] The rest of your model stuff

  protected

  # From Devise module Validatable
  def password_required?
    !persisted? || !password.nil? || !password_confirmation.nil?
  end

  # From Devise module Validatable
  def email_required?
    true
  end

end