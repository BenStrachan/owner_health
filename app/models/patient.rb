class Patient < ApplicationRecord
  belongs_to :user

  def clean_address2
[street_address, city, state, postocde, country].compact.join(', ')
end

  geocoded_by :clean_address2
  after_validation :geocode

end
