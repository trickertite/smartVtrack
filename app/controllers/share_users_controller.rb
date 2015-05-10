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