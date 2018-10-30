
class ChangeDetatypeStudentIdOfEeReports < ActiveRecord::Migration[5.2]
  def change
      change_column :ee_reports, :student_id, :string
  end
end
