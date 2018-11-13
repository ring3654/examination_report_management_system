class HomeController < ApplicationController
  def retrieval_top
  end
  
  def top
    @ee_reports = EeReport.where(student_id: session[:login_id],approval_flg: 0)
    @et_reports = EtReport.where(student_id: session[:login_id],approval_flg: 0)

  end

end
