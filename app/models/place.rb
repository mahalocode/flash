class Place < ActiveRecord::Base
  
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  
  validates :name, length: {minimum: 3 }, :presence => true
  validates :address, length: {minimum: 3 } 
  validates :description, length: {minimum: 3, maximum: 50, too_long: "#{50} characters is the maximum allowed"}, presence: true
end
