class UserController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  def index
    @user = User.all
  end

  # GET /user/1
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User successfully created !!! :)  ' }
#       format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
#       format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
         format.html { redirect_to @user, notice: 'User was successfully updated!!! :) ' }
#        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
#       format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  def destroy
    @auser.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
#     format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :email, :bio)
    end
end
