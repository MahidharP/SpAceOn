class PropreviewsController < ApplicationController
  before_action :set_propreview, only: [:show, :edit, :update, :destroy]

  # GET /propreviews
  # GET /propreviews.json
  def index
    @propreviews = Propreview.all
  end

  # GET /propreviews/1
  # GET /propreviews/1.json
  def show
  end

  # GET /propreviews/new
  def new
    @propreview = Propreview.new
  end

  # GET /propreviews/1/edit
  def edit
  end

  # POST /propreviews
  # POST /propreviews.json
  def create
    @propreview = Propreview.new(propreview_params)
    @propreview.user_id = current_user.id
    respond_to do |format|
      if @propreview.save
        format.html { redirect_to properity_path(@propreview.properity_id), notice: 'Propreview was successfully created.' }
        format.json { render :show, status: :created, location: @propreview }
      else
        format.html { render :new }
        format.json { render json: @propreview.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /propreviews/1
  # PATCH/PUT /propreviews/1.json
  def update
    respond_to do |format|
      if @propreview.update(propreview_params)
        format.html { redirect_to @propreview, notice: 'Propreview was successfully updated.' }
        format.json { render :show, status: :ok, location: @propreview }
      else
        format.html { render :edit }
        format.json { render json: @propreview.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /propreviews/1
  # DELETE /propreviews/1.json
  def destroy
    @propreview.destroy
    respond_to do |format|
      format.html { redirect_to propreviews_url, notice: 'Propreview was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_propreview
      @propreview = Propreview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def propreview_params
      params.require(:propreview).permit(:user_id, :properity_id, :rating, :rev_desc)
    end
end
