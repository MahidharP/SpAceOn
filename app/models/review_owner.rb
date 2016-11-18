class ReviewOwner < ActiveRecord::Base
	#acts_as_votable

	belongs_to :user
	belongs_to :owner, class: 'User'
end
