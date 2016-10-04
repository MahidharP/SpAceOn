class Profile < ActiveRecord::Base
	belongs_to :user
	has_many :properities
	has_one :profession
	has_many :review_tenants
end
