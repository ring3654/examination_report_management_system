class ApplicationController < ActionController::Base
    def login_check
        #もし、sessionのログインIDがなかったら、
        if session[:login_id].blank?
        #ログイン画面に移動
        redirect_to welcome_login_path, notice: "ログインされてないか、セッションが切れています。再度ログインしてください。", layout: nil

        end
    end
end
