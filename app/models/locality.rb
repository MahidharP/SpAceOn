class Locality < ActiveRecord::Base
	belongs_to :city
	has_many :properities
	validates_presence_of :name
	has_many :users 
end
