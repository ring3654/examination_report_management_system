class EtReportsController < ApplicationController
  before_action :set_et_report, only: [:show, :edit, :update, :destroy]
  before_action :login_check

  # GET /et_reports
  # GET /et_reports.json
  def index
    @et_reports = EtReport.all
  end

  # GET /et_reports/1
  # GET /et_reports/1.json
  def show
  end

  # GET /et_reports/new
  def new
    @et_report = EtReport.new
  end

  # GET /et_reports/1/edit
  def edit
  end

  # POST /et_reports
  # POST /et_reports.json
  def create
    @et_report = EtReport.new(et_report_params)
    if params[:et_report][:i_image].present?
        @et_report.i_image = params[:et_report][:i_image].original_filename
        
        File.open("public/images/#{@et_report.i_image}",'w+b') { |f|
        f.write(params[:et_report][:i_image].read)}
    end
            
    respond_to do |format|
      if @et_report.save
        format.html { redirect_to @et_report, notice: 'Et report was successfully created.' }
        format.json { render :show, status: :created, location: @et_report }
      else
        format.html { render :new }
        format.json { render json: @et_report.errors, status: :unprocessable_entity }
      end
    end
  end




  # PATCH/PUT /et_reports/1
  # PATCH/PUT /et_reports/1.json
  def update
    if params[:et_report][:i_image].present?
        @et_report.i_image = params[:et_report][:i_image].original_filename
        
        File.open("public/images/#{@et_report.i_image}",'w+b') { |f|
        f.write(params[:et_report][:i_image].read)}
    end
    params[:et_report][:i_image] = params[:et_report][:i_image].original_filename

    respond_to do |format|
      if @et_report.update(et_report_params)
        format.html { redirect_to @et_report, notice: '更新が完了しました。' }
        format.json { render :show, status: :ok, location: @et_report }
      else
        format.html { render :edit }
        format.json { render json: @et_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /et_reports/1
  # DELETE /et_reports/1.json
  def destroy
    @et_report.destroy
    respond_to do |format|
      format.html { redirect_to et_reports_url, notice: '削除が完了しました。' }
      format.json { head :no_content }
    end
  end

  def copy
    old_et_report = EtReport.find(params[:id])
    @et_report = Etreport.new(old_et_report.attributes)
    render :new
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_et_report
      @et_report = EtReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def et_report_params
      params.require(:et_report).permit(:reporting_date, :student_class, :student_number, :student_id, :job_category, :office_name, :job_vote_number, :introduction_number, :test_day, :postal_code, :street_address, :examination_hall, :examinees_count_man, :examinees_count_woman, :selection_method, :s_method_writing, :s_method_appropriate, :s_method_interview, :s_method_composition, :s_method_physical, :s_method_other, :t_subject_japanese, :t_subject_math, :t_subject_society, :t_subject_science, :t_subject_english, :t_subject_other_name, :t_subject_other_time, :t_subject_general, :t_subject_aptitude, :i_method_one, :i_method_count, :judge_count, :i_time, :i_other, :i_contents, :i_image, :composition_title, :c_sheet_count, :writing_test_contents, :other_coment,:approval_flg)
    end
end
