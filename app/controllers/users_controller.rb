class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :login_check
  PER = 10
  # GET /users
  # GET /users.json
  def index
    @users = User.all.order(:user_id).page(params[:page]).per(PER)
    @name = ""
    @annual = ""
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

  def search
    @users = User.all.order(:user_id).page(params[:page]).per(PER)
    if params[:search][:annual].present?
      @users = @users.where("annual like '%" + params[:search][:annual] + "%' ").order(:user_id)      
    end
    if params[:search][:name].present?
      @users = @users.where("name like '%" + params[:search][:name] + "%' ").order(:user_id)
  end
    @name = params[:search][:name]
    @annual = params[:search][:annual]
    render :index
  end

  def copy
    old_user = User.find(params[:id])
    @user = User.new(old_user.attributes)
    render :new
    end
  def destroy
    @user.flg = 1
    if @user.update
      format.html { redirect_to @user, notice: 'ユーザーの削除が完了しました。' }
    else
      format.html { render :index }
    end
  end

    def destroy_all
      #�`�F�b�N�������[�U�[��ID�����邽�߂́uchecked_data�v�Ƃ�����̔z��ƁA�폜�������[�U�[���J�E���g���邽�߂̕ϐ��uuser_count�v�i�����l��0�j���쐬
  
      #�`�F�b�N�{�b�N�X�Ń`�F�b�N�������[�U�[��ID�������Ă���params[:deletes]�����݂��Ă���΁A�l�ikey�j�����o���āuchecked_data�v�ɑ��
      checked_data = params[:deletes].keys if params[:deletes].present?
  
      #�uchecked_data�v�̐�����User���f����id����v����f�[�^���擾
      user = User.where(id: checked_data)
  
      #�������[�U���X�V�o������
      if user.update_all(flg: 1)
        #user_count��checked_data�̒l�̐�����
  
      end
  
      #user��index��redirect_to�ŉ�ʑJ�ڂ���B�J�ڌ�A�u�����̃��[�U�[���폜���܂����B�v�ƃ��b�Z�[�W���\������悤�ɂ���B
  
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
