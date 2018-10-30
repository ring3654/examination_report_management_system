class ChangeDetatypeStudentIdOfEtReports < ActiveRecord::Migration[5.2]
  def change
      change_column :et_reports, :student_id, :string
  end
end
