class EeReportSearchsController < ApplicationController
  def index
    @ee_reports = EeReport.all
  end

  def show
  end
end
