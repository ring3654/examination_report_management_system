class EeReportSearchsController < ApplicationController
  before_action :login_check
  # before_action :before_controller_check
  PER = 10


  def index
    @ee_reports = EeReport.where(approval_flg: 1)
  end

  def search
    @ee_reports = EeReport.all
    if params[:search][:school_name].present?
      @ee_reports = @ee_reports.where("school_name like '%" + params[:search][:school_name] + "%' ")    
    end
    if params[:search][:s_faculty_name].present?
      @ee_reports = @ee_reports.where("s_faculty_name like '%" + params[:search][:s_faculty_name] + "%' ")    
    end
    if params[:search][:street_address].present?
      @ee_reports = @ee_reports.where("street_address like '%" + params[:search][:street_address] + "%' ")    
    end
    @ee_reports = @ee_reports
    render :index
  end

end
