class ReviewOwnersController < ApplicationController
  before_action :set_review_owner, only: [:show, :edit, :update, :destroy]

  # GET /review_owners
  # GET /review_owners.json
  def index
    @review_owners = ReviewOwner.all
  end

  # GET /review_owners/1
  # GET /review_owners/1.json
  def show
  end

  # GET /review_owners/new
  def new
    @review_owner = ReviewOwner.new
  end

  # GET /review_owners/1/edit
  def edit
  end

  # POST /review_owners
  # POST /review_owners.json
  def create
    @review_owner = ReviewOwner.new(review_owner_params)
    @review_owner.user_id = current_user.id
    respond_to do |format|
      if @review_owner.save
        format.html { redirect_to @review_owner, notice: 'Review owner was successfully created.' }
        format.json { render :show, status: :created, location: @review_owner }
      else
        format.html { render :new }
        format.json { render json: @review_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /review_owners/1
  # PATCH/PUT /review_owners/1.json
  def update
    respond_to do |format|
      if @review_owner.update(review_owner_params)
        format.html { redirect_to @review_owner, notice: 'Review owner was successfully updated.' }
        format.json { render :show, status: :ok, location: @review_owner }
      else
        format.html { render :edit }
        format.json { render json: @review_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /review_owners/1
  # DELETE /review_owners/1.json
  def destroy
    @review_owner.destroy
    respond_to do |format|
      format.html { redirect_to review_owners_url, notice: 'Review owner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote
    @review_owner = ReviewOwner.find(params[:id])
    @review_owner.upvote_by current_user
    redirect_to :back
  end
  def downvote
    @review_owner = ReviewOwner.find(params[:id])
    @review_owner.downvote_by current_user
    redirect_to :back
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review_owner
      @review_owner = ReviewOwner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_owner_params
      params.require(:review_owner).permit(:user_id, :owner_id, :review, :rating)
    end
end
