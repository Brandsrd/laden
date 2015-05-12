class AanbiedersController < ApplicationController
  before_action :set_aanbieder, only: [:show, :edit, :update, :destroy]

  # GET /aanbieders
  # GET /aanbieders.json
  def index
    @aanbieders = Aanbieder.all
  end

  # GET /aanbieders/1
  # GET /aanbieders/1.json
  def show
  end

  # GET /aanbieders/new
  def new
    @aanbieder = Aanbieder.new
  end

  # GET /aanbieders/1/edit
  def edit
  end

  # POST /aanbieders
  # POST /aanbieders.json
  def create
    @aanbieder = Aanbieder.new(aanbieder_params)

    respond_to do |format|
      if @aanbieder.save
        format.html { redirect_to @aanbieder, notice: 'Aanbieder was successfully created.' }
        format.json { render :show, status: :created, location: @aanbieder }
      else
        format.html { render :new }
        format.json { render json: @aanbieder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aanbieders/1
  # PATCH/PUT /aanbieders/1.json
  def update
    respond_to do |format|
      if @aanbieder.update(aanbieder_params)
        format.html { redirect_to @aanbieder, notice: 'Aanbieder was successfully updated.' }
        format.json { render :show, status: :ok, location: @aanbieder }
      else
        format.html { render :edit }
        format.json { render json: @aanbieder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aanbieders/1
  # DELETE /aanbieders/1.json
  def destroy
    @aanbieder.destroy
    respond_to do |format|
      format.html { redirect_to aanbieders_url, notice: 'Aanbieder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aanbieder
      @aanbieder = Aanbieder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aanbieder_params
      params.require(:aanbieder).permit(:naam, :automerk, :stroom, :prijs)
    end
end
