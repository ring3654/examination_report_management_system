class EtReportSearchsController < ApplicationController
  before_action :login_check
  before_action :before_controller_check
  PER = 10


  def index
    @et_reports = EtReport.where(approval_flg: 1)
  end


  def search
    @et_reports = EtReport.all
    if params[:search][:office_name].present?
      @et_reports = @et_reports.where("office_name like '%" + params[:search][:office_name] + "%' ")    
    end
    if params[:search][:job_category].present?
      @et_reports = @et_reports.where("job_category like '%" + params[:search][:job_category] + "%' ")    
    end
    if params[:search][:job_vote_number].present?
      @et_reports = @et_reports.where("job_vote_number like '%" + params[:search][:job_vote_number] + "%' ")    
    end
    if params[:search][:street_address].present?
      @et_reports = @et_reports.where("street_address like '%" + params[:search][:street_address] + "%' ")    
    end
    @et_reports = @et_reports
    render :index
  end

end
