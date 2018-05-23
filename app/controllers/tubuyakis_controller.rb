class TubuyakisController < ApplicationController
  before_action :set_tubuyaki, only: [:show, :edit, :update, :destroy]

  # GET /tubuyakis
  # GET /tubuyakis.json
  def index
    @tubuyakis = Tubuyaki.all
    @tubuyaki = Tubuyaki.new
  end

def timeline
     @tubuyakis = Tubuyaki.eager_load(user: :inverse_follows).where(follows: { follower_id: current_user.id })
     @tubuyaki  = Tubuyaki.new
   end
  # GET /tubuyakis/1
  # GET /tubuyakis/1.json
  def show
  end

  # GET /tubuyakis/new
  def new
    @tubuyaki = Tubuyaki.new
  end

  # GET /tubuyakis/1/edit
  def edit
  end

  # POST /tubuyakis
  # POST /tubuyakis.json
  def create
    @tubuyaki = Tubuyaki.new(tubuyaki_params)
    @tubuyaki.user = current_user

    respond_to do |format|
      if @tubuyaki.save
        format.html { redirect_to tubuyakis_url, notice: 'Tweet was successfully created.' }
        format.json { render :show, status: :created, location: @tubuyaki }
      else
        @tubuyakis = Tubuyaki.all
        format.html { render :index }
        format.json { render json: @tubuyaki.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tubuyakis/1
  # PATCH/PUT /tubuyakis/1.json
  def update
    respond_to do |format|
      if @tubuyaki.update(tubuyaki_params)
        format.html { redirect_to @tubuyaki, notice: 'Tubuyaki was successfully updated.' }
        format.json { render :show, status: :ok, location: @tubuyaki }
      else
        format.html { render :edit }
        format.json { render json: @tubuyaki.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tubuyakis/1
  # DELETE /tubuyakis/1.json
  def destroy
    @tubuyaki.destroy
    respond_to do |format|
      format.html { redirect_to tubuyakis_url, notice: 'Tubuyaki was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tubuyaki
      @tubuyaki = Tubuyaki.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tubuyaki_params
      params.require(:tubuyaki).permit(:content, :image, :file)
    end
end
