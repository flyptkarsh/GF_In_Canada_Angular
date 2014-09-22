class GirlfriendsController < ApplicationController
  protect_from_forgery :except => [ :create, :update, :destroy]
  # GET /girlfriends
  # GET /girlfriends.json
  def index
    render json: Girlfriend.all
  end

  # GET /girlfriends/1
  # GET /girlfriends/1.json
  def show
    render json: @girlfriend.to_json, status: 200 
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
    Girlfriend.delete(params[:id])
    respond_to do |format|
      format.html { redirect_to girlfriends_url, notice: 'Girlfriend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def girlfriend_params
      params.require(:girlfriend).permit(:name, :fav_food, :meeting_place, :pet_peeve, :age, :turn_ons, :home_town, :hair_color, :hobby)
    end
end
