class Profile < ApplicationRecord
  belongs_to :user

  after_validation :geocode, if: -> { address.present? && latitude.blank? && longitude.blank? }

  geocoded_by :address 

  def address 
      [address_1, address_2, city, state, zip_code, country].compact.join(', ')
  end
end
