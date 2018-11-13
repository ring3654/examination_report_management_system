class EeReportsController < ApplicationController
  before_action :set_ee_report, only: [:show, :edit, :update, :destroy]

  PER = 10
  # GET /ee_reports
  # GET /ee_reports.json
  def index
    @ee_reports = EeReport.all.page(params[:page]).per(PER)
  end

  # GET /ee_reports/1
  # GET /ee_reports/1.json
  def show
  end

  # GET /ee_reports/new
  def new
    @ee_report = EeReport.new
  end

  # GET /ee_reports/1/edit
  def edit
  end

  # POST /ee_reports
  # POST /ee_reports.json
  def create
    @ee_report = EeReport.new(ee_report_params)
    
    if params[:ee_report][:g_q_image].present?
      @ee_report.g_q_image = params[:ee_report][:g_q_image].original_filename
  
      File.open("public/images/#{@ee_report.g_q_image}",'wb') { |f|f.write(params[:ee_report][:g_q_image].read)}
    end  

  if params[:ee_report][:i_q_images].present?
    @ee_report.i_q_images = params[:ee_report][:i_q_images].original_filename

    File.open("public/images/#{@ee_report.i_q_images}",'wb') { |f|f.write(params[:ee_report][:i_q_images].read)}
  end
    respond_to do |format|
      if @ee_report.save
        format.html { redirect_to @ee_report, notice: 'Ee report was successfully created.' }
        format.json { render :show, status: :created, location: @ee_report }
      else
        format.html { render :new }
        format.json { render json: @ee_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ee_reports/1
  # PATCH/PUT /ee_reports/1.json
  def update
    if params[:ee_report][:g_q_image].present?
      @ee_report.g_q_image = params[:ee_report][:g_q_image].original_filename

      File.open("public/images/#{@ee_report.g_q_image}",'wb') { |f|f.write(params[:ee_report][:g_q_image].read)}
    end  

    if params[:ee_report][:i_q_images].present?
      @ee_report.i_q_images = params[:ee_report][:i_q_images].original_filename
  
      File.open("public/images/#{@ee_report.i_q_images}",'wb') { |f|f.write(params[:ee_report][:i_q_images].read)}
    end
    params[:ee_report][:g_q_image] = params[:ee_report][:g_q_image].original_filename
    params[:ee_report][:i_q_images] = params[:ee_report][:i_q_images].original_filename

    respond_to do |format|
      if @ee_report.update(ee_report_params)
        format.html { redirect_to @ee_report, notice: 'Ee report was successfully updated.' }
        format.json { render :show, status: :ok, location: @ee_report }
      else
        format.html { render :edit }
        format.json { render json: @ee_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ee_reports/1
  # DELETE /ee_reports/1.json
  def destroy
    @ee_report.destroy
    respond_to do |format|
      format.html { redirect_to ee_reports_url, notice: 'Ee report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ee_report
      @ee_report = EeReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ee_report_params
      params.require(:ee_report).permit(:reporting_date, :student_class, :student_number, :student_id, :school_name, :s_faculty_name, :s_department_name, :s_course_name, :test_day, :postal_code, :street_address, :examination_hall, :result_publication_date, :entrance_form, :recommended_group,:t_subject_japanese,:t_subject_math,:t_subject_society,:t_subject_science,:t_subject_english,:t_subject_other,:t_subject_other_time,:g_q_contents,:g_q_image,:g_impressions,:recommended_form,:i_q_contents,:i_q_images,:e_contents,:w_contents,:r_impression,:approval_flg)
    end
end
