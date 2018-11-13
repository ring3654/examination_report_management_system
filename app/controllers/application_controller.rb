class ApplicationController < ActionController::Base
    def login_check
        #もし、sessionのログインIDがなかったら、
        if session[:login_id].blank?
        #ログイン画面に移動
        redirect_to welcome_login_path, layout: nil
        end
    end
end
