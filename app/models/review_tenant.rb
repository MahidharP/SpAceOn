class ReviewTenant < ActiveRecord::Base
	belongs_to :user
	belongs_to :tenant, class: 'User'
	belongs_to :profile
end
