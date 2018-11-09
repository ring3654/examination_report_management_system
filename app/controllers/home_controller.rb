class HomeController < ApplicationController
  def retrieval_top
  end
  
  def top
    @ee_reports = EeReport.where(approval_flg: 0)
    @et_reports = EtReport.where(approval_flg: 0)
  end

end
