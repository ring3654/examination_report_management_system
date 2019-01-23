class ApplicationController < ActionController::Base
    def login_check
        #もし、sessionのログインIDがなかったら、
        if session[:login_id].blank?
        #ログイン画面に移動
          redirect_to welcome_login_path, notice: "ログインされてないか、セッションが切れています。再度ログインしてください。", layout: nil
        end
    end

    def authority_check
        authority = User.find_by(user_id: session[:login_id]).authority
        if authority == 2 || authority == 3
            flash[:error] = "あなたにはそのページにアクセスする権限がありません。"
            redirect_to home_top_path
        end
    end


    def before_controller_check
        @path = Rails.application.routes.recognize_path(request.referer)
    end

end
