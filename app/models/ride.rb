class Ride < ApplicationRecord
  has_and_belongs_to_many :mechanics
end
