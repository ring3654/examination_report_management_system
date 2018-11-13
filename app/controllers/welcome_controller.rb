class WelcomeController < ApplicationController
  def login
    session.clear if session.present?
     #ヘッダーを表示しない
    render layout: nil
  end

  def check
      @user_id = params[:user_id]
      password = params[:password]
      user = User.find_by(user_id: @user_id)
      logger.debug("=======1===========")
      if user.present?
         logger.debug("=======2===========")
        if user.authenticate("#{password}")
             session[:login_user] = user.name
             logger.debug("=======3===========")
             redirect_to home_top_path
        else
          flash[:error] = "パスワードが正しくありません。"
          render :login, layout: nil
        end
      else
        flash[:error] = "ユーザＩＤが正しくありません。"
        render :login, layout: nil
      end
  end

  def destroy
    # sessionを削除
    reset_session
    render :login, layout: nil
  end


  private
  def welcome_params
    params.require(:welcome).permit(:user_id, :password)
  end
end
