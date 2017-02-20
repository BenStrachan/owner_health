class Availability < ApplicationRecord
  belongs_to :user

  def clean_address4
[street_address, city, state, postcode, country].compact.join(', ')
end

  geocoded_by :clean_address4
  after_validation :geocode

end
