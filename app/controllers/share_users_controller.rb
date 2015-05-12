class ShareUsersController < ApplicationController
  before_action :set_share_user, only: [:show, :edit, :update, :destroy]

  # GET /share_users
  # GET /share_users.json
  def index
    @share_users = ShareUser.all
  end

  # GET /share_users/1
  # GET /share_users/1.json
  def show
  end

  # GET /share_users/new
  def new
    @share_user = ShareUser.new
  end

  # GET /share_users/1/edit
  def edit
  end

  # POST /share_users
  # POST /share_users.json
  def create
    @share_user = ShareUser.new(share_user_params)

    respond_to do |format|
      if @share_user.save
        format.html { redirect_to @share_user, notice: 'Share user was successfully created.' }
        format.json { render :show, status: :created, location: @share_user }
      else
        format.html { render :new }
        format.json { render json: @share_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /share_users/1
  # PATCH/PUT /share_users/1.json
  def update
    respond_to do |format|
      if @share_user.update(share_user_params)
        format.html { redirect_to @share_user, notice: 'Share user was successfully updated.' }
        format.json { render :show, status: :ok, location: @share_user }
      else
        format.html { render :edit }
        format.json { render json: @share_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /share_users/1
  # DELETE /share_users/1.json
  def destroy
    @share_user.destroy
    respond_to do |format|
      format.html { redirect_to share_users_url, notice: 'Share user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def tracking
    @share_user = ShareUser.find(params[:id])

    ###### get bus nearest stop ######
    su_lat = @share_user.lat
    su_long = @share_user.long

    @stops = Stop.all
    dists=[]
    @stops.each { |stop|
      dists << {stop_id: stop.id, dist: ShareUser.gps2m(stop.lat, stop.long, qu_lat, qu_long)}
    }
    su_nearest = dists.sort{|left, right| left[:dist] <=> right[:dist]}.first



    prev = @share_user.curr_stop

    @share_user.update({lat: params[:lat], long: params[:long], prev_stop: prev, curr_stop: su_nearest[:stop_id]})
    if @share_user.save
      render json: [{success: 1}]
    else
      render json: [{success: 0, message: 'Sharing User could not be saved'}]
    end
  end

  def lets_share
    @my_vehicle = Vehicle.where("name= ? and plate_number= ?", params['vehicleName'], params['vehicleId'])
    @vehicle = @my_vehicle.first

    @share_user = @vehicle.share_users.build() if @vehicle

    if @share_user
      if @share_user.save
        render json: [{success: 1, id: @share_user.id}]
      else
        render json: [{success: 0, message: "Share user not saved"}]
      end
    else
      render json: [{success: 0, message: "vehicle not found"}]
    end

  end

  def real_coords
    @vehicle = Vehicle.find(params['busId'])  ### get vehicle id , not plate number
    @share_user = @vehicle.share_users.first

    ###### if any sharing user is sitting on that stop #####
    if @share_user

      ###### get user nearest stop ######

      qu_lat = params['lat']
      qu_long = params['long']

      @stops = Stop.all
      dists=[]
      @stops.each { |stop|
        dists << {stop_id: stop.id, dist: ShareUser.gps2m(stop.lat, stop.long, su_lat, su_long)}
      }
      qu_nearest = dists.sort{|left, right| left[:dist] <=> right[:dist]}.first

      ###### if bus is comming to user ###### 
      is_comming = true
      veh = @share_user.vehicle
      curr_stop_seq = veh.vehicle_stops.where("stop_id = ?", @share_user.current_stop).seq_num
      prev_stop_seq = veh.vehicle_stops.where("stop_id = ?", @share_user.prev_stop).seq_num
      
      @vehicle = Vehicle.find(params['busId'])
      qu_stop_seq = @vehicle.vehicle_stops.where("stop_id = ?", qu_nearest[:stop_id]).seq_num

      if (prev_stop_seq < current_stop_seq && current_stop_seq <= qu_stop_seq) || (prev_stop_seq > current_stop_seq && current_stop_seq >= qu_stop_seq)
        is_comming = true
      else
        is_comming = false
      end

      ##### 
      if (is_comming)

      else
        render json: [{sucess: 0, message: "Bus has gone"}]
      end
    else
      render json: [{ success: 0, message: "No SHARING USER found"}]
    end
    # if @share_user
    #   render json: @share_user
    # else
    #   render json: [{success: 0}]
    # end

  end

  def remove
    @share_user = ShareUser.find(params[:id])
    
    if @share_user.destroy
      render json: [{success: 1}]
    else
      render json: [{success: 1}]
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_share_user
      @share_user = ShareUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def share_user_params
      params.require(:share_user).permit(:driver)
    end
end
