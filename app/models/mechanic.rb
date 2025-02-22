class Mechanic < ApplicationRecord
  has_and_belongs_to_many :rides

  def self.average_experience
    Mechanic.all.average(:years_experience)
  end

  def rides_working_on
    rides.where(open: true).order(thrill_rating: :desc)
  end
end
