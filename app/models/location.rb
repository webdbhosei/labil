class Location < ActiveRecord::Base
  has_many :statuses 
  has_many :members, through: :statuses
end
