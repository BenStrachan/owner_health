class Patient < ApplicationRecord
  has_many :treatment_notes
  belongs_to :user

  def clean_address2
[street_address, city, state, postocde, country].compact.join(', ')
end

  geocoded_by :clean_address2
  after_validation :geocode

end
