class TrailsController < ApplicationController

  before_action :set_park

  before_action :authenticate_user!, except: [:index]

  #has_many :users, through: :reviews

  def index
    @trails = @park.trails
  end

  def show
    @trail = @park.trails.find(params[:id])
  end

  def new
    @trail = @park.trails.new
  end

  def create
    @trail = @park.trails.new(trail_params)
    if @trail.save
      redirect_to park_trails_path(@park), notice: 'Created a Trail'
    else
      render :new
    end
  end

  private

  def trail_params
    params.require(:trail).permit(:content, :email)
  end

    def set_park
    @park = Park.find(params[:park_id])
  end
end

#   # GET /trails
#   # GET /trails.json
#   def index
#     @trails = Park.all
#   end

#   # GET /trails/1
#   # GET /trails/1.json
#   def show
#   end

#   # GET /trails/new
#   def new
#     @trail = Trail.new
#   end

#   # GET /trails/1/edit
#   def edit
#   end

#   # POST /trails
#   # POST /trails.json
#   def create
#     @trail = Trail.new(trail_params)

#     respond_to do |format|
#       if @trail.save
#         format.html { redirect_to @trail, notice: 'Trail was successfully created.' }
#         format.json { render :show, status: :created, location: @trail }
#       else
#         format.html { render :new }
#         format.json { render json: @trail.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # PATCH/PUT /trails/1
#   # PATCH/PUT /trails/1.json
#   def update
#     respond_to do |format|
#       if @trail.update(trail_params)
#         format.html { redirect_to @trail, notice: 'Trail was successfully updated.' }
#         format.json { render :show, status: :ok, location: @trail }
#       else
#         format.html { render :edit }
#         format.json { render json: @trail.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # DELETE /trails/1
#   # DELETE /trails/1.json
#   def destroy
#     @trail.destroy
#     respond_to do |format|
#       format.html { redirect_to trails_url, notice: 'Trail was successfully destroyed.' }
#       format.json { head :no_content }
#     end
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_trail
#       @trail = Trail.find(params[:id])
#     end

#     # Never trust parameters from the scary internet, only allow the white list through.
#     def trail_params
#       params.require(:trail).permit(:name, :length, :diffculty, :rating)
#     end
