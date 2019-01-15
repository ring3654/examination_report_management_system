class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :login_check
  before_action :before_controller_check, only: [:new, :edit, :copy]

  PER = 10
  # GET /users
  # GET /users.json
  def index
    @users = User.where(flg: 0).order(:user_id)
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
    @users = User.all.order(:user_id)
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
    #チェックしたユーザーのIDを入れるための「checked_data」という空の配列と、削除したユーザーをカウントするための変数「user_count」（初期値は0）を作成
     checked_data = []
     user_count = 0   
    #チェックボックスでチェックしたユーザーのIDが入っているparams[:deletes]が存在していれば、値（key）を取り出して「checked_data」に代入
    checked_data = params[:deletes].keys if params[:deletes].present?

    #「checked_data」の数字とUserモデルのidが一致するデータを取得
    user = User.where(id: checked_data)

    #もしユーザが更新出来たら
    if user.update_all(flg: 1)
      #user_countにchecked_dataの値の数を代入
       user_count = checked_data.size
    end

    #userのindexにredirect_toで画面遷移する。遷移後、「○件のユーザーを削除しました。」とメッセージが表示するようにする。
    redirect_to users_path, notice: "#{user_count}件のユーザーを削除しました。" 
  end
  # CSVインポートページの表示
  def bulk_new
  end

  def bulk_create
    user_count = import_users
    redirect_to users_path, notice: "#{user_count}件登録しました"
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

    def import_users
      # 登録処理前のレコード数
      current_user_count = ::User.count
      users = []
      u_id = User.maximum(:id) + 1
      # windowsで作られたファイルに対応するので、encoding: "SJIS"を付けている
      CSV.foreach(params[:users_file].tempfile.path, headers: true, encoding: "SJIS") do |row|
        users << User.new( user_id: "#{row["user_id"]}", name: "#{row["name"]}", password: "#{row["password"]}", flg: row["flg"] , annual: row["annual"], authority: row["authority"])
      end
      # importメソッドでバルクインサートできる
      ::User.import(users)
      # 何レコード登録できたかを返す
      ::User.count - current_user_count
    end
end
