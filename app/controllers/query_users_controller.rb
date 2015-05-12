class QueryUsersController < ApplicationController
  before_action :set_query_user, only: [:show, :edit, :update, :destroy]

  # GET /query_users
  # GET /query_users.json
  def index
    @query_users = QueryUser.all
  end

  # GET /query_users/1
  # GET /query_users/1.json
  def show
  end

  # GET /query_users/new
  def new
    @query_user = QueryUser.new
  end

  # GET /query_users/1/edit
  def edit
  end

  # POST /query_users
  # POST /query_users.json
  def create
    @query_user = QueryUser.new(query_user_params)

    respond_to do |format|
      if @query_user.save
        format.html { redirect_to @query_user, notice: 'Query user was successfully created.' }
        format.json { render :show, status: :created, location: @query_user }
      else
        format.html { render :new }
        format.json { render json: @query_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /query_users/1
  # PATCH/PUT /query_users/1.json
  def update
    respond_to do |format|
      if @query_user.update(query_user_params)
        format.html { redirect_to @query_user, notice: 'Query user was successfully updated.' }
        format.json { render :show, status: :ok, location: @query_user }
      else
        format.html { render :edit }
        format.json { render json: @query_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /query_users/1
  # DELETE /query_users/1.json
  def destroy
    @query_user.destroy
    respond_to do |format|
      format.html { redirect_to query_users_url, notice: 'Query user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def qnear_stops
    ### find stops near to querying users #####
    qu_lat = params['lat']
    qu_long = params['long']
    @stops = Stop.all
    dists=[]
    @stops.each { |stop|
      dists << {stop_id: stop.id, dist: ShareUser.gps2m(stop.lat, stop.long, qu_lat, qu_long), stop_name: stop.name}
    }
    su_nearest = dists.sort{|left, right| left[:dist] <=> right[:dist]}
    render json: su_nearest
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_query_user
      @query_user = QueryUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def query_user_params
      params.require(:query_user).permit(:name, :password, :email, :mobile)
    end
end
