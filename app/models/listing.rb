# == Schema Information
#
# Table name: listings
#
#  id                 :integer          not null, primary key
#  title              :string
#  street_address     :string
#  city               :string
#  country_code       :string
#  bed_count          :integer
#  bedroom_count      :integer
#  bathroom_count     :integer
#  description        :text
#  night_fee_cents    :integer
#  cleaning_fee_cents :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  host_id            :integer
#  latitude           :decimal(10, 6)
#  longitude          :decimal(10, 6)
#

# require 'money'

class Listing < ApplicationRecord
    include ImageUploader::Attachment.new(:photo)
    
    validates :title, presence: true
    validates :street_address, presence: true
    validates :city, presence: true
    validates :country_code, presence: true
    validates :country, presence: {  # Validates country method in this model
        message: -> (listing, data) {"No country for code : #{listing.country_code}" }
    }
    validates :bed_count, numericality: { greater_than: 0 }
    
    validates :country_code, presence: true

    geocoded_by :full_address
    after_validation :geocode
    has_many :photos
    # accepts_nested_attributes_for :photos
    
    def country
        ISO3166::Country.new(country_code.upcase)
    end

    def full_address
        return nil if country.nil?
        "#{street_address}, #{city}, #{country.name}"
    end
    
end
