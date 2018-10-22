class EtReportSearchsController < ApplicationController
  def index
    @et_reports = EtReport.all
  end

  def show
  end
end
