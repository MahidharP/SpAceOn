class Review < ActiveRecord::Base
	belongs_to :properity
	belongs_to :reviewer , :class_name => "User"
	belongs_to :reviewee , :class_name => "User"
end
