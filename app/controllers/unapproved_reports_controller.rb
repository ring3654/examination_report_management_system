class UnapprovedReportsController < ApplicationController
  def index
    @ee_reports = EeReport.where(approval_flg: 0)
    @et_reports = EtReport.where(approval_flg: 0)
  end

  def show
  end
end
