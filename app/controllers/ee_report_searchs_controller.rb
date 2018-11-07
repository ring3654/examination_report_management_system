class EeReportSearchsController < ApplicationController
  PER = 10


  def index
    @ee_reports = EeReport.all.page(params[:page]).per(PER)
  end

  def show
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
    render :index
  end

end
