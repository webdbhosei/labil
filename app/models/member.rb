class Member < ActiveRecord::Base
  has_many :messages
end
