class ParksController < ApplicationController

before_action :authenticate_user!, except: [:index]
before_action :set_park, only: [:show, :edit, :update, :destroy]

  def index
    @parks = Park.all
  end

  def show
  end

  def new
    @park = Park.new
  end

  def edit
  end

  def create
    @park = Park.new(park_params)

    respond_to do |format|
      if @park.save
        format.html { redirect_to @park, notice: 'Park was successfully created.' }
        format.json { render :show, status: :created, location: @park }
      else
        format.html { render :new }
        format.json { render json: @park.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @park.update(park_params)
        format.html { redirect_to @park, notice: 'Park was successfully updated.' }
        format.json { render :show, status: :ok, location: @park }
      else
        format.html { render :edit }
        format.json { render json: @park.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @park.destroy
    respond_to do |format|
      format.html { redirect_to parks_url, notice: 'Park was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_park
    @park = Park.find(params[:id])
  end

  def park_params
    params.require(:park).permit(:name, :city, :state, :region, :dogs, :hikes)
  end
end
