class LocalitiesController < ApplicationController
	before_filter :authenticate_user!
	load_and_authorize_resource
	def index
		@localities = Locality.all
		@locality = Locality.new
	end 

def new
	@locality = Locality.new
end 
def create
	@locality = Locality.new(locality_params)
	
	if @locality.save
		redirect_to localities_path
	else 
		render action: "new"
	end 
end 

def show 
	@locality = Locality.find(params[:id])
end 
def edit 
	@locality = Locality.find(params[:id])
end
def update
	@locality = Locality.find(params[:id])
	if @locality.update_attributes(locality_params)
		redirect_to locality_path(@locality.id), notice: "Successfully Updated"
	else 
		render action: "edit"
	end 
end  
def destroy
	@locality = Locality.find(params[:id])
	@locality.destroy 
	redirect_to localities_path, notice: "Successfully deleted #{@locality.name}"
end 

private
def locality_params
	params[:locality].permit(:city_id, :name)
end  
end 


