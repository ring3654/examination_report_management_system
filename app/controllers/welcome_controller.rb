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
      if user.present?
        if user.authenticate("#{password}")
             session[:login_id] = user.user_id
             session[:login_user] = user.name
             if user.authority == 1 or user.authority == 2
             redirect_to home_top_path
             else
              redirect_to home_retrieval_top_path
             end
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
