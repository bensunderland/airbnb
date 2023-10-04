class Property < ApplicationRecord
    validates :name, presence: true 
    validates :address_1, presence: true
    validates :headline, presence: true 
    validates :description, presence: true 
    validates :city, presence: true 
    validates :state, presence: true
    validates :country, presence: true
    validates :zip_code, presence: true

    after_validation :geocode, if: -> { latitude.blank? && longitude.blank? }

    has_many :reviews, as: :reviewable

    geocoded_by :address 

    monetize :price_cents, allow_nill: true

    has_many_attached :images

    def address 
        [state, country].compact.join(', ')
    end

    def default_image
        images.first
    end
end
