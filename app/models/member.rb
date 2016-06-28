class Member < ActiveRecord::Base
  has_one :user

  has_many :statuses
  has_many :locations, through: :statuses

  has_many :messages

  has_secure_password
  validates :password, length: {is:4}
end
