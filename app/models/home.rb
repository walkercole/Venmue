class Home < ApplicationRecord
	geocoded_by :location
	after_validation :geocode
end