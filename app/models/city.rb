class City < ActiveRecord::Base
	has_many :localities
	validates_presence_of :name
	has_many :users
	has_many :properities
end
