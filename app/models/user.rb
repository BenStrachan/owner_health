class User < ApplicationRecord
  has_many :appointment_types
  has_many :profiles
  has_many :patients
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

     def clean_address
   [street_address, city, state, postcode, country].compact.join(', ')
   end

     geocoded_by :clean_address
     after_validation :geocode
end
