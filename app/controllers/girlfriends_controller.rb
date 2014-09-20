class GirlfriendsController < ApplicationController
  before_action :set_girlfriend, only: [:show, :edit, :update, :destroy]

  # GET /girlfriends
  # GET /girlfriends.json
  def index
    @girlfriends = Girlfriend.all
  end

  # GET /girlfriends/1
  # GET /girlfriends/1.json
  def show
  end

  # GET /girlfriends/new
  def new
    @girlfriend = Girlfriend.new
  end

  # GET /girlfriends/1/edit
  def edit
  end

  # POST /girlfriends
  # POST /girlfriends.json
  def create
    @girlfriend = Girlfriend.new(girlfriend_params)

    respond_to do |format|
      if @girlfriend.save
        format.html { redirect_to @girlfriend, notice: 'Girlfriend was successfully created.' }
        format.json { render :show, status: :created, location: @girlfriend }
      else
        format.html { render :new }
        format.json { render json: @girlfriend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /girlfriends/1
  # PATCH/PUT /girlfriends/1.json
  def update
    respond_to do |format|
      if @girlfriend.update(girlfriend_params)
        format.html { redirect_to @girlfriend, notice: 'Girlfriend was successfully updated.' }
        format.json { render :show, status: :ok, location: @girlfriend }
      else
        format.html { render :edit }
        format.json { render json: @girlfriend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /girlfriends/1
  # DELETE /girlfriends/1.json
  def destroy
    @girlfriend.destroy
    respond_to do |format|
      format.html { redirect_to girlfriends_url, notice: 'Girlfriend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_girlfriend
      @girlfriend = Girlfriend.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def girlfriend_params
      params.require(:girlfriend).permit(:name, :fav_food, :meeting_place, :pet_peeve, :age, :turn_ons, :home_town, :hair_color, :hobby)
    end
end
