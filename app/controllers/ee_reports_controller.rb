class EeReportsController < ApplicationController
  before_action :set_ee_report, only: [:show, :edit, :update, :destroy]
  before_action :login_check
  before_action :before_controller_check, only: [:show]

  PER = 10
  # GET /ee_reports
  # GET /ee_reports.json
  def index
    @ee_reports = EeReport.all
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
    
  def copy
    old_ee_report = EeReport.find(params[:id])
    @ee_report = EeReport.new(old_ee_report.attributes)
    render :new
  end
  
  def output
    # ThinreportsでPDFを作成
    # Editorで作ったtlfファイルを読み込む
    # 1ページ目
    ee_report = EeReport.find(params[:output_id])
    report = Thinreports::Report.new(layout: "#{Rails.root}/app/views/ee_reports/入学試験受験報告書.tlf")
    report.start_new_page
    report.page.item(:reporting_date).value(ee_report.reporting_date.strftime("%Y年%m月%d日") )
    report.page.item(:student_class).value(ee_report.student_class)
    report.page.item(:student_number).value(ee_report.student_number)
    report.page.item(:student_id).value(ee_report.student_id)
    report.page.item(:school_name).value(ee_report.school_name)
    report.page.item(:s_faculty_name).value(ee_report.s_faculty_name)
    report.page.item(:s_department_name).value(ee_report.s_department_name)
    report.page.item(:s_course_name).value(ee_report.s_course_name)
    report.page.item(:street_addresstext).value(ee_report.street_address)
    report.page.item(:test_day).value(ee_report.test_day.strftime("%Y年%m月%d日") )
    report.page.item(:examination_hall).value(ee_report.examination_hall)
    report.page.item(:result_publication_date).value(ee_report.result_publication_date.strftime("%Y年%m月%d日") )
     case ee_report.recommended_group 
      when 1 then 
        recommend = "特別入試"
      when 2 then 
        recommend = "指定校推薦"
      when 3 then 
        recommend = "AO推薦"
      when 4 then 
        recommend = " 一般推薦"
      when 5 then 
        recommend = "スポーツ推薦"
      when 6 then 
        recommend = "自己推薦"
      when 7 then 
        recommend = "その他の推薦"
     end 
  
    report.page.item(:recommended_group).value(recommend)
    report.page.item(:t_subject_japanese).value(ee_report.t_subject_japanese)
    report.page.item(:t_subject_math).value(ee_report.t_subject_math)
    report.page.item(:t_subject_society).value(ee_report.t_subject_society)
    report.page.item(:t_subject_science).value(ee_report.t_subject_science)
    report.page.item(:t_subject_english).value(ee_report.t_subject_english)
    report.page.item(:t_subject_other).value(ee_report.t_subject_other)
    report.page.item(:t_subject_other_time).value(ee_report.t_subject_other_time)
    report.page.item(:g_q_contents).value(ee_report.g_q_contents)
    report.page.item(:g_q_image).value("public/images/#{ee_report.g_q_image}")
    report.page.item(:g_impressions).value(ee_report.g_impressions)
    # 3 ページ目
    report.start_new_page layout: "#{Rails.root}/app/views/ee_reports/入学試験受験報告書_裏.tlf"
     case ee_report.recommended_form 
      when 1 then 
       recommended = "書類選考のみ"
      when 2 then 
       recommended = "「書類選考」＋「面接」"
      when 3 then 
       recommended = "「書類選考」＋「面接」＋ 試験"
      when 4 then
       recommended = "「書類選考」＋「面接」＋ 小論文（作文）"
      when 5 then
       recommended = "「書類選考」＋「面接」＋ 小論文（作文）＋ 試験"
     end
  
    report.page.item(:recommended_form).value(recommended)
    report.page.item(:i_q_contents).value(ee_report.i_q_contents)
    report.page.item(:i_q_images).value("public/images/#{ee_report.i_q_images}")
    report.page.item(:e_contents).value(ee_report.e_contents)
    report.page.item(:w_contents).value(ee_report.w_contents)
    report.page.item(:r_impression).value(ee_report.r_impression)

    # PDFファイルのバイナリデータを生成する
    file = report.generate
    # ブラウザでPDFを表示させたい場合
    # パラメタのdisposition: "inline" をつけない場合は、PDFがダウンロードされる
    send_data(
      file,
      filename: "入学試験受験報告書_#{ee_report.s_faculty_name}_#{ee_report.s_department_name}_#{ee_report.s_course_name}.pdf",
      type: "application/pdf"
    )
  end
  
  def approval
    ee_report = EeReport.find(params[:approval_id])
    ee_report.update(approval_flg: 1)
    redirect_to unapproved_reports_index_path, notice: "承認しました。" 
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