class Properity < ActiveRecord::Base
	belongs_to :locality
	belongs_to :city
	belongs_to :user
	belongs_to :profile
	has_many :propreviews
end
