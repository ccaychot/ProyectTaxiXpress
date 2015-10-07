class TypeofvehiclesController < ApplicationController
  before_action :set_typeofvehicle, only: [:show, :edit, :update, :destroy]

  # GET /typeofvehicles
  # GET /typeofvehicles.json
  def index
    @typeofvehicles = Typeofvehicle.all
  end

  # GET /typeofvehicles/1
  # GET /typeofvehicles/1.json
  def show
  end

  # GET /typeofvehicles/new
  def new
    @typeofvehicle = Typeofvehicle.new
  end

  # GET /typeofvehicles/1/edit
  def edit
  end

  # POST /typeofvehicles
  # POST /typeofvehicles.json
  def create
    @typeofvehicle = Typeofvehicle.new(typeofvehicle_params)

    respond_to do |format|
      if @typeofvehicle.save
        format.html { redirect_to @typeofvehicle, notice: 'Typeofvehicle was successfully created.' }
        format.json { render :show, status: :created, location: @typeofvehicle }
      else
        format.html { render :new }
        format.json { render json: @typeofvehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typeofvehicles/1
  # PATCH/PUT /typeofvehicles/1.json
  def update
    respond_to do |format|
      if @typeofvehicle.update(typeofvehicle_params)
        format.html { redirect_to @typeofvehicle, notice: 'Typeofvehicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @typeofvehicle }
      else
        format.html { render :edit }
        format.json { render json: @typeofvehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typeofvehicles/1
  # DELETE /typeofvehicles/1.json
  def destroy
    @typeofvehicle.destroy
    respond_to do |format|
      format.html { redirect_to typeofvehicles_url, notice: 'Typeofvehicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typeofvehicle
      @typeofvehicle = Typeofvehicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def typeofvehicle_params
      params.require(:typeofvehicle).permit(:description)
    end
end
