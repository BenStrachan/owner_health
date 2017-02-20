class Profile < ApplicationRecord
  belongs_to :user

  def clean_address3
[street_address, city, state, postcode, country].compact.join(', ')
end

  geocoded_by :clean_address3
  after_validation :geocode

end
