class ParksController < ApplicationController

  def index
    @parks = Park.all
  end

  def show
    @park = Park.find(params[:id])
  end

  def new
    @park = Park.new
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

  private

  def park_params
    params.require(:park).permit(:name, :city, :state, :region, :dogs, :hikes)
  end
end
