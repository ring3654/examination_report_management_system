class HomeController < ApplicationController
  before_action :login_check
  # before_action :before_controller_check

  def retrieval_top
      @user_authority = User.find_by(user_id: session[:login_id]).authority
  end
  
  def top
    @ee_reports = EeReport.where(student_id: session[:login_id],approval_flg: 0)
    @et_reports = EtReport.where(student_id: session[:login_id],approval_flg: 0)
    @user_authority = User.find_by(user_id: session[:login_id]).authority
  end

end
