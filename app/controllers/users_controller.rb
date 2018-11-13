class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :login_check
  PER = 10
  # GET /users
  # GET /users.json
  def index
    @users = User.all.order(:user_id).page(params[:page]).per(PER)
  end

  # GET /users/1
  # GET /users/1.json
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
  # POST /users.json
  def create
    @user = User.new(user_params)
    @user.annual = @user.user_id.slice(1..4)
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'ユーザーの作成が完了しました。' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user.annual = @user.user_id.slice(1..4)
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'ユーザーの更新が完了しました。' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'ユーザーを削除しました。' }
      format.json { head :no_content }
    end
  end

  def search
    @users = User.all.order(:user_id).page(params[:page]).per(PER)
    if params[:search][:annual].present?
      @users = @users.where("annual like '%" + params[:search][:annual] + "%' ").order(:user_id)      
    end
    if params[:search][:name].present?
      @users = @users.where("name like '%" + params[:search][:name] + "%' ").order(:user_id)
  end
    render :index
  end

  def copy
    old_user = User.find(params[:id])
    @user = User.new(old_user.attributes)
    render :new
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:user_id, :name, :password, :password_confirmation, :flg, :annual, :authority)
    end
end
