class ProperitiesController < ApplicationController
	before_action :authenticate_user!
	load_and_authorize_resource 
	def index
		if params[:locality_id]
			@properities = Properity.where('locality_id = ?', params[:locality_id])
		elsif params[:price]
			@properities = @price = Properity.where('price >= ? AND price <= ?', params[:min_price], params[:max_price])
		elsif params[:area]
			@properities = @area = Properity.where('area >= ? AND area <= ?', params[:min_area], params[:max_area])
		else 
		@properities = (current_user.is_admin? || current_user.is_tenant?) ? Properity.all : current_user.properities 
		@properity = Properity.new
	end 
	end
	def new
		@properity = Properity.new
	end 
	def create
		@properity = Properity.new(properity_params)
		@properity.user_id = current_user.id
		if @properity.save
			redirect_to properities_path
		else 
			render action: "new"
		end 
	end 
	
		def show 
			begin  
				@properity = Properity.find(params[:id])
				@propreview = Propreview.new
				@review_owner = ReviewOwner.new
			rescue ActiveRecord::RecordNotFound
				redirect_to properities_path, notice: "You Have No Authorization To Access This Page"
			end 
		end 
		def edit 
			@properity = Properity.find(params[:id])
		end
		def update
			@properity = Properity.find(params[:id])
			if @properity.update_attributes(properity_params)
				redirect_to properity_path(@properity.id), notice: "Successfully Updated"
			else 
				render action: "edit"
			end 
		end  
		def destroy
			@properity = Properity.find(params[:id])
			@properity.destroy 
			redirect_to properities_path, notice: "Successfully deleted #{@properity.name}"
		end 
		def by_price_range
			@properities = Properity.where('price >= ? AND price <= ?', params[:min_price], params[:max_price])
		end 
		def by_area
			@properities = Properity.where('area >= ? AND area <= ?', params[:min_area], params[:max_area])
		end 
	
		private
		def properity_params
			params[:properity].permit(:user_id, :name, :address, :locality_id, :city_id, :properity_type, :area, :price, :advance_amount, :description, :availability, :image_url)
		end  
end
