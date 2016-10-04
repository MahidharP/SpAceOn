class ReviewTenantsController < ApplicationController
  before_action :set_review_tenant, only: [:show, :edit, :update, :destroy]

  # GET /review_tenants
  # GET /review_tenants.json
  def index
    @review_tenants = ReviewTenant.all
  end

  # GET /review_tenants/1
  # GET /review_tenants/1.json
  def show
  end

  # GET /review_tenants/new
  def new
    @review_tenant = ReviewTenant.new
  end

  # GET /review_tenants/1/edit
  def edit
  end

  # POST /review_tenants
  # POST /review_tenants.json
  def create
    @review_tenant = ReviewTenant.new(review_tenant_params)
    @review_tenant.user_id = current_user.id
    respond_to do |format|
      if @review_tenant.save
        format.html { redirect_to @review_tenant, notice: 'Review tenant was successfully created.' }
        format.json { render :show, status: :created, location: @review_tenant }
      else
        format.html { render :new }
        format.json { render json: @review_tenant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /review_tenants/1
  # PATCH/PUT /review_tenants/1.json
  def update
    respond_to do |format|
      if @review_tenant.update(review_tenant_params)
        format.html { redirect_to @review_tenant, notice: 'Review tenant was successfully updated.' }
        format.json { render :show, status: :ok, location: @review_tenant }
      else
        format.html { render :edit }
        format.json { render json: @review_tenant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /review_tenants/1
  # DELETE /review_tenants/1.json
  def destroy
    @review_tenant.destroy
    respond_to do |format|
      format.html { redirect_to review_tenants_url, notice: 'Review tenant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review_tenant
      @review_tenant = ReviewTenant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_tenant_params
      params.require(:review_tenant).permit(:user_id, :tenant_id, :review, :rating)
    end
end
