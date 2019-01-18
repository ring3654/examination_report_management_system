class EtReportsController < ApplicationController
  before_action :set_et_report, only: [:show, :edit, :update, :destroy]
  before_action :login_check
  before_action :before_controller_check, only: [:show]
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
    @et_report = EtReport.new(student_id:session[:login_id])
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

  def output
    et_report = EtReport.find(params[:output_id])
    # ThinreportsでPDFを作成
    # Editorで作ったtlfファイルを読み込む
    # 1ページ目
    report = Thinreports::Report.new(layout: "#{Rails.root}/app/views/et_reports/就職試験報告書_表.tlf")
    report.start_new_page
    report.page.item(:reporting_date).value(et_report.reporting_date.strftime("%Y年%m月%d日") )
    report.page.item(:student_class).value(et_report.student_class)
    report.page.item(:student_number).value(et_report.student_number)
    report.page.item(:student_id).value(et_report.student_id)
    report.page.item(:office_name).value(et_report.office_name)
    report.page.item(:job_category).value(et_report.job_category)
    report.page.item(:job_vote_number).value(et_report.job_vote_number)
    case et_report.introduction_number 
    when 1 
      introduction = "学校斡旋"
    when 2 
      introduction = "縁故"
    end
    report.page.item(:introduction_number).value(introduction)
    report.page.item(:street_address).value(et_report.street_address)
    report.page.item(:test_day).value(et_report.test_day.strftime("%Y年%m月%d日") )
    report.page.item(:examination_hall).value(et_report.examination_hall)
    report.page.item(:examinees_count_man).value(et_report.examinees_count_man)
    report.page.item(:examinees_count_woman).value(et_report.examinees_count_woman)
    report.page.item(:examinees_count_total).value("#{et_report.examinees_count_man + et_report.examinees_count_woman}")
    case et_report.selection_method
    when 1 
      selection = "一次"
    when 2
      selection = "二次"
    end
    report.page.item(:selection_method).value(selection)
    case et_report.s_method_writing
    when true
      writing = "有"
    when false
      writing = "無"
    end  
    report.page.item(:s_method_writing).value(writing)
    case et_report.s_method_appropriate
    when true
      appropriate = "有"
    when false 
      appropriate = "無"
    end
    report.page.item(:s_method_appropriate).value(appropriate)
    case et_report.s_method_interview
    when true
      interview = "有"
    when false 
      interview = "無"
    end
    report.page.item(:s_method_interview).value(interview)
    case et_report.s_method_composition
    when true
      composition = "有"
    when false
      composition = "無"
    end
    report.page.item(:s_method_composition).value(composition)
    case et_report.s_method_physical
    when true
      physical = "有"
    when false
      physical = "無"
    end
    report.page.item(:s_method_physical).value(physical)
    case et_report.s_method_other
    when true
      other = "有"
    when false
      other = "無"
    end
    report.page.item(:s_method_other).value(other)
    report.page.item(:t_subject_japanese).value(et_report.t_subject_japanese)
    report.page.item(:t_subject_math).value(et_report.t_subject_math)
    report.page.item(:t_subject_society).value(et_report.t_subject_society)
    report.page.item(:t_subject_science).value(et_report.t_subject_science)
    report.page.item(:t_subject_english).value(et_report.t_subject_english)
    report.page.item(:t_subject_other_name).value(et_report.t_subject_other_name)
    report.page.item(:t_subject_other_time).value(et_report.t_subject_other_time)
    report.page.item(:t_subject_general).value(et_report.t_subject_general)
    report.page.item(:t_subject_aptitude).value(et_report.t_subject_aptitude)
    case et_report.i_method_one
    when 1
      method_one = "1人"
    when 2
      method_one = "複数(#{et_report.i_method_count})人"
    when 3
      method_one = "集団討論"
    end
    report.page.item(:i_method_one).value(method_one)
    report.page.item(:judge_count).value(et_report.judge_count)
    report.page.item(:i_time).value(et_report.i_time)
    report.page.item(:i_other).value(et_report.i_other)
    report.page.item(:i_contents).value(et_report.i_contents)
    report.page.item(:i_image).value("#{Rails.root}/public/images/#{et_report.i_image}")
    report.page.item(:composition_title).value(et_report.composition_title)
    report.page.item(:c_sheet_count).value(et_report.c_sheet_count)

   #2ページ目
   report.start_new_page layout: "#{Rails.root}/app/views/et_reports/就職試験報告書_裏.tlf"
   report.page.item(:writing_test_contents).value(et_report.writing_test_contents)
   report.page.item(:other_coment).value(et_report.other_coment)
    
    # PDFファイルのバイナリデータを生成する
    file = report.generate
      # ブラウザでPDFを表示させたい場合
    # パラメタのdisposition: "inline" をつけない場合は、PDFがダウンロードされる
    send_data(
      file,
      filename: "就職試験報告書_#{et_report.office_name}.pdf",
      type: "application/pdf"
      )
  end

  def approval
    et_report = EtReport.find(params[:approval_id])
    et_report.update(approval_flg: 1)
    redirect_to unapproved_reports_index_path, notice: "承認しました。" 
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
