class User < ActiveRecord::Base
	belongs_to :city
	belongs_to :locality
	has_many :properities
	has_one :profile
	has_many :reviews
	has_many :reviewee , through: :reviews
	has_many :reviews
	has_many :reviewer , through: :reviews
	has_many :propreview

	has_many :review_owners
	has_many :owners, through: :review_owners

	has_many :review_tenants
	has_many :tenants, through: :review_tenants

	#call Backs

	after_create :create_profile


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def is_admin?
		return true if self.role == "admin"
	end

	def is_tenant?
		return true if self.role == "tenant"
	end

	def is_owner?
		return true if self.role == "owner"
	end
end
