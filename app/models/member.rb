class Member < ActiveRecord::Base
  has_one :user

  has_many :statuses
  has_many :locations, through: :statuses
end
